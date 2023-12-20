# kustomize changes tracked by commits 
### This file generated at Wed Dec 20 00:09:26 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 87aa5351 to 89be7354 on Tue Dec 19 22:57:01 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index b365de78..7117e489 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -337,3 +337,20 @@ if $KEYCLOAK && $TOOLCHAIN ; then
 	  exit 1
   fi
 fi
+
+# Sometimes Tekton CRDs need a few mins to be ready
+retry=0
+while true; do
+  if [ "$retry" -eq 5 ]; then
+    printf "Error: Tekton CRDs are not yet available on the cluster.\n" >&2
+    exit 1
+  fi
+  tekton_crds=$(oc api-resources --api-group="tekton.dev" --no-headers)
+  if [[ $tekton_crds =~ pipelines && $tekton_crds =~ tasks && $tekton_crds =~ pipelineruns && $tekton_crds =~ taskruns ]]; then
+    echo "Tekton CRDs are ready"
+    break
+  fi
+  sleep $INTERVAL
+  retry=$((retry + 1))
+done
+ 
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

./commit-89be7354/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-89be7354/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 87aa5351 to 89be7354 on Tue Dec 19 22:57:01 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index b365de78..7117e489 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -337,3 +337,20 @@ if $KEYCLOAK && $TOOLCHAIN ; then
 	  exit 1
   fi
 fi
+
+# Sometimes Tekton CRDs need a few mins to be ready
+retry=0
+while true; do
+  if [ "$retry" -eq 5 ]; then
+    printf "Error: Tekton CRDs are not yet available on the cluster.\n" >&2
+    exit 1
+  fi
+  tekton_crds=$(oc api-resources --api-group="tekton.dev" --no-headers)
+  if [[ $tekton_crds =~ pipelines && $tekton_crds =~ tasks && $tekton_crds =~ pipelineruns && $tekton_crds =~ taskruns ]]; then
+    echo "Tekton CRDs are ready"
+    break
+  fi
+  sleep $INTERVAL
+  retry=$((retry + 1))
+done
+ 
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

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-89be7354/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-89be7354/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 87aa5351 to 89be7354 on Tue Dec 19 22:57:01 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index b365de78..7117e489 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -337,3 +337,20 @@ if $KEYCLOAK && $TOOLCHAIN ; then
 	  exit 1
   fi
 fi
+
+# Sometimes Tekton CRDs need a few mins to be ready
+retry=0
+while true; do
+  if [ "$retry" -eq 5 ]; then
+    printf "Error: Tekton CRDs are not yet available on the cluster.\n" >&2
+    exit 1
+  fi
+  tekton_crds=$(oc api-resources --api-group="tekton.dev" --no-headers)
+  if [[ $tekton_crds =~ pipelines && $tekton_crds =~ tasks && $tekton_crds =~ pipelineruns && $tekton_crds =~ taskruns ]]; then
+    echo "Tekton CRDs are ready"
+    break
+  fi
+  sleep $INTERVAL
+  retry=$((retry + 1))
+done
+ 
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

./commit-89be7354/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from e195fa3d to 87aa5351 on Tue Dec 19 21:04:16 2023 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ab56757b..61120be2 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8313c38b61d684562cb93bd7d4757b08401d2c44
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2f0b4d0f72cc4902bb108ac56172d535de55f9d8
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e57368c0..326c41e7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1569,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 736cb59f..aa763693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1569,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (86 lines)</summary>  

