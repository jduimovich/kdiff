# kustomize changes tracked by commits 
### This file generated at Tue Jun 11 12:04:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a67ab05b to bff38c19 on Tue Jun 11 08:54:56 2024 </h3>  
 
<details> 
<summary>Git Diff (462 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e8fcb344..38440b5c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -21,5 +21,6 @@ resources:
   - perf-team-prometheus-reader
   - project-controller
   - spacerequest-cleaner
+  - mintmaker
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml
new file mode 100644
index 00000000..ae91ae9b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- mintmaker.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
new file mode 100644
index 00000000..7be026e8
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: mintmaker
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/mintmaker
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: mintmaker-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: mintmaker
+        server: '{{server}}'
+      syncPolicy:
+        automated: 
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 0abff43b..5d78c5bb 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -102,6 +102,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 7e66d891..454c22b9 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -142,6 +142,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index b04fa6fc..0be8fe68 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -131,6 +131,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/mintmaker/OWNERS b/components/mintmaker/OWNERS
new file mode 100644
index 00000000..7ab9f2af
--- /dev/null
+++ b/components/mintmaker/OWNERS
@@ -0,0 +1,7 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- scoheb
+
+reviewers:
+- scoheb
diff --git a/components/mintmaker/base/cronjob.yaml b/components/mintmaker/base/cronjob.yaml
new file mode 100644
index 00000000..23a953ce
--- /dev/null
+++ b/components/mintmaker/base/cronjob.yaml
@@ -0,0 +1,42 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: create-dependencyupdatecheck
+  namespace: mintmaker
+spec:
+  schedule: "0 */2 * * *" # every 2 hours
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: mintmaker-controller-manager
+          containers:
+            - name: origin-cli
+              image: "quay.io/openshift/origin-cli:4.14"
+              imagePullPolicy: IfNotPresent
+              command:
+                - /bin/sh
+                - -c
+                - |
+                  echo 'apiVersion: appstudio.redhat.com/v1alpha1
+                  kind: DependencyUpdateCheck
+                  metadata:
+                    labels:
+                      app.kubernetes.io/name: dependencyupdatecheck
+                      app.kubernetes.io/part-of: mintmaker
+                      app.kubernetes.io/managed-by: kustomize
+                      app.kubernetes.io/created-by: mintmaker
+                    generateName: dependencyupdatecheck-
+                  spec:
+                  ' | oc create -f-
+              resources:
+                requests:
+                  cpu: 100m
+                  memory: 10Mi
+                limits:
+                  cpu: 100m
+                  memory: 100Mi
+              securityContext:
+                runAsNonRoot: true
+                readOnlyRootFilesystem: true
diff --git a/components/mintmaker/base/external-secrets/kustomization.yaml b/components/mintmaker/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..6f6b9852
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- pipelines-as-code-secret.yaml
+namespace: mintmaker
diff --git a/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml b/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml
new file mode 100644
index 00000000..4663435f
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: pipelines-as-code-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/pipeline-service/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
diff --git a/components/mintmaker/base/kustomization.yaml b/components/mintmaker/base/kustomization.yaml
new file mode 100644
index 00000000..44a3aabe
--- /dev/null
+++ b/components/mintmaker/base/kustomization.yaml
@@ -0,0 +1,9 @@
+resources:
+- cronjob.yaml
+- mintmaker-team.yaml
+- renovate-config.yaml
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+namespace: mintmaker
diff --git a/components/mintmaker/base/mintmaker-team.yaml b/components/mintmaker/base/mintmaker-team.yaml
new file mode 100644
index 00000000..6e2b3e04
--- /dev/null
+++ b/components/mintmaker/base/mintmaker-team.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: mintmaker-maintainers
+  namespace: mintmaker
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-mintmaker-team
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
new file mode 100644
index 00000000..0492c0c8
--- /dev/null
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -0,0 +1,35 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: renovate-config
+  namespace: mintmaker
+data:
+  renovate.json: |
+    {
+      "onboarding": false,
+      "requireConfig": "ignored",
+      "platformCommit": true,
+      "autodiscover": false,
+      "tekton": {
+        "fileMatch": ["\\.yaml$","\\.yml$"],
+        "includePaths": [".tekton/**"],
+        "packageRules": [
+        {
+            "matchPackagePatterns": [
+              "[*]"
+            ],
+            "enabled": false
+          },
+          {
+            "matchPackagePatterns": [
+              "^quay.io/redhat-appstudio-tekton-catalog/"
+            ],
+            "enabled": true,
+            "matchDepPatterns": [
+              "^quay.io/redhat-appstudio-tekton-catalog/"
+            ],
+            "semanticCommits": "enabled"
+          }
+        ]
+      }
+    }
diff --git a/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml b/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..c15aef5f
--- /dev/null
+++ b/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: mintmaker-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
+      volumes:
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/mintmaker/components/rh-certs/kustomization.yaml b/components/mintmaker/components/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..3a67f15e
--- /dev/null
+++ b/components/mintmaker/components/rh-certs/kustomization.yaml
@@ -0,0 +1,14 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: mintmaker-controller-manager
+      kind: Deployment
+configMapGenerator:
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
+namespace: mintmaker
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
new file mode 100644
index 00000000..d07d393d
--- /dev/null
+++ b/components/mintmaker/development/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+components:
+  - ../components/rh-certs
diff --git a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
new file mode 100644
index 00000000..918316c7
--- /dev/null
+++ b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
new file mode 100644
index 00000000..8ae7e5d3
--- /dev/null
+++ b/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1024Mi
+          requests:
+            cpu: 100m
+            memory: 20Mi
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
new file mode 100644
index 00000000..613c6cbf
--- /dev/null
+++ b/components/mintmaker/production/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+components:
+  - ../k-components/manager-resources-patch
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
diff --git a/components/mintmaker/staging/kustomization.yaml b/components/mintmaker/staging/kustomization.yaml
new file mode 100644
index 00000000..80ff4384
--- /dev/null
+++ b/components/mintmaker/staging/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+components:
+  - ../k-components/manager-resources-patch
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index cc5049b7..829c96f0 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -105,5 +105,6 @@ oc create namespace -o yaml --dry-run=client ${INTEGRATION_NAMESPACE} | oc apply
 
 eval "oc -n '$PAC_NAMESPACE' create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
 eval "oc -n build-service create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
+eval "oc -n mintmaker create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA -o yaml --dry-run=client" | oc apply -f-
 eval "oc -n ${INTEGRATION_NAMESPACE} create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
 echo "Configured ${PAC_SECRET_NAME} secret in ${PAC_NAMESPACE} namespace"
diff --git a/hack/preview.sh b/hack/preview.sh
index 51865b01..6b1d2b04 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -204,6 +204,10 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
+[ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+[ -n "${MINTMAKER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newTag=\"${MINTMAKER_IMAGE_TAG}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+[[ -n "${MINTMAKER_PR_OWNER}" && "${MINTMAKER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/mintmaker*\")) |= \"https://github.com/${MINTMAKER_PR_OWNER}/mintmaker/config/default?ref=${MINTMAKER_PR_SHA}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-bff38c19/production/components: mintmaker 
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
<h3>1: Staging changes from a67ab05b to bff38c19 on Tue Jun 11 08:54:56 2024 </h3>  
 
<details> 
<summary>Git Diff (462 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e8fcb344..38440b5c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -21,5 +21,6 @@ resources:
   - perf-team-prometheus-reader
   - project-controller
   - spacerequest-cleaner
+  - mintmaker
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml
new file mode 100644
index 00000000..ae91ae9b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- mintmaker.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
new file mode 100644
index 00000000..7be026e8
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: mintmaker
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/mintmaker
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: mintmaker-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: mintmaker
+        server: '{{server}}'
+      syncPolicy:
+        automated: 
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 0abff43b..5d78c5bb 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -102,6 +102,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 7e66d891..454c22b9 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -142,6 +142,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index b04fa6fc..0be8fe68 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -131,6 +131,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/mintmaker/OWNERS b/components/mintmaker/OWNERS
new file mode 100644
index 00000000..7ab9f2af
--- /dev/null
+++ b/components/mintmaker/OWNERS
@@ -0,0 +1,7 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- scoheb
+
+reviewers:
+- scoheb
diff --git a/components/mintmaker/base/cronjob.yaml b/components/mintmaker/base/cronjob.yaml
new file mode 100644
index 00000000..23a953ce
--- /dev/null
+++ b/components/mintmaker/base/cronjob.yaml
@@ -0,0 +1,42 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: create-dependencyupdatecheck
+  namespace: mintmaker
+spec:
+  schedule: "0 */2 * * *" # every 2 hours
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: mintmaker-controller-manager
+          containers:
+            - name: origin-cli
+              image: "quay.io/openshift/origin-cli:4.14"
+              imagePullPolicy: IfNotPresent
+              command:
+                - /bin/sh
+                - -c
+                - |
+                  echo 'apiVersion: appstudio.redhat.com/v1alpha1
+                  kind: DependencyUpdateCheck
+                  metadata:
+                    labels:
+                      app.kubernetes.io/name: dependencyupdatecheck
+                      app.kubernetes.io/part-of: mintmaker
+                      app.kubernetes.io/managed-by: kustomize
+                      app.kubernetes.io/created-by: mintmaker
+                    generateName: dependencyupdatecheck-
+                  spec:
+                  ' | oc create -f-
+              resources:
+                requests:
+                  cpu: 100m
+                  memory: 10Mi
+                limits:
+                  cpu: 100m
+                  memory: 100Mi
+              securityContext:
+                runAsNonRoot: true
+                readOnlyRootFilesystem: true
diff --git a/components/mintmaker/base/external-secrets/kustomization.yaml b/components/mintmaker/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..6f6b9852
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- pipelines-as-code-secret.yaml
+namespace: mintmaker
diff --git a/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml b/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml
new file mode 100644
index 00000000..4663435f
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: pipelines-as-code-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/pipeline-service/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
diff --git a/components/mintmaker/base/kustomization.yaml b/components/mintmaker/base/kustomization.yaml
new file mode 100644
index 00000000..44a3aabe
--- /dev/null
+++ b/components/mintmaker/base/kustomization.yaml
@@ -0,0 +1,9 @@
+resources:
+- cronjob.yaml
+- mintmaker-team.yaml
+- renovate-config.yaml
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+namespace: mintmaker
diff --git a/components/mintmaker/base/mintmaker-team.yaml b/components/mintmaker/base/mintmaker-team.yaml
new file mode 100644
index 00000000..6e2b3e04
--- /dev/null
+++ b/components/mintmaker/base/mintmaker-team.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: mintmaker-maintainers
+  namespace: mintmaker
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-mintmaker-team
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
new file mode 100644
index 00000000..0492c0c8
--- /dev/null
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -0,0 +1,35 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: renovate-config
+  namespace: mintmaker
+data:
+  renovate.json: |
+    {
+      "onboarding": false,
+      "requireConfig": "ignored",
+      "platformCommit": true,
+      "autodiscover": false,
+      "tekton": {
+        "fileMatch": ["\\.yaml$","\\.yml$"],
+        "includePaths": [".tekton/**"],
+        "packageRules": [
+        {
+            "matchPackagePatterns": [
+              "[*]"
+            ],
+            "enabled": false
+          },
+          {
+            "matchPackagePatterns": [
+              "^quay.io/redhat-appstudio-tekton-catalog/"
+            ],
+            "enabled": true,
+            "matchDepPatterns": [
+              "^quay.io/redhat-appstudio-tekton-catalog/"
+            ],
+            "semanticCommits": "enabled"
+          }
+        ]
+      }
+    }
diff --git a/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml b/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..c15aef5f
--- /dev/null
+++ b/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: mintmaker-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
+      volumes:
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/mintmaker/components/rh-certs/kustomization.yaml b/components/mintmaker/components/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..3a67f15e
--- /dev/null
+++ b/components/mintmaker/components/rh-certs/kustomization.yaml
@@ -0,0 +1,14 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: mintmaker-controller-manager
+      kind: Deployment
+configMapGenerator:
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
+namespace: mintmaker
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
new file mode 100644
index 00000000..d07d393d
--- /dev/null
+++ b/components/mintmaker/development/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+components:
+  - ../components/rh-certs
diff --git a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
new file mode 100644
index 00000000..918316c7
--- /dev/null
+++ b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
new file mode 100644
index 00000000..8ae7e5d3
--- /dev/null
+++ b/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1024Mi
+          requests:
+            cpu: 100m
+            memory: 20Mi
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
new file mode 100644
index 00000000..613c6cbf
--- /dev/null
+++ b/components/mintmaker/production/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+components:
+  - ../k-components/manager-resources-patch
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
diff --git a/components/mintmaker/staging/kustomization.yaml b/components/mintmaker/staging/kustomization.yaml
new file mode 100644
index 00000000..80ff4384
--- /dev/null
+++ b/components/mintmaker/staging/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+components:
+  - ../k-components/manager-resources-patch
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index cc5049b7..829c96f0 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -105,5 +105,6 @@ oc create namespace -o yaml --dry-run=client ${INTEGRATION_NAMESPACE} | oc apply
 
 eval "oc -n '$PAC_NAMESPACE' create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
 eval "oc -n build-service create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
+eval "oc -n mintmaker create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA -o yaml --dry-run=client" | oc apply -f-
 eval "oc -n ${INTEGRATION_NAMESPACE} create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
 echo "Configured ${PAC_SECRET_NAME} secret in ${PAC_NAMESPACE} namespace"
diff --git a/hack/preview.sh b/hack/preview.sh
index 51865b01..6b1d2b04 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -204,6 +204,10 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
+[ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+[ -n "${MINTMAKER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newTag=\"${MINTMAKER_IMAGE_TAG}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+[[ -n "${MINTMAKER_PR_OWNER}" && "${MINTMAKER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/mintmaker*\")) |= \"https://github.com/${MINTMAKER_PR_OWNER}/mintmaker/config/default?ref=${MINTMAKER_PR_SHA}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-bff38c19/staging/components: mintmaker 
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

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from a67ab05b to bff38c19 on Tue Jun 11 08:54:56 2024 </h3>  
 
<details> 
<summary>Git Diff (462 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e8fcb344..38440b5c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -21,5 +21,6 @@ resources:
   - perf-team-prometheus-reader
   - project-controller
   - spacerequest-cleaner
+  - mintmaker
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml
new file mode 100644
index 00000000..ae91ae9b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- mintmaker.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
new file mode 100644
index 00000000..7be026e8
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: mintmaker
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/mintmaker
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: mintmaker-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: mintmaker
+        server: '{{server}}'
+      syncPolicy:
+        automated: 
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 0abff43b..5d78c5bb 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -102,6 +102,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 7e66d891..454c22b9 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -142,6 +142,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index b04fa6fc..0be8fe68 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -131,6 +131,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: mintmaker
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/mintmaker/OWNERS b/components/mintmaker/OWNERS
new file mode 100644
index 00000000..7ab9f2af
--- /dev/null
+++ b/components/mintmaker/OWNERS
@@ -0,0 +1,7 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- scoheb
+
+reviewers:
+- scoheb
diff --git a/components/mintmaker/base/cronjob.yaml b/components/mintmaker/base/cronjob.yaml
new file mode 100644
index 00000000..23a953ce
--- /dev/null
+++ b/components/mintmaker/base/cronjob.yaml
@@ -0,0 +1,42 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: create-dependencyupdatecheck
+  namespace: mintmaker
+spec:
+  schedule: "0 */2 * * *" # every 2 hours
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: mintmaker-controller-manager
+          containers:
+            - name: origin-cli
+              image: "quay.io/openshift/origin-cli:4.14"
+              imagePullPolicy: IfNotPresent
+              command:
+                - /bin/sh
+                - -c
+                - |
+                  echo 'apiVersion: appstudio.redhat.com/v1alpha1
+                  kind: DependencyUpdateCheck
+                  metadata:
+                    labels:
+                      app.kubernetes.io/name: dependencyupdatecheck
+                      app.kubernetes.io/part-of: mintmaker
+                      app.kubernetes.io/managed-by: kustomize
+                      app.kubernetes.io/created-by: mintmaker
+                    generateName: dependencyupdatecheck-
+                  spec:
+                  ' | oc create -f-
+              resources:
+                requests:
+                  cpu: 100m
+                  memory: 10Mi
+                limits:
+                  cpu: 100m
+                  memory: 100Mi
+              securityContext:
+                runAsNonRoot: true
+                readOnlyRootFilesystem: true
diff --git a/components/mintmaker/base/external-secrets/kustomization.yaml b/components/mintmaker/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..6f6b9852
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- pipelines-as-code-secret.yaml
+namespace: mintmaker
diff --git a/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml b/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml
new file mode 100644
index 00000000..4663435f
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/pipelines-as-code-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: pipelines-as-code-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/pipeline-service/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
diff --git a/components/mintmaker/base/kustomization.yaml b/components/mintmaker/base/kustomization.yaml
new file mode 100644
index 00000000..44a3aabe
--- /dev/null
+++ b/components/mintmaker/base/kustomization.yaml
@@ -0,0 +1,9 @@
+resources:
+- cronjob.yaml
+- mintmaker-team.yaml
+- renovate-config.yaml
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+namespace: mintmaker
diff --git a/components/mintmaker/base/mintmaker-team.yaml b/components/mintmaker/base/mintmaker-team.yaml
new file mode 100644
index 00000000..6e2b3e04
--- /dev/null
+++ b/components/mintmaker/base/mintmaker-team.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: mintmaker-maintainers
+  namespace: mintmaker
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-mintmaker-team
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
new file mode 100644
index 00000000..0492c0c8
--- /dev/null
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -0,0 +1,35 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: renovate-config
+  namespace: mintmaker
+data:
+  renovate.json: |
+    {
+      "onboarding": false,
+      "requireConfig": "ignored",
+      "platformCommit": true,
+      "autodiscover": false,
+      "tekton": {
+        "fileMatch": ["\\.yaml$","\\.yml$"],
+        "includePaths": [".tekton/**"],
+        "packageRules": [
+        {
+            "matchPackagePatterns": [
+              "[*]"
+            ],
+            "enabled": false
+          },
+          {
+            "matchPackagePatterns": [
+              "^quay.io/redhat-appstudio-tekton-catalog/"
+            ],
+            "enabled": true,
+            "matchDepPatterns": [
+              "^quay.io/redhat-appstudio-tekton-catalog/"
+            ],
+            "semanticCommits": "enabled"
+          }
+        ]
+      }
+    }
diff --git a/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml b/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..c15aef5f
--- /dev/null
+++ b/components/mintmaker/components/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: mintmaker-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
+      volumes:
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/mintmaker/components/rh-certs/kustomization.yaml b/components/mintmaker/components/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..3a67f15e
--- /dev/null
+++ b/components/mintmaker/components/rh-certs/kustomization.yaml
@@ -0,0 +1,14 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: mintmaker-controller-manager
+      kind: Deployment
+configMapGenerator:
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
+namespace: mintmaker
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
new file mode 100644
index 00000000..d07d393d
--- /dev/null
+++ b/components/mintmaker/development/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+components:
+  - ../components/rh-certs
diff --git a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
new file mode 100644
index 00000000..918316c7
--- /dev/null
+++ b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
new file mode 100644
index 00000000..8ae7e5d3
--- /dev/null
+++ b/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1024Mi
+          requests:
+            cpu: 100m
+            memory: 20Mi
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
new file mode 100644
index 00000000..613c6cbf
--- /dev/null
+++ b/components/mintmaker/production/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+components:
+  - ../k-components/manager-resources-patch
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
diff --git a/components/mintmaker/staging/kustomization.yaml b/components/mintmaker/staging/kustomization.yaml
new file mode 100644
index 00000000..80ff4384
--- /dev/null
+++ b/components/mintmaker/staging/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+components:
+  - ../k-components/manager-resources-patch
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index cc5049b7..829c96f0 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -105,5 +105,6 @@ oc create namespace -o yaml --dry-run=client ${INTEGRATION_NAMESPACE} | oc apply
 
 eval "oc -n '$PAC_NAMESPACE' create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
 eval "oc -n build-service create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
+eval "oc -n mintmaker create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA -o yaml --dry-run=client" | oc apply -f-
 eval "oc -n ${INTEGRATION_NAMESPACE} create secret generic '$PAC_SECRET_NAME' $GITHUB_APP_DATA $GITHUB_WEBHOOK_DATA $GITLAB_WEBHOOK_DATA -o yaml --dry-run=client" | oc apply -f-
 echo "Configured ${PAC_SECRET_NAME} secret in ${PAC_NAMESPACE} namespace"
diff --git a/hack/preview.sh b/hack/preview.sh
index 51865b01..6b1d2b04 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -204,6 +204,10 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
+[ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+[ -n "${MINTMAKER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newTag=\"${MINTMAKER_IMAGE_TAG}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+[[ -n "${MINTMAKER_PR_OWNER}" && "${MINTMAKER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/mintmaker*\")) |= \"https://github.com/${MINTMAKER_PR_OWNER}/mintmaker/config/default?ref=${MINTMAKER_PR_SHA}\"" $ROOT/components/mintmaker/development/kustomization.yaml
+
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-a67ab05b/development/app-of-apps-development.yaml
699,742d698
<   name: mintmaker
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/mintmaker
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: mintmaker-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: mintmaker
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
./commit-bff38c19/development/components: mintmaker 
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
<h3>2: Production changes from ac97db06 to a67ab05b on Tue Jun 11 08:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index fc19cb7d..863ab3b7 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (358 lines)</summary>  

``` 
./commit-ac97db06/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
9a10,170
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: buildpipelineselectors.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: BuildPipelineSelector
>     listKind: BuildPipelineSelectorList
>     plural: buildpipelineselectors
>     singular: buildpipelineselector
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: BuildPipelineSelector is the Schema for the BuildPipelineSelectors
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: BuildPipelineSelectorSpec defines the desired state of BuildPipelineSelector
>             properties:
>               selectors:
>                 description: Defines chain of pipeline selectors. The first matching
>                   item is used.
>                 items:
>                   description: PipelineSelector defines allowed build pipeline and
>                     conditions when it should be used.
>                   properties:
>                     name:
>                       description: Name of the selector item. Optional.
>                       type: string
>                     pipelineParams:
>                       description: Extra arguments to add to the specified pipeline
>                         run.
>                       items:
>                         description: PipelineParam is a type to describe pipeline
>                           parameters. tektonapi.Param type is not used due to validation
>                           issues.
>                         properties:
>                           name:
>                             type: string
>                           value:
>                             type: string
>                         required:
>                         - name
>                         - value
>                         type: object
>                       type: array
>                       x-kubernetes-list-type: atomic
>                     pipelineRef:
>                       description: Build Pipeline to use if the selector conditions
>                         are met.
>                       properties:
>                         apiVersion:
>                           description: API version of the referent
>                           type: string
>                         name:
>                           description: 'Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names'
>                           type: string
>                         params:
>                           description: Params contains the parameters used to identify
>                             the referenced Tekton resource. Example entries might
>                             include "repo" or "path" but the set of params ultimately
>                             depends on the chosen resolver.
>                           items:
>                             description: Param declares an ParamValues to use for
>                               the parameter called name.
>                             properties:
>                               name:
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-type: atomic
>                         resolver:
>                           description: Resolver is the name of the resolver that should
>                             perform resolution of the referenced Tekton resource,
>                             such as "git".
>                           type: string
>                       type: object
>                     when:
>                       description: Defines the selector conditions when given build
>                         pipeline should be used. All conditions are connected via
>                         AND, whereas cases within any condition connected via OR.
>                         If the section is omitted, then the condition is considered
>                         true (usually used for fallback condition).
>                       properties:
>                         annotations:
>                           additionalProperties:
>                             type: string
>                           description: Defines annotations to match. The values to
>                             compare with are taken from component.metadata.annotations
>                             field.
>                           type: object
>                         componentName:
>                           description: Defines list of allowed component names to
>                             match, e.g. 'my-component'. The value to compare with
>                             is taken from component.metadata.name field.
>                           type: string
>                         dockerfile:
>                           description: Defines if a Dockerfile should be present in
>                             the component. Note, unset (nil) value is not the same
>                             as false (unset means skip the dockerfile check). The
>                             value to compare with is taken from devfile components
>                             of image type.
>                           type: boolean
>                         labels:
>                           additionalProperties:
>                             type: string
>                           description: Defines labels to match. The values to compare
>                             with are taken from component.metadata.labels field.
>                           type: object
>                         language:
>                           description: Defines component language to match, e.g. 'java'.
>                             The value to compare with is taken from devfile.metadata.language
>                             field.
>                           type: string
>                         projectType:
>                           description: Defines type of project of the component to
>                             match, e.g. 'quarkus'. The value to compare with is taken
>                             from devfile.metadata.projectType field.
>                           type: string
>                       type: object
>                   required:
>                   - pipelineRef
>                   type: object
>                 type: array
>             required:
>             - selectors
>             type: object
>         type: object
>     served: true
>     storage: true
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
192a354,364
>   - buildpipelineselectors
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
571c743
<         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa
---
>         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c
./commit-ac97db06/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
9a10,170
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: buildpipelineselectors.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: BuildPipelineSelector
>     listKind: BuildPipelineSelectorList
>     plural: buildpipelineselectors
>     singular: buildpipelineselector
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: BuildPipelineSelector is the Schema for the BuildPipelineSelectors
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: BuildPipelineSelectorSpec defines the desired state of BuildPipelineSelector
>             properties:
>               selectors:
>                 description: Defines chain of pipeline selectors. The first matching
>                   item is used.
>                 items:
>                   description: PipelineSelector defines allowed build pipeline and
>                     conditions when it should be used.
>                   properties:
>                     name:
>                       description: Name of the selector item. Optional.
>                       type: string
>                     pipelineParams:
>                       description: Extra arguments to add to the specified pipeline
>                         run.
>                       items:
>                         description: PipelineParam is a type to describe pipeline
>                           parameters. tektonapi.Param type is not used due to validation
>                           issues.
>                         properties:
>                           name:
>                             type: string
>                           value:
>                             type: string
>                         required:
>                         - name
>                         - value
>                         type: object
>                       type: array
>                       x-kubernetes-list-type: atomic
>                     pipelineRef:
>                       description: Build Pipeline to use if the selector conditions
>                         are met.
>                       properties:
>                         apiVersion:
>                           description: API version of the referent
>                           type: string
>                         name:
>                           description: 'Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names'
>                           type: string
>                         params:
>                           description: Params contains the parameters used to identify
>                             the referenced Tekton resource. Example entries might
>                             include "repo" or "path" but the set of params ultimately
>                             depends on the chosen resolver.
>                           items:
>                             description: Param declares an ParamValues to use for
>                               the parameter called name.
>                             properties:
>                               name:
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-type: atomic
>                         resolver:
>                           description: Resolver is the name of the resolver that should
>                             perform resolution of the referenced Tekton resource,
>                             such as "git".
>                           type: string
>                       type: object
>                     when:
>                       description: Defines the selector conditions when given build
>                         pipeline should be used. All conditions are connected via
>                         AND, whereas cases within any condition connected via OR.
>                         If the section is omitted, then the condition is considered
>                         true (usually used for fallback condition).
>                       properties:
>                         annotations:
>                           additionalProperties:
>                             type: string
>                           description: Defines annotations to match. The values to
>                             compare with are taken from component.metadata.annotations
>                             field.
>                           type: object
>                         componentName:
>                           description: Defines list of allowed component names to
>                             match, e.g. 'my-component'. The value to compare with
>                             is taken from component.metadata.name field.
>                           type: string
>                         dockerfile:
>                           description: Defines if a Dockerfile should be present in
>                             the component. Note, unset (nil) value is not the same
>                             as false (unset means skip the dockerfile check). The
>                             value to compare with is taken from devfile components
>                             of image type.
>                           type: boolean
>                         labels:
>                           additionalProperties:
>                             type: string
>                           description: Defines labels to match. The values to compare
>                             with are taken from component.metadata.labels field.
>                           type: object
>                         language:
>                           description: Defines component language to match, e.g. 'java'.
>                             The value to compare with is taken from devfile.metadata.language
>                             field.
>                           type: string
>                         projectType:
>                           description: Defines type of project of the component to
>                             match, e.g. 'quarkus'. The value to compare with is taken
>                             from devfile.metadata.projectType field.
>                           type: string
>                       type: object
>                   required:
>                   - pipelineRef
>                   type: object
>                 type: array
>             required:
>             - selectors
>             type: object
>         type: object
>     served: true
>     storage: true
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
192a354,364
>   - buildpipelineselectors
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
571c743
<         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa
---
>         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c 
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
<h3>2: Staging changes from ac97db06 to a67ab05b on Tue Jun 11 08:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index fc19cb7d..863ab3b7 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from ac97db06 to a67ab05b on Tue Jun 11 08:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index fc19cb7d..863ab3b7 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>3: Production changes from eebe5484 to ac97db06 on Mon Jun 10 18:08:41 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 2e77c0e0..841d3a53 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 926cef46ee856d690294ed02009149563d493c33
+    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index ab49097a..944a4691 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 926cef46ee856d690294ed02009149563d493c33
+    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9cff683a..84334f75 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index a4faed9f..30a49a9e 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-eebe5484/production/components/has/production/kustomize.out.yaml
776c776
<         image: quay.io/redhat-appstudio/application-service:338ad7f4e3577aa7c9b5be293a97689d84a28442
---
>         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33 
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
<h3>3: Staging changes from eebe5484 to ac97db06 on Mon Jun 10 18:08:41 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 2e77c0e0..841d3a53 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 926cef46ee856d690294ed02009149563d493c33
+    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index ab49097a..944a4691 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 926cef46ee856d690294ed02009149563d493c33
+    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9cff683a..84334f75 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index a4faed9f..30a49a9e 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-eebe5484/staging/components/has/staging/kustomize.out.yaml
803c803
<         image: quay.io/redhat-appstudio/application-service:338ad7f4e3577aa7c9b5be293a97689d84a28442
---
>         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from eebe5484 to ac97db06 on Mon Jun 10 18:08:41 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 2e77c0e0..841d3a53 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 926cef46ee856d690294ed02009149563d493c33
+    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index ab49097a..944a4691 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 926cef46ee856d690294ed02009149563d493c33
+    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9cff683a..84334f75 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index a4faed9f..30a49a9e 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-eebe5484/development/components/has/development/kustomize.out.yaml
735c735
<         image: quay.io/redhat-appstudio/application-service:338ad7f4e3577aa7c9b5be293a97689d84a28442
---
>         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33 
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
<h3>4: Production changes from 5be80df0 to eebe5484 on Mon Jun 10 14:50:19 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 6fa9abd0..ee111d41 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-5be80df0/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
./commit-5be80df0/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109 
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
<h3>4: Staging changes from 5be80df0 to eebe5484 on Mon Jun 10 14:50:19 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 6fa9abd0..ee111d41 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config 
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

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 5be80df0 to eebe5484 on Mon Jun 10 14:50:19 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 6fa9abd0..ee111d41 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config 
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
