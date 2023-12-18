# kustomize changes tracked by commits 
### This file generated at Mon Dec 18 20:06:21 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1825c25a to 2dc39822 on Mon Dec 18 18:43:00 2023 </h3>  
 
<details> 
<summary>Git Diff (293 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
new file mode 100644
index 00000000..4e920ec4
--- /dev/null
+++ b/components/enterprise-contract/download-service.yaml
@@ -0,0 +1,275 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: ec-cli-download-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - route.openshift.io
+    resourceNames:
+      - ec-cli-download-route
+    resources:
+      - routes
+    verbs:
+      - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: ec-cli-download-role-binding
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ec-cli-download-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: ec-cli-download-cluster-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - console.openshift.io
+    resources:
+      - consoleclidownloads
+    verbs:
+      - create
+      - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: ec-cli-download-cluster-role-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: ec-cli-download-cluster-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
+    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-deployment
+  namespace: enterprise-contract-service
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: ec-cli-download
+  template:
+    metadata:
+      labels:
+        app.kubernetes.io/name: ec-cli-download
+    spec:
+      containers:
+        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
+          name: http
+          ports:
+            - containerPort: 8443
+              name: https
+              protocol: TCP
+          resources:
+            limits:
+              cpu: 100m
+              memory: 100Mi
+            requests:
+              cpu: 100m
+              memory: 10Mi
+          securityContext:
+            #readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/private
+              name: tls-key
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/certs
+              name: tls-certificate
+              readOnly: true
+      initContainers:
+        - args:
+            - |
+              #!/usr/bin/bash
+
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+
+              function handle_error {
+                sleep infinity
+              }
+              trap handle_error ERR
+
+              imgref=$({
+                dir="$(mktemp --directory --tmpdir=.)"
+                cd "${dir}"
+                oc image extract "$EC_TASK_BUNDLE_REF"
+                jq -r '.spec.steps[0].image' verify-enterprise-contract
+                cd ..
+                rm -rf "${dir}"
+              })
+              echo "Determined ec CLI image to be ${imgref}"
+
+              base="${imgref%:*}"
+              base="${imgref%@*}"
+
+              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
+
+              download_ec() {
+                os="$1"
+                architecture="$2"
+                digest="$3"
+
+                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
+
+                mkdir -p "${os}_${architecture}"
+                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                chmod +x "${os}_${architecture}/ec"
+                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
+                echo "Downloaded ${base}@${digest}"
+              }
+
+              while read -r line; do
+                read -r -a args <<< "${line}"
+                download_ec "${args[@]}" &
+              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
+
+              pids=$(jobs -p)
+              (
+                trap 'exit 0' TERM
+                while true
+                do
+                  echo Downloading...
+                  sleep 3
+                done
+              ) &
+              ticker_pid=$!
+
+              # shellcheck disable=SC2046
+              wait $pids
+              kill $ticker_pid
+
+              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
+
+              {
+                echo "apiVersion: console.openshift.io/v1
+              kind: ConsoleCLIDownload
+              metadata:
+                name: ec-cli
+              spec:
+                description: |
+                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
+                displayName: ec - Enterprise Contract CLI
+                links:"
+                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
+                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
+              } | oc apply -f -
+
+              {
+                echo '<!doctype html>
+              <html>
+              <style>
+              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
+              ul { list-style: none; padding-left: 0; }
+              </style>
+              <body>
+              <ul>'
+                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
+                echo '</ul>
+              </body>
+              </html>'
+              } > index.html
+          command:
+            - /bin/bash
+            - -c
+          env:
+            - name: EC_TASK_BUNDLE_REF
+              valueFrom:
+                configMapKeyRef:
+                  key: verify_ec_task_bundle
+                  name: ec-defaults
+          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
+          name: download
+          resources:
+            limits:
+              cpu: 1000m
+              memory: 512Mi
+            requests:
+              cpu: 500m
+              memory: 128Mi
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+          workingDir: /var/www/html
+      volumes:
+        - emptyDir: {}
+          name: wwwdata
+        - name: tls-key
+          secret:
+            items:
+              - key: tls.key
+                path: server.pem
+            secretName: ec-cli-download-tls
+        - name: tls-certificate
+          secret:
+            items:
+              - key: tls.crt
+                path: server.pem
+            secretName: ec-cli-download-tls
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-service
+  namespace: enterprise-contract-service
+spec:
+  ports:
+    - name: https
+      port: 8443
+      targetPort: https
+  selector:
+    app.kubernetes.io/name: ec-cli-download
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-route
+  namespace: enterprise-contract-service
+spec:
+  port:
+    targetPort: https
+  tls:
+    termination: reencrypt
+  to:
+    kind: Service
+    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 52acea9a..ea65f1ba 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
+  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-1825c25a/production/components/enterprise-contract/kustomize.out.yaml
207,235d206
< kind: Role
< metadata:
<   name: ec-cli-download-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - route.openshift.io
<   resourceNames:
<   - ec-cli-download-route
<   resources:
<   - routes
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: ec-cli-download-cluster-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - console.openshift.io
<   resources:
<   - consoleclidownloads
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
304,317d274
<   name: ec-cli-download-role-binding
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: ec-cli-download-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
343,355d299
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: ec-cli-download-cluster-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: ec-cli-download-cluster-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
367,569d310
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-service
<   namespace: enterprise-contract-service
< spec:
<   ports:
<   - name: https
<     port: 8443
<     targetPort: https
<   selector:
<     app.kubernetes.io/name: ec-cli-download
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
<       only has the latest tag, and that is the version we want here
<     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
<       its configuration
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-deployment
<   namespace: enterprise-contract-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: ec-cli-download
<   template:
<     metadata:
<       labels:
<         app.kubernetes.io/name: ec-cli-download
<     spec:
<       containers:
<       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
<         name: http
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 100m
<             memory: 10Mi
<         securityContext:
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/private
<           name: tls-key
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/certs
<           name: tls-certificate
<           readOnly: true
<       initContainers:
<       - args:
<         - |
<           #!/usr/bin/bash
< 
<           set -o errexit
<           set -o nounset
<           set -o pipefail
< 
<           function handle_error {
<             sleep infinity
<           }
<           trap handle_error ERR
< 
<           imgref=$({
<             dir="$(mktemp --directory --tmpdir=.)"
<             cd "${dir}"
<             oc image extract "$EC_TASK_BUNDLE_REF"
<             jq -r '.spec.steps[0].image' verify-enterprise-contract
<             cd ..
<             rm -rf "${dir}"
<           })
<           echo "Determined ec CLI image to be ${imgref}"
< 
<           base="${imgref%:*}"
<           base="${imgref%@*}"
< 
<           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
< 
<           download_ec() {
<             os="$1"
<             architecture="$2"
<             digest="$3"
< 
<             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
< 
<             mkdir -p "${os}_${architecture}"
<             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
<             chmod +x "${os}_${architecture}/ec"
<             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
<             echo "Downloaded ${base}@${digest}"
<           }
< 
<           while read -r line; do
<             read -r -a args <<< "${line}"
<             download_ec "${args[@]}" &
<           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
< 
<           pids=$(jobs -p)
<           (
<             trap 'exit 0' TERM
<             while true
<             do
<               echo Downloading...
<               sleep 3
<             done
<           ) &
<           ticker_pid=$!
< 
<           # shellcheck disable=SC2046
<           wait $pids
<           kill $ticker_pid
< 
<           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
< 
<           {
<             echo "apiVersion: console.openshift.io/v1
<           kind: ConsoleCLIDownload
<           metadata:
<             name: ec-cli
<           spec:
<             description: |
<               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
<             displayName: ec - Enterprise Contract CLI
<             links:"
<             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
<                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
<           } | oc apply -f -
< 
<           {
<             echo '<!doctype html>
<           <html>
<           <style>
<           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
<           ul { list-style: none; padding-left: 0; }
<           </style>
<           <body>
<           <ul>'
<             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
<             echo '</ul>
<           </body>
<           </html>'
<           } > index.html
<         command:
<         - /bin/bash
<         - -c
<         env:
<         - name: EC_TASK_BUNDLE_REF
<           valueFrom:
<             configMapKeyRef:
<               key: verify_ec_task_bundle
<               name: ec-defaults
<         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
<         name: download
<         resources:
<           limits:
<             cpu: 1000m
<             memory: 512Mi
<           requests:
<             cpu: 500m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<         workingDir: /var/www/html
<       volumes:
<       - emptyDir: {}
<         name: wwwdata
<       - name: tls-key
<         secret:
<           items:
<           - key: tls.key
<             path: server.pem
<           secretName: ec-cli-download-tls
<       - name: tls-certificate
<         secret:
<           items:
<           - key: tls.crt
<             path: server.pem
<           secretName: ec-cli-download-tls
< ---
733,749d473
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-route
<   namespace: enterprise-contract-service
< spec:
<   port:
<     targetPort: https
<   tls:
<     termination: reencrypt
<   to:
<     kind: Service
<     name: ec-cli-download-service 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 1825c25a to 2dc39822 on Mon Dec 18 18:43:00 2023 </h3>  
 
<details> 
<summary>Git Diff (293 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
new file mode 100644
index 00000000..4e920ec4
--- /dev/null
+++ b/components/enterprise-contract/download-service.yaml
@@ -0,0 +1,275 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: ec-cli-download-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - route.openshift.io
+    resourceNames:
+      - ec-cli-download-route
+    resources:
+      - routes
+    verbs:
+      - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: ec-cli-download-role-binding
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ec-cli-download-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: ec-cli-download-cluster-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - console.openshift.io
+    resources:
+      - consoleclidownloads
+    verbs:
+      - create
+      - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: ec-cli-download-cluster-role-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: ec-cli-download-cluster-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
+    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-deployment
+  namespace: enterprise-contract-service
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: ec-cli-download
+  template:
+    metadata:
+      labels:
+        app.kubernetes.io/name: ec-cli-download
+    spec:
+      containers:
+        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
+          name: http
+          ports:
+            - containerPort: 8443
+              name: https
+              protocol: TCP
+          resources:
+            limits:
+              cpu: 100m
+              memory: 100Mi
+            requests:
+              cpu: 100m
+              memory: 10Mi
+          securityContext:
+            #readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/private
+              name: tls-key
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/certs
+              name: tls-certificate
+              readOnly: true
+      initContainers:
+        - args:
+            - |
+              #!/usr/bin/bash
+
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+
+              function handle_error {
+                sleep infinity
+              }
+              trap handle_error ERR
+
+              imgref=$({
+                dir="$(mktemp --directory --tmpdir=.)"
+                cd "${dir}"
+                oc image extract "$EC_TASK_BUNDLE_REF"
+                jq -r '.spec.steps[0].image' verify-enterprise-contract
+                cd ..
+                rm -rf "${dir}"
+              })
+              echo "Determined ec CLI image to be ${imgref}"
+
+              base="${imgref%:*}"
+              base="${imgref%@*}"
+
+              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
+
+              download_ec() {
+                os="$1"
+                architecture="$2"
+                digest="$3"
+
+                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
+
+                mkdir -p "${os}_${architecture}"
+                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                chmod +x "${os}_${architecture}/ec"
+                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
+                echo "Downloaded ${base}@${digest}"
+              }
+
+              while read -r line; do
+                read -r -a args <<< "${line}"
+                download_ec "${args[@]}" &
+              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
+
+              pids=$(jobs -p)
+              (
+                trap 'exit 0' TERM
+                while true
+                do
+                  echo Downloading...
+                  sleep 3
+                done
+              ) &
+              ticker_pid=$!
+
+              # shellcheck disable=SC2046
+              wait $pids
+              kill $ticker_pid
+
+              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
+
+              {
+                echo "apiVersion: console.openshift.io/v1
+              kind: ConsoleCLIDownload
+              metadata:
+                name: ec-cli
+              spec:
+                description: |
+                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
+                displayName: ec - Enterprise Contract CLI
+                links:"
+                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
+                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
+              } | oc apply -f -
+
+              {
+                echo '<!doctype html>
+              <html>
+              <style>
+              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
+              ul { list-style: none; padding-left: 0; }
+              </style>
+              <body>
+              <ul>'
+                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
+                echo '</ul>
+              </body>
+              </html>'
+              } > index.html
+          command:
+            - /bin/bash
+            - -c
+          env:
+            - name: EC_TASK_BUNDLE_REF
+              valueFrom:
+                configMapKeyRef:
+                  key: verify_ec_task_bundle
+                  name: ec-defaults
+          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
+          name: download
+          resources:
+            limits:
+              cpu: 1000m
+              memory: 512Mi
+            requests:
+              cpu: 500m
+              memory: 128Mi
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+          workingDir: /var/www/html
+      volumes:
+        - emptyDir: {}
+          name: wwwdata
+        - name: tls-key
+          secret:
+            items:
+              - key: tls.key
+                path: server.pem
+            secretName: ec-cli-download-tls
+        - name: tls-certificate
+          secret:
+            items:
+              - key: tls.crt
+                path: server.pem
+            secretName: ec-cli-download-tls
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-service
+  namespace: enterprise-contract-service
+spec:
+  ports:
+    - name: https
+      port: 8443
+      targetPort: https
+  selector:
+    app.kubernetes.io/name: ec-cli-download
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-route
+  namespace: enterprise-contract-service
+spec:
+  port:
+    targetPort: https
+  tls:
+    termination: reencrypt
+  to:
+    kind: Service
+    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 52acea9a..ea65f1ba 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
+  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-1825c25a/staging/components/enterprise-contract/kustomize.out.yaml
207,235d206
< kind: Role
< metadata:
<   name: ec-cli-download-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - route.openshift.io
<   resourceNames:
<   - ec-cli-download-route
<   resources:
<   - routes
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: ec-cli-download-cluster-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - console.openshift.io
<   resources:
<   - consoleclidownloads
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
304,317d274
<   name: ec-cli-download-role-binding
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: ec-cli-download-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
343,355d299
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: ec-cli-download-cluster-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: ec-cli-download-cluster-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
367,569d310
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-service
<   namespace: enterprise-contract-service
< spec:
<   ports:
<   - name: https
<     port: 8443
<     targetPort: https
<   selector:
<     app.kubernetes.io/name: ec-cli-download
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
<       only has the latest tag, and that is the version we want here
<     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
<       its configuration
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-deployment
<   namespace: enterprise-contract-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: ec-cli-download
<   template:
<     metadata:
<       labels:
<         app.kubernetes.io/name: ec-cli-download
<     spec:
<       containers:
<       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
<         name: http
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 100m
<             memory: 10Mi
<         securityContext:
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/private
<           name: tls-key
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/certs
<           name: tls-certificate
<           readOnly: true
<       initContainers:
<       - args:
<         - |
<           #!/usr/bin/bash
< 
<           set -o errexit
<           set -o nounset
<           set -o pipefail
< 
<           function handle_error {
<             sleep infinity
<           }
<           trap handle_error ERR
< 
<           imgref=$({
<             dir="$(mktemp --directory --tmpdir=.)"
<             cd "${dir}"
<             oc image extract "$EC_TASK_BUNDLE_REF"
<             jq -r '.spec.steps[0].image' verify-enterprise-contract
<             cd ..
<             rm -rf "${dir}"
<           })
<           echo "Determined ec CLI image to be ${imgref}"
< 
<           base="${imgref%:*}"
<           base="${imgref%@*}"
< 
<           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
< 
<           download_ec() {
<             os="$1"
<             architecture="$2"
<             digest="$3"
< 
<             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
< 
<             mkdir -p "${os}_${architecture}"
<             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
<             chmod +x "${os}_${architecture}/ec"
<             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
<             echo "Downloaded ${base}@${digest}"
<           }
< 
<           while read -r line; do
<             read -r -a args <<< "${line}"
<             download_ec "${args[@]}" &
<           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
< 
<           pids=$(jobs -p)
<           (
<             trap 'exit 0' TERM
<             while true
<             do
<               echo Downloading...
<               sleep 3
<             done
<           ) &
<           ticker_pid=$!
< 
<           # shellcheck disable=SC2046
<           wait $pids
<           kill $ticker_pid
< 
<           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
< 
<           {
<             echo "apiVersion: console.openshift.io/v1
<           kind: ConsoleCLIDownload
<           metadata:
<             name: ec-cli
<           spec:
<             description: |
<               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
<             displayName: ec - Enterprise Contract CLI
<             links:"
<             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
<                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
<           } | oc apply -f -
< 
<           {
<             echo '<!doctype html>
<           <html>
<           <style>
<           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
<           ul { list-style: none; padding-left: 0; }
<           </style>
<           <body>
<           <ul>'
<             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
<             echo '</ul>
<           </body>
<           </html>'
<           } > index.html
<         command:
<         - /bin/bash
<         - -c
<         env:
<         - name: EC_TASK_BUNDLE_REF
<           valueFrom:
<             configMapKeyRef:
<               key: verify_ec_task_bundle
<               name: ec-defaults
<         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
<         name: download
<         resources:
<           limits:
<             cpu: 1000m
<             memory: 512Mi
<           requests:
<             cpu: 500m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<         workingDir: /var/www/html
<       volumes:
<       - emptyDir: {}
<         name: wwwdata
<       - name: tls-key
<         secret:
<           items:
<           - key: tls.key
<             path: server.pem
<           secretName: ec-cli-download-tls
<       - name: tls-certificate
<         secret:
<           items:
<           - key: tls.crt
<             path: server.pem
<           secretName: ec-cli-download-tls
< ---
733,749d473
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-route
<   namespace: enterprise-contract-service
< spec:
<   port:
<     targetPort: https
<   tls:
<     termination: reencrypt
<   to:
<     kind: Service
<     name: ec-cli-download-service 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 1825c25a to 2dc39822 on Mon Dec 18 18:43:00 2023 </h3>  
 
<details> 
<summary>Git Diff (293 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
new file mode 100644
index 00000000..4e920ec4
--- /dev/null
+++ b/components/enterprise-contract/download-service.yaml
@@ -0,0 +1,275 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: ec-cli-download-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - route.openshift.io
+    resourceNames:
+      - ec-cli-download-route
+    resources:
+      - routes
+    verbs:
+      - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: ec-cli-download-role-binding
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ec-cli-download-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: ec-cli-download-cluster-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - console.openshift.io
+    resources:
+      - consoleclidownloads
+    verbs:
+      - create
+      - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: ec-cli-download-cluster-role-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: ec-cli-download-cluster-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
+    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-deployment
+  namespace: enterprise-contract-service
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: ec-cli-download
+  template:
+    metadata:
+      labels:
+        app.kubernetes.io/name: ec-cli-download
+    spec:
+      containers:
+        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
+          name: http
+          ports:
+            - containerPort: 8443
+              name: https
+              protocol: TCP
+          resources:
+            limits:
+              cpu: 100m
+              memory: 100Mi
+            requests:
+              cpu: 100m
+              memory: 10Mi
+          securityContext:
+            #readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/private
+              name: tls-key
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/certs
+              name: tls-certificate
+              readOnly: true
+      initContainers:
+        - args:
+            - |
+              #!/usr/bin/bash
+
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+
+              function handle_error {
+                sleep infinity
+              }
+              trap handle_error ERR
+
+              imgref=$({
+                dir="$(mktemp --directory --tmpdir=.)"
+                cd "${dir}"
+                oc image extract "$EC_TASK_BUNDLE_REF"
+                jq -r '.spec.steps[0].image' verify-enterprise-contract
+                cd ..
+                rm -rf "${dir}"
+              })
+              echo "Determined ec CLI image to be ${imgref}"
+
+              base="${imgref%:*}"
+              base="${imgref%@*}"
+
+              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
+
+              download_ec() {
+                os="$1"
+                architecture="$2"
+                digest="$3"
+
+                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
+
+                mkdir -p "${os}_${architecture}"
+                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                chmod +x "${os}_${architecture}/ec"
+                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
+                echo "Downloaded ${base}@${digest}"
+              }
+
+              while read -r line; do
+                read -r -a args <<< "${line}"
+                download_ec "${args[@]}" &
+              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
+
+              pids=$(jobs -p)
+              (
+                trap 'exit 0' TERM
+                while true
+                do
+                  echo Downloading...
+                  sleep 3
+                done
+              ) &
+              ticker_pid=$!
+
+              # shellcheck disable=SC2046
+              wait $pids
+              kill $ticker_pid
+
+              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
+
+              {
+                echo "apiVersion: console.openshift.io/v1
+              kind: ConsoleCLIDownload
+              metadata:
+                name: ec-cli
+              spec:
+                description: |
+                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
+                displayName: ec - Enterprise Contract CLI
+                links:"
+                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
+                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
+              } | oc apply -f -
+
+              {
+                echo '<!doctype html>
+              <html>
+              <style>
+              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
+              ul { list-style: none; padding-left: 0; }
+              </style>
+              <body>
+              <ul>'
+                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
+                echo '</ul>
+              </body>
+              </html>'
+              } > index.html
+          command:
+            - /bin/bash
+            - -c
+          env:
+            - name: EC_TASK_BUNDLE_REF
+              valueFrom:
+                configMapKeyRef:
+                  key: verify_ec_task_bundle
+                  name: ec-defaults
+          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
+          name: download
+          resources:
+            limits:
+              cpu: 1000m
+              memory: 512Mi
+            requests:
+              cpu: 500m
+              memory: 128Mi
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+          workingDir: /var/www/html
+      volumes:
+        - emptyDir: {}
+          name: wwwdata
+        - name: tls-key
+          secret:
+            items:
+              - key: tls.key
+                path: server.pem
+            secretName: ec-cli-download-tls
+        - name: tls-certificate
+          secret:
+            items:
+              - key: tls.crt
+                path: server.pem
+            secretName: ec-cli-download-tls
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-service
+  namespace: enterprise-contract-service
+spec:
+  ports:
+    - name: https
+      port: 8443
+      targetPort: https
+  selector:
+    app.kubernetes.io/name: ec-cli-download
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-route
+  namespace: enterprise-contract-service
+spec:
+  port:
+    targetPort: https
+  tls:
+    termination: reencrypt
+  to:
+    kind: Service
+    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 52acea9a..ea65f1ba 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
+  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-1825c25a/development/components/enterprise-contract/kustomize.out.yaml
207,235d206
< kind: Role
< metadata:
<   name: ec-cli-download-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - route.openshift.io
<   resourceNames:
<   - ec-cli-download-route
<   resources:
<   - routes
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: ec-cli-download-cluster-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - console.openshift.io
<   resources:
<   - consoleclidownloads
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
304,317d274
<   name: ec-cli-download-role-binding
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: ec-cli-download-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
343,355d299
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: ec-cli-download-cluster-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: ec-cli-download-cluster-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
367,569d310
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-service
<   namespace: enterprise-contract-service
< spec:
<   ports:
<   - name: https
<     port: 8443
<     targetPort: https
<   selector:
<     app.kubernetes.io/name: ec-cli-download
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
<       only has the latest tag, and that is the version we want here
<     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
<       its configuration
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-deployment
<   namespace: enterprise-contract-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: ec-cli-download
<   template:
<     metadata:
<       labels:
<         app.kubernetes.io/name: ec-cli-download
<     spec:
<       containers:
<       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
<         name: http
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 100m
<             memory: 10Mi
<         securityContext:
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/private
<           name: tls-key
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/certs
<           name: tls-certificate
<           readOnly: true
<       initContainers:
<       - args:
<         - |
<           #!/usr/bin/bash
< 
<           set -o errexit
<           set -o nounset
<           set -o pipefail
< 
<           function handle_error {
<             sleep infinity
<           }
<           trap handle_error ERR
< 
<           imgref=$({
<             dir="$(mktemp --directory --tmpdir=.)"
<             cd "${dir}"
<             oc image extract "$EC_TASK_BUNDLE_REF"
<             jq -r '.spec.steps[0].image' verify-enterprise-contract
<             cd ..
<             rm -rf "${dir}"
<           })
<           echo "Determined ec CLI image to be ${imgref}"
< 
<           base="${imgref%:*}"
<           base="${imgref%@*}"
< 
<           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
< 
<           download_ec() {
<             os="$1"
<             architecture="$2"
<             digest="$3"
< 
<             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
< 
<             mkdir -p "${os}_${architecture}"
<             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
<             chmod +x "${os}_${architecture}/ec"
<             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
<             echo "Downloaded ${base}@${digest}"
<           }
< 
<           while read -r line; do
<             read -r -a args <<< "${line}"
<             download_ec "${args[@]}" &
<           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
< 
<           pids=$(jobs -p)
<           (
<             trap 'exit 0' TERM
<             while true
<             do
<               echo Downloading...
<               sleep 3
<             done
<           ) &
<           ticker_pid=$!
< 
<           # shellcheck disable=SC2046
<           wait $pids
<           kill $ticker_pid
< 
<           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
< 
<           {
<             echo "apiVersion: console.openshift.io/v1
<           kind: ConsoleCLIDownload
<           metadata:
<             name: ec-cli
<           spec:
<             description: |
<               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
<             displayName: ec - Enterprise Contract CLI
<             links:"
<             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
<                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
<           } | oc apply -f -
< 
<           {
<             echo '<!doctype html>
<           <html>
<           <style>
<           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
<           ul { list-style: none; padding-left: 0; }
<           </style>
<           <body>
<           <ul>'
<             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
<             echo '</ul>
<           </body>
<           </html>'
<           } > index.html
<         command:
<         - /bin/bash
<         - -c
<         env:
<         - name: EC_TASK_BUNDLE_REF
<           valueFrom:
<             configMapKeyRef:
<               key: verify_ec_task_bundle
<               name: ec-defaults
<         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
<         name: download
<         resources:
<           limits:
<             cpu: 1000m
<             memory: 512Mi
<           requests:
<             cpu: 500m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<         workingDir: /var/www/html
<       volumes:
<       - emptyDir: {}
<         name: wwwdata
<       - name: tls-key
<         secret:
<           items:
<           - key: tls.key
<             path: server.pem
<           secretName: ec-cli-download-tls
<       - name: tls-certificate
<         secret:
<           items:
<           - key: tls.crt
<             path: server.pem
<           secretName: ec-cli-download-tls
< ---
733,749d473
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-route
<   namespace: enterprise-contract-service
< spec:
<   port:
<     targetPort: https
<   tls:
<     termination: reencrypt
<   to:
<     kind: Service
<     name: ec-cli-download-service 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from f28e2579 to 1825c25a on Mon Dec 18 17:55:10 2023 </h3>  
 
<details> 
<summary>Git Diff (2361 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml
new file mode 100644
index 00000000..70a5daba
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/staging-downstream
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml
new file mode 100644
index 00000000..2f410a1a
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: argocd-staging
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..cfc86a8f
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: argocd-staging
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index c42f4073..8d5eae62 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index 1421c1a8..fb610eb6 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index ad41ef50..b4cf2244 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index 4f42452e..efc98c20 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 4efc2689..27952a87 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -22,7 +22,9 @@ spec:
                 - nameNormalized: stone-prd-m01
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01                  
+                  values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
new file mode 100644
index 00000000..2f6ccfa9
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -0,0 +1,26 @@
+---
+# Github authentication/authorization isn't used downstream
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: authentication
+$patch: delete
+---
+# Downstream deployment has the host and member operators deployed on the same cluster
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: sprayproxy
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: backup
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..ed6fc122
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../staging
+patchesStrategicMerge:
+  - delete-applications.yaml
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..a6635194
--- /dev/null
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stage-p01/kustomization.yaml b/components/gitops/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml b/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..9f1606f2
--- /dev/null
+++ b/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-stage-p01
diff --git a/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml b/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
new file mode 100644
index 00000000..b34e2834
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -0,0 +1,1956 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.webhook: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "sampling": {
+        "initial": 100,
+        "thereafter": 100
+      },
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/component: resolvers
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-pipelines
+    operator.tekton.dev/operand-name: tektoncd-pipelines
+  name: config-logging
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=require
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args:
+        - -zap-log-level=6
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 512Mi
+          requests:
+            cpu: 250m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 100m
+            memory: 512Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: beta
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    performance:
+      kube-api-burst: 50
+      kube-api-qps: 50
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        settings:
+          application-name: RHTAP Staging
+          custom-console-name: RHTAP Staging
+          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+  profile: all
+  pruner:
+    keep: 2
+    resources:
+    - pipelinerun
+    schedule: 0/2 * * * *
+  targetNamespace: openshift-pipelines
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: pipelines-1.12
+  name: openshift-pipelines-operator-rh
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..dedaea51
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..a5881d81
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..546aed46
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..8326c312
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
new file mode 100644
index 00000000..f1e44f76
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "spi-stage/rs-p01"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
new file mode 100644
index 00000000..c0ddd448
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "spi-stage/p01"
+  }
+]
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..64449d32
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
new file mode 100644
index 00000000..775a859c
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com:443"
+  }
+]
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..8326c312
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..f65b16f8
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/spi/p01/shared-configuration-file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-f28e2579/production/app-of-apps-production.yaml
583,584d582
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
1007,1008d1004
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01
1153,1154d1148
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
1253,1254d1246
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01
1494,1495d1485
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from f28e2579 to 1825c25a on Mon Dec 18 17:55:10 2023 </h3>  
 
