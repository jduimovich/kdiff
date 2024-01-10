# kustomize changes tracked by commits 
### This file generated at Wed Jan 10 08:02:11 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 7a12797b to 51dd1698 on Tue Jan 9 23:20:46 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index a2890cbe..d6466932 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,4 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
+- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b5430fbfb71b7408cce350619fc1c3590edc603c 
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
<h3>1: Staging changes from 7a12797b to 51dd1698 on Tue Jan 9 23:20:46 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index a2890cbe..d6466932 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,4 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
+- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b5430fbfb71b7408cce350619fc1c3590edc603c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 7a12797b to 51dd1698 on Tue Jan 9 23:20:46 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index a2890cbe..d6466932 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,4 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
+- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b5430fbfb71b7408cce350619fc1c3590edc603c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from a7675b9e to 7a12797b on Tue Jan 9 21:55:33 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0a1ebfcf..ab7a2812 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 9764e2f0..adeb58ad 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3081badb..8f41c5f6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c0024fb4..871b4848 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c8df7a77..91d5f6ac 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f2b17b22..856bf7c6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090 
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
<h3>2: Staging changes from a7675b9e to 7a12797b on Tue Jan 9 21:55:33 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0a1ebfcf..ab7a2812 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 9764e2f0..adeb58ad 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3081badb..8f41c5f6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c0024fb4..871b4848 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c8df7a77..91d5f6ac 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f2b17b22..856bf7c6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (45 lines)</summary>  

``` 
./commit-a7675b9e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1327c1327
<         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1396c1396
<         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1488d1487
<         - -check_owner=false
1508c1507
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
./commit-a7675b9e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1327c1327
<         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1396c1396
<         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1488d1487
<         - -check_owner=false
1508c1507
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
./commit-a7675b9e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1327c1327
<         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1396c1396
<         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1488d1487
<         - -check_owner=false
1508c1507
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a7675b9e to 7a12797b on Tue Jan 9 21:55:33 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0a1ebfcf..ab7a2812 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 9764e2f0..adeb58ad 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3081badb..8f41c5f6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c0024fb4..871b4848 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c8df7a77..91d5f6ac 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f2b17b22..856bf7c6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1324,7 +1324,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1393,7 +1393,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1485,6 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1504,7 +1505,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-a7675b9e/development/components/pipeline-service/development/kustomize.out.yaml
1303c1303
<         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1457c1457
<         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1557d1556
<         - -check_owner=false
1577c1576
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 9fc1b482 to a7675b9e on Tue Jan 9 19:43:44 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 3f9bf44b..ecbf7cda 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=405596bf32f4b42e41f637925d82992a303bf336
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 212e0b40..25564f5c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=405596bf32f4b42e41f637925d82992a303bf336
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+    newTag: 405596bf32f4b42e41f637925d82992a303bf336
 
 namespace: release-service 
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
<h3>3: Staging changes from 9fc1b482 to a7675b9e on Tue Jan 9 19:43:44 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 3f9bf44b..ecbf7cda 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=405596bf32f4b42e41f637925d82992a303bf336
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 212e0b40..25564f5c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=405596bf32f4b42e41f637925d82992a303bf336
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+    newTag: 405596bf32f4b42e41f637925d82992a303bf336
 
 namespace: release-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 9fc1b482 to a7675b9e on Tue Jan 9 19:43:44 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 3f9bf44b..ecbf7cda 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=405596bf32f4b42e41f637925d82992a303bf336
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 212e0b40..25564f5c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=405596bf32f4b42e41f637925d82992a303bf336
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
+    newTag: 405596bf32f4b42e41f637925d82992a303bf336
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9fc1b482/development/components/release/development/kustomize.out.yaml
1677c1677
<         image: quay.io/redhat-appstudio/release-service:405596bf32f4b42e41f637925d82992a303bf336
---
>         image: quay.io/redhat-appstudio/release-service:41348779fa69738f8cf36ef7a5eaa7597dcff9e1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 71864bf6 to 9fc1b482 on Tue Jan 9 17:31:32 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index aea1c701..0a1ebfcf 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 8a5340b1..9764e2f0 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 40fc3cd3..3081badb 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 26ebea82..c0024fb4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d7a5ba58..c8df7a77 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0564057c..f2b17b22 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
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
<h3>4: Staging changes from 71864bf6 to 9fc1b482 on Tue Jan 9 17:31:32 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index aea1c701..0a1ebfcf 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 8a5340b1..9764e2f0 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 40fc3cd3..3081badb 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 26ebea82..c0024fb4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d7a5ba58..c8df7a77 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0564057c..f2b17b22 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-71864bf6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1349c1349
<             memory: 128Mi
---
>             memory: 32Mi
./commit-71864bf6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1349c1349
<             memory: 128Mi
---
>             memory: 32Mi
./commit-71864bf6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1349c1349
<             memory: 128Mi
---
>             memory: 32Mi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 71864bf6 to 9fc1b482 on Tue Jan 9 17:31:32 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index aea1c701..0a1ebfcf 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 8a5340b1..9764e2f0 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 40fc3cd3..3081badb 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5f9497fa0cf3a97564684690682e5fb1a5276e88
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 26ebea82..c0024fb4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d7a5ba58..c8df7a77 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0564057c..f2b17b22 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1346,7 +1346,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-71864bf6/development/components/pipeline-service/development/kustomize.out.yaml
1325c1325
<             memory: 128Mi
---
>             memory: 32Mi 
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
```
 
</details> 
<br> 


</div>