``` 
./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
319d318
<   - resolution.tekton.dev
1323c1322
<         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1348a1348,1349
>             add:
>             - NET_BIND_SERVICE
1392c1393
<         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1499,1503c1500
<         - name: TEKTON_RESULTS_API_SERVICE
<           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
<         - name: AUTH_MODE
<           value: token
<         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1510,1516d1506
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
1519a1510,1511
>             add:
>             - NET_BIND_SERVICE
1579,1585d1570
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
1591d1575
<               readOnlyRootFilesystem: true
./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
319d318
<   - resolution.tekton.dev
1323c1322
<         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1348a1348,1349
>             add:
>             - NET_BIND_SERVICE
1392c1393
<         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1499,1503c1500
<         - name: TEKTON_RESULTS_API_SERVICE
<           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
<         - name: AUTH_MODE
<           value: token
<         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1510,1516d1506
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
1519a1510,1511
>             add:
>             - NET_BIND_SERVICE
1579,1585d1570
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
1591d1575
<               readOnlyRootFilesystem: true 
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

./commit-87aa5351/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-87aa5351/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from e195fa3d to 87aa5351 on Tue Dec 19 21:04:16 2023 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ab56757b..61120be2 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8313c38b61d684562cb93bd7d4757b08401d2c44
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2f0b4d0f72cc4902bb108ac56172d535de55f9d8
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e57368c0..326c41e7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1569,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 736cb59f..aa763693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1569,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault 
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

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from e195fa3d to 87aa5351 on Tue Dec 19 21:04:16 2023 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ab56757b..61120be2 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8313c38b61d684562cb93bd7d4757b08401d2c44
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2f0b4d0f72cc4902bb108ac56172d535de55f9d8
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e57368c0..326c41e7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1569,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 736cb59f..aa763693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1569,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault 
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

./commit-87aa5351/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from 037fdd5b to e195fa3d on Tue Dec 19 18:19:20 2023 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 4a700c64..cf13b7f6 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -10,7 +10,6 @@ rules:
   - releases
   - releaseplans
   - releaseplanadmissions
-  - releasestrategies
   - snapshots
   verbs:
   - get
@@ -22,6 +21,7 @@ rules:
   - internalrequests
   verbs:
   - create
+  - delete
   - get
   - list
   - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-037fdd5b/production/components/release/production/kustomize.out.yaml
833a834
>   - releasestrategies
845d845
<   - delete 
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

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 037fdd5b to e195fa3d on Tue Dec 19 18:19:20 2023 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 4a700c64..cf13b7f6 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -10,7 +10,6 @@ rules:
   - releases
   - releaseplans
   - releaseplanadmissions
-  - releasestrategies
   - snapshots
   verbs:
   - get
@@ -22,6 +21,7 @@ rules:
   - internalrequests
   verbs:
   - create
+  - delete
   - get
   - list
   - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-037fdd5b/staging/components/release/staging/kustomize.out.yaml
833a834
>   - releasestrategies
845d845
<   - delete 
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

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e195fa3d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 037fdd5b to e195fa3d on Tue Dec 19 18:19:20 2023 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 4a700c64..cf13b7f6 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -10,7 +10,6 @@ rules:
   - releases
   - releaseplans
   - releaseplanadmissions
-  - releasestrategies
   - snapshots
   verbs:
   - get
@@ -22,6 +21,7 @@ rules:
   - internalrequests
   verbs:
   - create
+  - delete
   - get
   - list
   - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-037fdd5b/development/components/release/development/kustomize.out.yaml
833a834
>   - releasestrategies
845d845
<   - delete 
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

./commit-e195fa3d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from e9e5a53f to 037fdd5b on Tue Dec 19 13:22:18 2023 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/smee-client/kustomization.yaml b/argo-cd-apps/base/smee-client/kustomization.yaml
new file mode 100644
index 00000000..45d78262
--- /dev/null
+++ b/argo-cd-apps/base/smee-client/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- smee-client.yaml
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
new file mode 100644
index 00000000..b40a4524
--- /dev/null
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee-client
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/smee-client
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: smee-client-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: smee-client
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index ed6fc122..f03eee88 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../staging
+  - ../../base/smee-client
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/smee-client/deployment.yaml b/components/smee-client/deployment.yaml
new file mode 100644
index 00000000..95cc81b3
--- /dev/null
+++ b/components/smee-client/deployment.yaml
@@ -0,0 +1,33 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gosmee-client
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: gosmee-client
+  template:
+    metadata:
+      labels:
+        app: gosmee-client
+    spec:
+      containers:
+        - image: "ghcr.io/chmouel/gosmee:v0.20.2"
+          imagePullPolicy: Always
+          name: gosmee
+          args:
+            - "client"
+            - "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+            - "http://pipelines-as-code-controller.openshift-pipelines:8080"
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          resources:
+            limits:
+              cpu: 1
+              memory: 32Mi
+            requests:
+              cpu: 1
+              memory: 32Mi
diff --git a/components/smee-client/kustomization.yaml b/components/smee-client/kustomization.yaml
new file mode 100644
index 00000000..9c2d28b0
--- /dev/null
+++ b/components/smee-client/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deployment.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-037fdd5b/production/components: smee-client 
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

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from e9e5a53f to 037fdd5b on Tue Dec 19 13:22:18 2023 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/smee-client/kustomization.yaml b/argo-cd-apps/base/smee-client/kustomization.yaml
new file mode 100644
index 00000000..45d78262
--- /dev/null
+++ b/argo-cd-apps/base/smee-client/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- smee-client.yaml
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
new file mode 100644
index 00000000..b40a4524
--- /dev/null
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee-client
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/smee-client
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: smee-client-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: smee-client
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index ed6fc122..f03eee88 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../staging
+  - ../../base/smee-client
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/smee-client/deployment.yaml b/components/smee-client/deployment.yaml
new file mode 100644
index 00000000..95cc81b3
--- /dev/null
+++ b/components/smee-client/deployment.yaml
@@ -0,0 +1,33 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gosmee-client
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: gosmee-client
+  template:
+    metadata:
+      labels:
+        app: gosmee-client
+    spec:
+      containers:
+        - image: "ghcr.io/chmouel/gosmee:v0.20.2"
+          imagePullPolicy: Always
+          name: gosmee
+          args:
+            - "client"
+            - "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+            - "http://pipelines-as-code-controller.openshift-pipelines:8080"
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          resources:
+            limits:
+              cpu: 1
+              memory: 32Mi
+            requests:
+              cpu: 1
+              memory: 32Mi
diff --git a/components/smee-client/kustomization.yaml b/components/smee-client/kustomization.yaml
new file mode 100644
index 00000000..9c2d28b0
--- /dev/null
+++ b/components/smee-client/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deployment.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-037fdd5b/staging/components: smee-client 
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

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-037fdd5b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from e9e5a53f to 037fdd5b on Tue Dec 19 13:22:18 2023 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/smee-client/kustomization.yaml b/argo-cd-apps/base/smee-client/kustomization.yaml
new file mode 100644
index 00000000..45d78262
--- /dev/null
+++ b/argo-cd-apps/base/smee-client/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- smee-client.yaml
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
new file mode 100644
index 00000000..b40a4524
--- /dev/null
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee-client
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/smee-client
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: smee-client-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: smee-client
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index ed6fc122..f03eee88 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../staging
+  - ../../base/smee-client
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/smee-client/deployment.yaml b/components/smee-client/deployment.yaml
new file mode 100644
index 00000000..95cc81b3
--- /dev/null
+++ b/components/smee-client/deployment.yaml
@@ -0,0 +1,33 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gosmee-client
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: gosmee-client
+  template:
+    metadata:
+      labels:
+        app: gosmee-client
+    spec:
+      containers:
+        - image: "ghcr.io/chmouel/gosmee:v0.20.2"
+          imagePullPolicy: Always
+          name: gosmee
+          args:
+            - "client"
+            - "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+            - "http://pipelines-as-code-controller.openshift-pipelines:8080"
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          resources:
+            limits:
+              cpu: 1
+              memory: 32Mi
+            requests:
+              cpu: 1
+              memory: 32Mi
diff --git a/components/smee-client/kustomization.yaml b/components/smee-client/kustomization.yaml
new file mode 100644
index 00000000..9c2d28b0
--- /dev/null
+++ b/components/smee-client/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deployment.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-037fdd5b/development/components: smee-client 
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

./commit-037fdd5b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