<details> 
<summary>Git Diff (2361 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml
new file mode 100644
index 00000000..70a5daba
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/staging-downstream
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml
new file mode 100644
index 00000000..2f410a1a
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: argocd-staging
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..cfc86a8f
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: argocd-staging
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index c42f4073..8d5eae62 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index 1421c1a8..fb610eb6 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index ad41ef50..b4cf2244 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index 4f42452e..efc98c20 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 4efc2689..27952a87 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -22,7 +22,9 @@ spec:
                 - nameNormalized: stone-prd-m01
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01                  
+                  values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
new file mode 100644
index 00000000..2f6ccfa9
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -0,0 +1,26 @@
+---
+# Github authentication/authorization isn't used downstream
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: authentication
+$patch: delete
+---
+# Downstream deployment has the host and member operators deployed on the same cluster
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: sprayproxy
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: backup
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..ed6fc122
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../staging
+patchesStrategicMerge:
+  - delete-applications.yaml
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..a6635194
--- /dev/null
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stage-p01/kustomization.yaml b/components/gitops/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml b/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..9f1606f2
--- /dev/null
+++ b/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-stage-p01
diff --git a/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml b/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
new file mode 100644
index 00000000..b34e2834
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -0,0 +1,1956 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.webhook: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "sampling": {
+        "initial": 100,
+        "thereafter": 100
+      },
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/component: resolvers
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-pipelines
+    operator.tekton.dev/operand-name: tektoncd-pipelines
+  name: config-logging
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=require
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args:
+        - -zap-log-level=6
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 512Mi
+          requests:
+            cpu: 250m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 100m
+            memory: 512Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: beta
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    performance:
+      kube-api-burst: 50
+      kube-api-qps: 50
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        settings:
+          application-name: RHTAP Staging
+          custom-console-name: RHTAP Staging
+          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+  profile: all
+  pruner:
+    keep: 2
+    resources:
+    - pipelinerun
+    schedule: 0/2 * * * *
+  targetNamespace: openshift-pipelines
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: pipelines-1.12
+  name: openshift-pipelines-operator-rh
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..dedaea51
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..a5881d81
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..546aed46
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..8326c312
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
new file mode 100644
index 00000000..f1e44f76
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "spi-stage/rs-p01"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
new file mode 100644
index 00000000..c0ddd448
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "spi-stage/p01"
+  }
+]
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..64449d32
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
new file mode 100644
index 00000000..775a859c
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com:443"
+  }
+]
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..8326c312
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..f65b16f8
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/spi/p01/shared-configuration-file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-f28e2579/staging/app-of-apps-staging.yaml
537,538d536
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
961,962d958
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01
1107,1108d1102
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
1207,1208d1200
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01
1411,1412d1402
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01
./commit-1825c25a/staging/components/gitops/staging: stone-stage-p01
./commit-1825c25a/staging/components/pipeline-service/staging: stone-stage-p01 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1825c25a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from f28e2579 to 1825c25a on Mon Dec 18 17:55:10 2023 </h3>  
 
<details> 
<summary>Git Diff (2361 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml
new file mode 100644
index 00000000..70a5daba
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/staging-downstream
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml
new file mode 100644
index 00000000..2f410a1a
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: argocd-staging
diff --git a/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml b/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..cfc86a8f
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/staging-downstream/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: argocd-staging
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index c42f4073..8d5eae62 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index 1421c1a8..fb610eb6 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index ad41ef50..b4cf2244 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index 4f42452e..efc98c20 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 4efc2689..27952a87 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -22,7 +22,9 @@ spec:
                 - nameNormalized: stone-prd-m01
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01                  
+                  values.clusterDir: stone-prd-rh01
+                - nameNormalized: stone-stg-p01
+                  values.clusterDir: stone-stg-p01
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
new file mode 100644
index 00000000..2f6ccfa9
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -0,0 +1,26 @@
+---
+# Github authentication/authorization isn't used downstream
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: authentication
+$patch: delete
+---
+# Downstream deployment has the host and member operators deployed on the same cluster
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: sprayproxy
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: backup
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..ed6fc122
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../staging
+patchesStrategicMerge:
+  - delete-applications.yaml
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..a6635194
--- /dev/null
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stage-p01/kustomization.yaml b/components/gitops/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml b/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..9f1606f2
--- /dev/null
+++ b/components/monitoring/prometheus/staging/stone-stage-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-stage-p01
diff --git a/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml b/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
new file mode 100644
index 00000000..b34e2834
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -0,0 +1,1956 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: Pipeline Service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.webhook: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "sampling": {
+        "initial": 100,
+        "thereafter": 100
+      },
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/component: resolvers
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-pipelines
+    operator.tekton.dev/operand-name: tektoncd-pipelines
+  name: config-logging
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=require
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args:
+        - -zap-log-level=6
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 512Mi
+          requests:
+            cpu: 250m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 100m
+            memory: 512Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: beta
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    performance:
+      kube-api-burst: 50
+      kube-api-qps: 50
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        settings:
+          application-name: RHTAP Staging
+          custom-console-name: RHTAP Staging
+          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+  profile: all
+  pruner:
+    keep: 2
+    resources:
+    - pipelinerun
+    schedule: 0/2 * * * *
+  targetNamespace: openshift-pipelines
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: pipelines-1.12
+  name: openshift-pipelines-operator-rh
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..dedaea51
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..a5881d81
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..546aed46
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..8326c312
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
new file mode 100644
index 00000000..f1e44f76
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "spi-stage/rs-p01"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
new file mode 100644
index 00000000..c0ddd448
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "spi-stage/p01"
+  }
+]
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..64449d32
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
new file mode 100644
index 00000000..775a859c
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com:443"
+  }
+]
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..8326c312
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..f65b16f8
--- /dev/null
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/spi/p01/shared-configuration-file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-f28e2579/development/app-of-apps-development.yaml
339,340d338
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
714,715d711
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01
860,861d855
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
960,961d953
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01
1014,1015d1005
<           - nameNormalized: stone-stg-p01
<             values.clusterDir: stone-stg-p01 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1825c25a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 947debf0 to f28e2579 on Mon Dec 18 16:35:28 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/build/build-via-appstudio.sh b/hack/build/build-via-appstudio.sh
index 1d00ac11..87e26520 100755
--- a/hack/build/build-via-appstudio.sh
+++ b/hack/build/build-via-appstudio.sh
@@ -20,7 +20,7 @@ function create-component {
   NAME=${REPO%%.git}
   oc delete --ignore-not-found component $NAME
   [ -n "$SKIP_INITIAL_CHECKS" ] && ANNOTATE_SKIP_INITIAL_CHECKS='| (.metadata.annotations.skip-initial-checks="true")'
-  [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."appstudio.openshift.io/request"="configure-pac")'
+  [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."build.appstudio.openshift.io/request"="configure-pac")'
   yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.containerImage=\"$IMAGE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
 }
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f28e2579/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 947debf0 to f28e2579 on Mon Dec 18 16:35:28 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/build/build-via-appstudio.sh b/hack/build/build-via-appstudio.sh
index 1d00ac11..87e26520 100755
--- a/hack/build/build-via-appstudio.sh
+++ b/hack/build/build-via-appstudio.sh
@@ -20,7 +20,7 @@ function create-component {
   NAME=${REPO%%.git}
   oc delete --ignore-not-found component $NAME
   [ -n "$SKIP_INITIAL_CHECKS" ] && ANNOTATE_SKIP_INITIAL_CHECKS='| (.metadata.annotations.skip-initial-checks="true")'
-  [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."appstudio.openshift.io/request"="configure-pac")'
+  [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."build.appstudio.openshift.io/request"="configure-pac")'
   yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.containerImage=\"$IMAGE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
 }
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f28e2579/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f28e2579/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 947debf0 to f28e2579 on Mon Dec 18 16:35:28 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/build/build-via-appstudio.sh b/hack/build/build-via-appstudio.sh
index 1d00ac11..87e26520 100755
--- a/hack/build/build-via-appstudio.sh
+++ b/hack/build/build-via-appstudio.sh
@@ -20,7 +20,7 @@ function create-component {
   NAME=${REPO%%.git}
   oc delete --ignore-not-found component $NAME
   [ -n "$SKIP_INITIAL_CHECKS" ] && ANNOTATE_SKIP_INITIAL_CHECKS='| (.metadata.annotations.skip-initial-checks="true")'
-  [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."appstudio.openshift.io/request"="configure-pac")'
+  [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."build.appstudio.openshift.io/request"="configure-pac")'
   yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.containerImage=\"$IMAGE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
 }
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f28e2579/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 98394efc to 947debf0 on Mon Dec 18 13:07:25 2023 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 451278e8..569b7a1c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=181e1f952b4e2ea469fbd9af1366d639aaf7ac87
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=181e1f952b4e2ea469fbd9af1366d639aaf7ac87
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=3483ec3bca357321fbeb32a188b2daca736537b3
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=3483ec3bca357321fbeb32a188b2daca736537b3
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 181e1f952b4e2ea469fbd9af1366d639aaf7ac87
+    newTag: 3483ec3bca357321fbeb32a188b2daca736537b3
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index fb309276..74425db8 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=9894386174b50e35791881dbadd5be209d19d015
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=9894386174b50e35791881dbadd5be209d19d015
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+    newTag: 9894386174b50e35791881dbadd5be209d19d015
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+    newTag: 9894386174b50e35791881dbadd5be209d19d015
 
 patches:
   - target: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-947debf0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 98394efc to 947debf0 on Mon Dec 18 13:07:25 2023 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 451278e8..569b7a1c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=181e1f952b4e2ea469fbd9af1366d639aaf7ac87
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=181e1f952b4e2ea469fbd9af1366d639aaf7ac87
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=3483ec3bca357321fbeb32a188b2daca736537b3
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=3483ec3bca357321fbeb32a188b2daca736537b3
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 181e1f952b4e2ea469fbd9af1366d639aaf7ac87
+    newTag: 3483ec3bca357321fbeb32a188b2daca736537b3
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index fb309276..74425db8 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=9894386174b50e35791881dbadd5be209d19d015
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=9894386174b50e35791881dbadd5be209d19d015
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+    newTag: 9894386174b50e35791881dbadd5be209d19d015
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+    newTag: 9894386174b50e35791881dbadd5be209d19d015
 
 patches:
   - target: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-947debf0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-947debf0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 98394efc to 947debf0 on Mon Dec 18 13:07:25 2023 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 451278e8..569b7a1c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=181e1f952b4e2ea469fbd9af1366d639aaf7ac87
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=181e1f952b4e2ea469fbd9af1366d639aaf7ac87
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=3483ec3bca357321fbeb32a188b2daca736537b3
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=3483ec3bca357321fbeb32a188b2daca736537b3
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 181e1f952b4e2ea469fbd9af1366d639aaf7ac87
+    newTag: 3483ec3bca357321fbeb32a188b2daca736537b3
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index fb309276..74425db8 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=9894386174b50e35791881dbadd5be209d19d015
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=9894386174b50e35791881dbadd5be209d19d015
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+    newTag: 9894386174b50e35791881dbadd5be209d19d015
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 1d9f5ee80b8babe4e1dc27e2c1623034d823bcb6
+    newTag: 9894386174b50e35791881dbadd5be209d19d015
 
 patches:
   - target: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-947debf0/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>
