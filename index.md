# kustomize changes tracked by commits 
### This file generated at Wed Jan 10 12:07:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1cf8090b to ff62733e on Wed Jan 10 10:51:18 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 70800cd8..1a5c272a 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d5e8d731..01e4a16a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1323,7 +1323,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1345,7 +1345,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1392,7 +1392,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1484,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1503,7 +1504,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e282f2d8..b4970893 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1323,7 +1323,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1345,7 +1345,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1392,7 +1392,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1484,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1503,7 +1504,7 @@ spec:
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
<summary>Kustomize Generated Diff (38 lines)</summary>  

``` 
./commit-1cf8090b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1326c1326
<         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1348c1348
<             memory: 128Mi
---
>             memory: 32Mi
1395c1395
<         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1487d1486
<         - -check_owner=false
1507c1506
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
./commit-1cf8090b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1326c1326
<         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1348c1348
<             memory: 128Mi
---
>             memory: 32Mi
1395c1395
<         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
1487d1486
<         - -check_owner=false
1507c1506
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 1cf8090b to ff62733e on Wed Jan 10 10:51:18 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 70800cd8..1a5c272a 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d5e8d731..01e4a16a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1323,7 +1323,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1345,7 +1345,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1392,7 +1392,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1484,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1503,7 +1504,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e282f2d8..b4970893 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1323,7 +1323,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1345,7 +1345,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1392,7 +1392,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1484,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1503,7 +1504,7 @@ spec:
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 1cf8090b to ff62733e on Wed Jan 10 10:51:18 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 70800cd8..1a5c272a 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d5e8d731..01e4a16a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1323,7 +1323,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1345,7 +1345,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1392,7 +1392,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1484,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1503,7 +1504,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e282f2d8..b4970893 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1323,7 +1323,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1345,7 +1345,7 @@ spec:
             memory: 512Mi
           requests:
             cpu: 5m
-            memory: 32Mi
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1392,7 +1392,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
         name: migrator
         resources:
           limits:
@@ -1484,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
@@ -1503,7 +1504,7 @@ spec:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 866da8e4 to 1cf8090b on Wed Jan 10 09:56:01 2024 </h3>  
 
<details> 
<summary>Git Diff (568 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
new file mode 100644
index 00000000..14d8b7da
--- /dev/null
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -0,0 +1,30 @@
+apiVersion: tekton.dev/v1beta1
+kind: PipelineRun
+metadata:
+  name: build-service-prod-overlay-update
+  namespace: rhtap-promotion-staging
+  annotations:
+     pipelinesascode.tekton.dev/on-cel-expression: |
+      event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
+    pipelinesascode.tekton.dev/max-keep-runs: "5"
+    pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
+spec:
+  pipelineSpec:
+    tasks:
+      - name: promote-component-from-stage-to-prod
+        params:
+          - name: BRANCH_NAME
+            value: stage-to-prod-build
+          - name: COMPONENT_NAME
+            value: build-service
+          - name: SCRIPT
+            value: |
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/build-service/staging/base/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/build-service/production/base/kustomization.yaml -m1)
+              echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/build-service/production/base/kustomization.yaml
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/monitoring/grafana/base/dashboards/build-service/kustomization.yaml
+        taskRef:
+          name: promote-component
+        
+
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
new file mode 100644
index 00000000..07eb7eb5
--- /dev/null
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -0,0 +1,29 @@
+apiVersion: tekton.dev/v1beta1
+kind: PipelineRun
+metadata:
+  name: image-controller-prod-overlay-update
+  namespace: rhtap-promotion-staging
+  annotations:
+     pipelinesascode.tekton.dev/on-cel-expression: |
+      event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
+    pipelinesascode.tekton.dev/max-keep-runs: "5"
+    pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
+spec:
+  pipelineSpec:
+    tasks:
+      - name: promote-component-from-stage-to-prod
+        params:
+          - name: BRANCH_NAME
+            value: stage-to-prod-image-controller
+          - name: COMPONENT_NAME
+            value: image-controller
+          - name: SCRIPT
+            value: |
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/kustomization.yaml -m1)
+              echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
+        taskRef:
+          name: promote-component
+        
+
diff --git a/.tekton/tasks/promote-component.yaml b/.tekton/tasks/promote-component.yaml
new file mode 100644
index 00000000..37fec1e6
--- /dev/null
+++ b/.tekton/tasks/promote-component.yaml
@@ -0,0 +1,263 @@
+apiVersion: tekton.dev/v1
+kind: Task
+metadata:
+  labels:
+    app.kubernetes.io/version: "0.1"
+  annotations:
+    tekton.dev/pipelines.minVersion: "0.12.1"
+    tekton.dev/tags: "appstudio, hacbs"
+  name: promote-component
+spec:
+  description: |
+    Clones redhat-appstudio/infra-deployments repository, runs script in 'SCRIPT' parameter, generates pull-request for redhat-appstudio/infra-deployments repository.
+  params:
+    - name: SCRIPT
+      description: Bash script for changing the infra-deployments
+    - name: BRANCH_NAME
+      description: Source branch in infra-deployment repo
+    - name: COMPONENT_NAME
+      description: Component to promote
+    - name: GH_REPO
+      description: GitHub repository of the infra-deployments code
+      default: redhat-appstudio/infra-deployments
+    - name: IMAGE
+      description: Image reference containing git and other utility required for executing the SCRIPT
+       # this image is built using https://github.com/redhat-appstudio/build-tasks-dockerfiles/blob/main/update-infra-deployments-task-scripts-image/Dockerfile
+      default: quay.io/redhat-appstudio/update-infra-deployments-task-script-image@sha256:2748f1a4f1af4e35214745aed4e56a9d06f6bdbd30572e7ade13729e67f23cc9
+    - name: shared-secret
+      default: infra-deployments-pr-creator
+      description: secret in the namespace which contains private key for the GitHub App
+    - name: GITHUB_APP_ID
+      description: ID of Github app used for updating PR
+      default: "305606"
+    - name: GITHUB_APP_INSTALLATION_ID
+      description: Installation ID of Github app in the organization
+      default: "35269675"
+  volumes:
+    - name: infra-deployments-pr-creator
+      secret:
+        # 'private-key' - private key for Github app
+        secretName: $(params.shared-secret)
+    - name: shared-dir
+      emptyDir: {}
+
+  steps:
+    - name: git-clone-infra-deployments
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: GH_REPO
+          value: "$(params.GH_REPO)"
+      script: |
+        git clone "https://github.com/${GH_REPO}.git" cloned
+    - name: run-update-script
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: SCRIPT
+          value: $(params.SCRIPT)
+      script: |
+        cd cloned
+        echo "$SCRIPT" | sh
+    - name: get-diff-files
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      script: |
+        cd cloned
+        git status -s --porcelain | cut -c4- > ../updated_files.txt
+    # Based on https://github.com/tektoncd/catalog/tree/main/task/github-app-token/0.2/
+    - name: create-mr
+      image: quay.io/redhat-appstudio/github-app-token@sha256:b4f2af12e9beea68055995ccdbdb86cfe1be97688c618117e5da2243dc1da18e
+      # per https://kubernetes.io/docs/concepts/containers/images/#imagepullpolicy-defaulting
+      # the cluster will set imagePullPolicy to IfNotPresent
+      # also per direction from Ralph Bean, we want to use image digest based tags to use a cue to automation like dependabot or renovatebot to periodially submit pull requests that update the digest as new images are released.
+      volumeMounts:
+        - name: infra-deployments-pr-creator
+          mountPath: /secrets/deploy-key
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: GITHUBAPP_KEY_PATH
+          value: /secrets/deploy-key/private-key
+        - name: GITHUBAPP_APP_ID
+          value: "$(params.GITHUB_APP_ID)"
+        - name: GITHUBAPP_INSTALLATION_ID
+          value: "$(params.GITHUB_APP_INSTALLATION_ID)"
+        - name: GITHUB_API_URL
+          value: https://api.github.com
+        - name: BRANCH_NAME
+          value: $(params.BRANCH_NAME)
+        - name: GH_REPO
+          value: "$(params.GH_REPO)"
+        - name: COMPONENT_NAME
+          value: "$(params.COMPONENT_NAME)"
+      script: |
+        #!/usr/bin/env python3
+        import json
+        import logging
+        import os
+        import time
+        import base64
+
+        import requests
+        from jwcrypto import jwk, jwt
+
+        logging.basicConfig(level=logging.DEBUG, format="%(asctime)s:%(name)s:%(levelname)s:%(message)s")
+        logger = logging.getLogger("updater")
+
+        EXPIRE_MINUTES_AS_SECONDS = int(os.environ.get('GITHUBAPP_TOKEN_EXPIRATION_MINUTES', 10)) * 60
+        # TODO support github enteprise
+        GITHUB_API_URL = os.environ["GITHUB_API_URL"]
+
+        BRANCH_NAME = os.environ["BRANCH_NAME"]
+        GH_REPO = os.environ["GH_REPO"]
+        COMPONENT_NAME = os.environ["COMPONENT_NAME"]
+
+
+        class GitHub():
+            token = None
+
+            def __init__(self, private_key, app_id=None, installation_id=None):
+                if not isinstance(private_key, bytes):
+                    raise ValueError(f'"{private_key}" parameter must be byte-string')
+                self._private_key = private_key
+                self.app_id = app_id
+                self.token = self._get_token(installation_id)
+
+            def _load_private_key(self, pem_key_bytes):
+                return jwk.JWK.from_pem(pem_key_bytes)
+
+            def _app_token(self, expire_in=EXPIRE_MINUTES_AS_SECONDS):
+                key = self._load_private_key(self._private_key)
+                now = int(time.time())
+                token = jwt.JWT(
+                    header={"alg": "RS256"},
+                    claims={
+                        "iat": now,
+                        "exp": now + expire_in,
+                        "iss": self.app_id
+                    },
+                    algs=["RS256"],
+                )
+                token.make_signed_token(key)
+                return token.serialize()
+
+            def _get_token(self, installation_id=None):
+                app_token = self._app_token()
+                if not installation_id:
+                    return app_token
+
+                req = self._request(
+                    "POST",
+                    f"/app/installations/{installation_id}/access_tokens",
+                    headers={
+                        "Authorization": f"Bearer {app_token}",
+                        "Accept": "application/vnd.github.machine-man-preview+json"
+                    })
+
+                ret = req.json()
+                if 'token' not in ret:
+                    raise Exception(f"Authentication errors: {ret}")
+
+                return ret['token']
+
+            def _request(self, method, url, headers={}, data={}):
+                if self.token and 'Authorization' not in headers:
+                    headers.update({"Authorization": "Bearer " + self.token})
+                if not url.startswith("http"):
+                    url = f"{GITHUB_API_URL}{url}"
+                return requests.request(method,
+                                        url,
+                                        headers=headers,
+                                        data=json.dumps(data))
+
+            def create_mr(self, title, description):
+                logger.info("Create/update pull request, head: %s, base: main", BRANCH_NAME)
+                req = self._request(
+                    "POST",
+                    f"/repos/{GH_REPO}/pulls",
+                    headers={
+                        "Authorization": f"Bearer {self.token}",
+                        "Accept": "application/vnd.github.v3+json"
+                    },
+                    data={
+                        "head": BRANCH_NAME,
+                        "base": "main",
+                        "title": title,
+                        "body": description,
+                        "maintainer_can_modify": False
+                    })
+                json_output = req.json()
+                print(json_output)
+                return json_output
+
+            def create_reset_branch(self):
+                target_branch = self._request("GET", f"/repos/{GH_REPO}/git/refs/heads/{BRANCH_NAME}").json()
+                main_branch_sha = self._request("GET", f"/repos/{GH_REPO}/git/refs/heads/main").json()['object']['sha']
+                if "ref" in target_branch:
+                    logger.info("Update branch %s", BRANCH_NAME)
+                    self._request(
+                        "PATCH",
+                        f"/repos/{GH_REPO}/git/refs/heads/{BRANCH_NAME}",
+                        data={"sha": main_branch_sha, "force": True}
+                    )
+                else:
+                    logger.info("Create branch %s", BRANCH_NAME)
+                    self._request(
+                        "POST",
+                        f"/repos/{GH_REPO}/git/refs",
+                        data={"sha": main_branch_sha, "ref": f"refs/heads/{BRANCH_NAME}"}
+                    )
+
+            def upload_content(self):
+                for file in open('updated_files.txt').readlines():
+                    file = file.strip()
+                    with open(f"cloned/{file}", "rb") as fd:
+                        encoded_string = base64.b64encode(fd.read()).decode("utf-8")
+                    old_sha = self._request("GET", f'/repos/{GH_REPO}/contents/{file}').json().get("sha")
+                    if old_sha is None:
+                        logger.info("Upload a new file %s", file)
+                        self._request("PUT", f'/repos/{GH_REPO}/contents/{file}', data={"message": f"update {file}", "branch": BRANCH_NAME, "content": encoded_string})
+                    else:
+                        logger.info("Update file %s", file)
+                        self._request("PUT", f'/repos/{GH_REPO}/contents/{file}', data={"message": f"update {file}", "branch": BRANCH_NAME, "content": encoded_string, "sha": old_sha})
+
+
+        def main():
+            with open(os.environ['GITHUBAPP_KEY_PATH'], 'rb') as key_file:
+                key = key_file.read()
+
+            if os.environ.get('GITHUBAPP_APP_ID'):
+                app_id = os.environ['GITHUBAPP_APP_ID']
+            else:
+                raise Exception("application id is not set")
+
+            print(f"Getting user token for application_id: {app_id}")
+            github_app = GitHub(
+                key,
+                app_id=app_id,
+                installation_id=os.environ.get('GITHUBAPP_INSTALLATION_ID'))
+
+            github_app.create_reset_branch()
+            github_app.upload_content()
+            title = f"Promoting component {COMPONENT_NAME} from stage to prod"
+            description = f"Promote from stage to production"
+            github_app.create_mr(title, description)
+
+        if __name__ == '__main__':
+            main()
+
+  workspaces:
+    - name: artifacts
+      description: Workspace containing arbitrary artifacts used during the task run.
+      optional: true
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 25ab2b3a..fd2f5a3b 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,5 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
 - build-pipeline-selectors/build-pipeline-selector.yaml
 - monitoring.yaml
 - rbac
@@ -11,12 +10,5 @@ resources:
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
-namespace: build-service
-
-images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
-
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 33253d7f..ad662a9c 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,6 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 patches:
   - target:
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b044ae23..f2412af5 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,6 +3,18 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
 patches:
   - path: pipelines-as-code-secret-patch.yaml
     target:
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 895e4590..02af01c9 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,3 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 34307a40..303e846d 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,18 +1,9 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
 - rbac
 
-images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
-
 namespace: image-controller
 
-patches:
-  - path: ./manager_resources_patch.yaml
-
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a22b7f76..a4c51bcc 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,8 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
 
 patches:
+  - path: ./manager_resources_patch.yaml
   - target:
       group: apps
       version: v1
diff --git a/components/image-controller/base/manager_resources_patch.yaml b/components/image-controller/development/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/base/manager_resources_patch.yaml
rename to components/image-controller/development/manager_resources_patch.yaml
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 81fb17a5..30d19f15 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,7 +3,17 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
+
 patches:
+  - path: ./manager_resources_patch.yaml
   - path: quaytoken.yaml
     target:
       name: quaytoken
diff --git a/components/image-controller/production/manager_resources_patch.yaml b/components/image-controller/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..972112ef
--- /dev/null
+++ b/components/image-controller/production/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
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
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
+
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 479bc600..c747c0f7 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,3 +3,14 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
+
+patches:
+  - path: ./manager_resources_patch.yaml
\ No newline at end of file
diff --git a/components/image-controller/staging/manager_resources_patch.yaml b/components/image-controller/staging/manager_resources_patch.yaml
new file mode 100644
index 00000000..972112ef
--- /dev/null
+++ b/components/image-controller/staging/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
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
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 866da8e4 to 1cf8090b on Wed Jan 10 09:56:01 2024 </h3>  
 
<details> 
<summary>Git Diff (568 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
new file mode 100644
index 00000000..14d8b7da
--- /dev/null
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -0,0 +1,30 @@
+apiVersion: tekton.dev/v1beta1
+kind: PipelineRun
+metadata:
+  name: build-service-prod-overlay-update
+  namespace: rhtap-promotion-staging
+  annotations:
+     pipelinesascode.tekton.dev/on-cel-expression: |
+      event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
+    pipelinesascode.tekton.dev/max-keep-runs: "5"
+    pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
+spec:
+  pipelineSpec:
+    tasks:
+      - name: promote-component-from-stage-to-prod
+        params:
+          - name: BRANCH_NAME
+            value: stage-to-prod-build
+          - name: COMPONENT_NAME
+            value: build-service
+          - name: SCRIPT
+            value: |
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/build-service/staging/base/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/build-service/production/base/kustomization.yaml -m1)
+              echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/build-service/production/base/kustomization.yaml
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/monitoring/grafana/base/dashboards/build-service/kustomization.yaml
+        taskRef:
+          name: promote-component
+        
+
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
new file mode 100644
index 00000000..07eb7eb5
--- /dev/null
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -0,0 +1,29 @@
+apiVersion: tekton.dev/v1beta1
+kind: PipelineRun
+metadata:
+  name: image-controller-prod-overlay-update
+  namespace: rhtap-promotion-staging
+  annotations:
+     pipelinesascode.tekton.dev/on-cel-expression: |
+      event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
+    pipelinesascode.tekton.dev/max-keep-runs: "5"
+    pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
+spec:
+  pipelineSpec:
+    tasks:
+      - name: promote-component-from-stage-to-prod
+        params:
+          - name: BRANCH_NAME
+            value: stage-to-prod-image-controller
+          - name: COMPONENT_NAME
+            value: image-controller
+          - name: SCRIPT
+            value: |
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/kustomization.yaml -m1)
+              echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
+        taskRef:
+          name: promote-component
+        
+
diff --git a/.tekton/tasks/promote-component.yaml b/.tekton/tasks/promote-component.yaml
new file mode 100644
index 00000000..37fec1e6
--- /dev/null
+++ b/.tekton/tasks/promote-component.yaml
@@ -0,0 +1,263 @@
+apiVersion: tekton.dev/v1
+kind: Task
+metadata:
+  labels:
+    app.kubernetes.io/version: "0.1"
+  annotations:
+    tekton.dev/pipelines.minVersion: "0.12.1"
+    tekton.dev/tags: "appstudio, hacbs"
+  name: promote-component
+spec:
+  description: |
+    Clones redhat-appstudio/infra-deployments repository, runs script in 'SCRIPT' parameter, generates pull-request for redhat-appstudio/infra-deployments repository.
+  params:
+    - name: SCRIPT
+      description: Bash script for changing the infra-deployments
+    - name: BRANCH_NAME
+      description: Source branch in infra-deployment repo
+    - name: COMPONENT_NAME
+      description: Component to promote
+    - name: GH_REPO
+      description: GitHub repository of the infra-deployments code
+      default: redhat-appstudio/infra-deployments
+    - name: IMAGE
+      description: Image reference containing git and other utility required for executing the SCRIPT
+       # this image is built using https://github.com/redhat-appstudio/build-tasks-dockerfiles/blob/main/update-infra-deployments-task-scripts-image/Dockerfile
+      default: quay.io/redhat-appstudio/update-infra-deployments-task-script-image@sha256:2748f1a4f1af4e35214745aed4e56a9d06f6bdbd30572e7ade13729e67f23cc9
+    - name: shared-secret
+      default: infra-deployments-pr-creator
+      description: secret in the namespace which contains private key for the GitHub App
+    - name: GITHUB_APP_ID
+      description: ID of Github app used for updating PR
+      default: "305606"
+    - name: GITHUB_APP_INSTALLATION_ID
+      description: Installation ID of Github app in the organization
+      default: "35269675"
+  volumes:
+    - name: infra-deployments-pr-creator
+      secret:
+        # 'private-key' - private key for Github app
+        secretName: $(params.shared-secret)
+    - name: shared-dir
+      emptyDir: {}
+
+  steps:
+    - name: git-clone-infra-deployments
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: GH_REPO
+          value: "$(params.GH_REPO)"
+      script: |
+        git clone "https://github.com/${GH_REPO}.git" cloned
+    - name: run-update-script
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: SCRIPT
+          value: $(params.SCRIPT)
+      script: |
+        cd cloned
+        echo "$SCRIPT" | sh
+    - name: get-diff-files
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      script: |
+        cd cloned
+        git status -s --porcelain | cut -c4- > ../updated_files.txt
+    # Based on https://github.com/tektoncd/catalog/tree/main/task/github-app-token/0.2/
+    - name: create-mr
+      image: quay.io/redhat-appstudio/github-app-token@sha256:b4f2af12e9beea68055995ccdbdb86cfe1be97688c618117e5da2243dc1da18e
+      # per https://kubernetes.io/docs/concepts/containers/images/#imagepullpolicy-defaulting
+      # the cluster will set imagePullPolicy to IfNotPresent
+      # also per direction from Ralph Bean, we want to use image digest based tags to use a cue to automation like dependabot or renovatebot to periodially submit pull requests that update the digest as new images are released.
+      volumeMounts:
+        - name: infra-deployments-pr-creator
+          mountPath: /secrets/deploy-key
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: GITHUBAPP_KEY_PATH
+          value: /secrets/deploy-key/private-key
+        - name: GITHUBAPP_APP_ID
+          value: "$(params.GITHUB_APP_ID)"
+        - name: GITHUBAPP_INSTALLATION_ID
+          value: "$(params.GITHUB_APP_INSTALLATION_ID)"
+        - name: GITHUB_API_URL
+          value: https://api.github.com
+        - name: BRANCH_NAME
+          value: $(params.BRANCH_NAME)
+        - name: GH_REPO
+          value: "$(params.GH_REPO)"
+        - name: COMPONENT_NAME
+          value: "$(params.COMPONENT_NAME)"
+      script: |
+        #!/usr/bin/env python3
+        import json
+        import logging
+        import os
+        import time
+        import base64
+
+        import requests
+        from jwcrypto import jwk, jwt
+
+        logging.basicConfig(level=logging.DEBUG, format="%(asctime)s:%(name)s:%(levelname)s:%(message)s")
+        logger = logging.getLogger("updater")
+
+        EXPIRE_MINUTES_AS_SECONDS = int(os.environ.get('GITHUBAPP_TOKEN_EXPIRATION_MINUTES', 10)) * 60
+        # TODO support github enteprise
+        GITHUB_API_URL = os.environ["GITHUB_API_URL"]
+
+        BRANCH_NAME = os.environ["BRANCH_NAME"]
+        GH_REPO = os.environ["GH_REPO"]
+        COMPONENT_NAME = os.environ["COMPONENT_NAME"]
+
+
+        class GitHub():
+            token = None
+
+            def __init__(self, private_key, app_id=None, installation_id=None):
+                if not isinstance(private_key, bytes):
+                    raise ValueError(f'"{private_key}" parameter must be byte-string')
+                self._private_key = private_key
+                self.app_id = app_id
+                self.token = self._get_token(installation_id)
+
+            def _load_private_key(self, pem_key_bytes):
+                return jwk.JWK.from_pem(pem_key_bytes)
+
+            def _app_token(self, expire_in=EXPIRE_MINUTES_AS_SECONDS):
+                key = self._load_private_key(self._private_key)
+                now = int(time.time())
+                token = jwt.JWT(
+                    header={"alg": "RS256"},
+                    claims={
+                        "iat": now,
+                        "exp": now + expire_in,
+                        "iss": self.app_id
+                    },
+                    algs=["RS256"],
+                )
+                token.make_signed_token(key)
+                return token.serialize()
+
+            def _get_token(self, installation_id=None):
+                app_token = self._app_token()
+                if not installation_id:
+                    return app_token
+
+                req = self._request(
+                    "POST",
+                    f"/app/installations/{installation_id}/access_tokens",
+                    headers={
+                        "Authorization": f"Bearer {app_token}",
+                        "Accept": "application/vnd.github.machine-man-preview+json"
+                    })
+
+                ret = req.json()
+                if 'token' not in ret:
+                    raise Exception(f"Authentication errors: {ret}")
+
+                return ret['token']
+
+            def _request(self, method, url, headers={}, data={}):
+                if self.token and 'Authorization' not in headers:
+                    headers.update({"Authorization": "Bearer " + self.token})
+                if not url.startswith("http"):
+                    url = f"{GITHUB_API_URL}{url}"
+                return requests.request(method,
+                                        url,
+                                        headers=headers,
+                                        data=json.dumps(data))
+
+            def create_mr(self, title, description):
+                logger.info("Create/update pull request, head: %s, base: main", BRANCH_NAME)
+                req = self._request(
+                    "POST",
+                    f"/repos/{GH_REPO}/pulls",
+                    headers={
+                        "Authorization": f"Bearer {self.token}",
+                        "Accept": "application/vnd.github.v3+json"
+                    },
+                    data={
+                        "head": BRANCH_NAME,
+                        "base": "main",
+                        "title": title,
+                        "body": description,
+                        "maintainer_can_modify": False
+                    })
+                json_output = req.json()
+                print(json_output)
+                return json_output
+
+            def create_reset_branch(self):
+                target_branch = self._request("GET", f"/repos/{GH_REPO}/git/refs/heads/{BRANCH_NAME}").json()
+                main_branch_sha = self._request("GET", f"/repos/{GH_REPO}/git/refs/heads/main").json()['object']['sha']
+                if "ref" in target_branch:
+                    logger.info("Update branch %s", BRANCH_NAME)
+                    self._request(
+                        "PATCH",
+                        f"/repos/{GH_REPO}/git/refs/heads/{BRANCH_NAME}",
+                        data={"sha": main_branch_sha, "force": True}
+                    )
+                else:
+                    logger.info("Create branch %s", BRANCH_NAME)
+                    self._request(
+                        "POST",
+                        f"/repos/{GH_REPO}/git/refs",
+                        data={"sha": main_branch_sha, "ref": f"refs/heads/{BRANCH_NAME}"}
+                    )
+
+            def upload_content(self):
+                for file in open('updated_files.txt').readlines():
+                    file = file.strip()
+                    with open(f"cloned/{file}", "rb") as fd:
+                        encoded_string = base64.b64encode(fd.read()).decode("utf-8")
+                    old_sha = self._request("GET", f'/repos/{GH_REPO}/contents/{file}').json().get("sha")
+                    if old_sha is None:
+                        logger.info("Upload a new file %s", file)
+                        self._request("PUT", f'/repos/{GH_REPO}/contents/{file}', data={"message": f"update {file}", "branch": BRANCH_NAME, "content": encoded_string})
+                    else:
+                        logger.info("Update file %s", file)
+                        self._request("PUT", f'/repos/{GH_REPO}/contents/{file}', data={"message": f"update {file}", "branch": BRANCH_NAME, "content": encoded_string, "sha": old_sha})
+
+
+        def main():
+            with open(os.environ['GITHUBAPP_KEY_PATH'], 'rb') as key_file:
+                key = key_file.read()
+
+            if os.environ.get('GITHUBAPP_APP_ID'):
+                app_id = os.environ['GITHUBAPP_APP_ID']
+            else:
+                raise Exception("application id is not set")
+
+            print(f"Getting user token for application_id: {app_id}")
+            github_app = GitHub(
+                key,
+                app_id=app_id,
+                installation_id=os.environ.get('GITHUBAPP_INSTALLATION_ID'))
+
+            github_app.create_reset_branch()
+            github_app.upload_content()
+            title = f"Promoting component {COMPONENT_NAME} from stage to prod"
+            description = f"Promote from stage to production"
+            github_app.create_mr(title, description)
+
+        if __name__ == '__main__':
+            main()
+
+  workspaces:
+    - name: artifacts
+      description: Workspace containing arbitrary artifacts used during the task run.
+      optional: true
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 25ab2b3a..fd2f5a3b 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,5 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
 - build-pipeline-selectors/build-pipeline-selector.yaml
 - monitoring.yaml
 - rbac
@@ -11,12 +10,5 @@ resources:
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
-namespace: build-service
-
-images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
-
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 33253d7f..ad662a9c 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,6 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 patches:
   - target:
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b044ae23..f2412af5 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,6 +3,18 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
 patches:
   - path: pipelines-as-code-secret-patch.yaml
     target:
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 895e4590..02af01c9 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,3 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 34307a40..303e846d 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,18 +1,9 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
 - rbac
 
-images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
-
 namespace: image-controller
 
-patches:
-  - path: ./manager_resources_patch.yaml
-
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a22b7f76..a4c51bcc 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,8 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
 
 patches:
+  - path: ./manager_resources_patch.yaml
   - target:
       group: apps
       version: v1
diff --git a/components/image-controller/base/manager_resources_patch.yaml b/components/image-controller/development/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/base/manager_resources_patch.yaml
rename to components/image-controller/development/manager_resources_patch.yaml
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 81fb17a5..30d19f15 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,7 +3,17 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
+
 patches:
+  - path: ./manager_resources_patch.yaml
   - path: quaytoken.yaml
     target:
       name: quaytoken
diff --git a/components/image-controller/production/manager_resources_patch.yaml b/components/image-controller/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..972112ef
--- /dev/null
+++ b/components/image-controller/production/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
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
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
+
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 479bc600..c747c0f7 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,3 +3,14 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
+
+patches:
+  - path: ./manager_resources_patch.yaml
\ No newline at end of file
diff --git a/components/image-controller/staging/manager_resources_patch.yaml b/components/image-controller/staging/manager_resources_patch.yaml
new file mode 100644
index 00000000..972112ef
--- /dev/null
+++ b/components/image-controller/staging/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
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
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 866da8e4 to 1cf8090b on Wed Jan 10 09:56:01 2024 </h3>  
 
<details> 
<summary>Git Diff (568 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
new file mode 100644
index 00000000..14d8b7da
--- /dev/null
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -0,0 +1,30 @@
+apiVersion: tekton.dev/v1beta1
+kind: PipelineRun
+metadata:
+  name: build-service-prod-overlay-update
+  namespace: rhtap-promotion-staging
+  annotations:
+     pipelinesascode.tekton.dev/on-cel-expression: |
+      event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
+    pipelinesascode.tekton.dev/max-keep-runs: "5"
+    pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
+spec:
+  pipelineSpec:
+    tasks:
+      - name: promote-component-from-stage-to-prod
+        params:
+          - name: BRANCH_NAME
+            value: stage-to-prod-build
+          - name: COMPONENT_NAME
+            value: build-service
+          - name: SCRIPT
+            value: |
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/build-service/staging/base/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/build-service/production/base/kustomization.yaml -m1)
+              echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/build-service/production/base/kustomization.yaml
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/monitoring/grafana/base/dashboards/build-service/kustomization.yaml
+        taskRef:
+          name: promote-component
+        
+
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
new file mode 100644
index 00000000..07eb7eb5
--- /dev/null
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -0,0 +1,29 @@
+apiVersion: tekton.dev/v1beta1
+kind: PipelineRun
+metadata:
+  name: image-controller-prod-overlay-update
+  namespace: rhtap-promotion-staging
+  annotations:
+     pipelinesascode.tekton.dev/on-cel-expression: |
+      event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
+    pipelinesascode.tekton.dev/max-keep-runs: "5"
+    pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
+spec:
+  pipelineSpec:
+    tasks:
+      - name: promote-component-from-stage-to-prod
+        params:
+          - name: BRANCH_NAME
+            value: stage-to-prod-image-controller
+          - name: COMPONENT_NAME
+            value: image-controller
+          - name: SCRIPT
+            value: |
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/kustomization.yaml -m1)
+              echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
+        taskRef:
+          name: promote-component
+        
+
diff --git a/.tekton/tasks/promote-component.yaml b/.tekton/tasks/promote-component.yaml
new file mode 100644
index 00000000..37fec1e6
--- /dev/null
+++ b/.tekton/tasks/promote-component.yaml
@@ -0,0 +1,263 @@
+apiVersion: tekton.dev/v1
+kind: Task
+metadata:
+  labels:
+    app.kubernetes.io/version: "0.1"
+  annotations:
+    tekton.dev/pipelines.minVersion: "0.12.1"
+    tekton.dev/tags: "appstudio, hacbs"
+  name: promote-component
+spec:
+  description: |
+    Clones redhat-appstudio/infra-deployments repository, runs script in 'SCRIPT' parameter, generates pull-request for redhat-appstudio/infra-deployments repository.
+  params:
+    - name: SCRIPT
+      description: Bash script for changing the infra-deployments
+    - name: BRANCH_NAME
+      description: Source branch in infra-deployment repo
+    - name: COMPONENT_NAME
+      description: Component to promote
+    - name: GH_REPO
+      description: GitHub repository of the infra-deployments code
+      default: redhat-appstudio/infra-deployments
+    - name: IMAGE
+      description: Image reference containing git and other utility required for executing the SCRIPT
+       # this image is built using https://github.com/redhat-appstudio/build-tasks-dockerfiles/blob/main/update-infra-deployments-task-scripts-image/Dockerfile
+      default: quay.io/redhat-appstudio/update-infra-deployments-task-script-image@sha256:2748f1a4f1af4e35214745aed4e56a9d06f6bdbd30572e7ade13729e67f23cc9
+    - name: shared-secret
+      default: infra-deployments-pr-creator
+      description: secret in the namespace which contains private key for the GitHub App
+    - name: GITHUB_APP_ID
+      description: ID of Github app used for updating PR
+      default: "305606"
+    - name: GITHUB_APP_INSTALLATION_ID
+      description: Installation ID of Github app in the organization
+      default: "35269675"
+  volumes:
+    - name: infra-deployments-pr-creator
+      secret:
+        # 'private-key' - private key for Github app
+        secretName: $(params.shared-secret)
+    - name: shared-dir
+      emptyDir: {}
+
+  steps:
+    - name: git-clone-infra-deployments
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: GH_REPO
+          value: "$(params.GH_REPO)"
+      script: |
+        git clone "https://github.com/${GH_REPO}.git" cloned
+    - name: run-update-script
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: SCRIPT
+          value: $(params.SCRIPT)
+      script: |
+        cd cloned
+        echo "$SCRIPT" | sh
+    - name: get-diff-files
+      image: $(params.IMAGE)
+      volumeMounts:
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      script: |
+        cd cloned
+        git status -s --porcelain | cut -c4- > ../updated_files.txt
+    # Based on https://github.com/tektoncd/catalog/tree/main/task/github-app-token/0.2/
+    - name: create-mr
+      image: quay.io/redhat-appstudio/github-app-token@sha256:b4f2af12e9beea68055995ccdbdb86cfe1be97688c618117e5da2243dc1da18e
+      # per https://kubernetes.io/docs/concepts/containers/images/#imagepullpolicy-defaulting
+      # the cluster will set imagePullPolicy to IfNotPresent
+      # also per direction from Ralph Bean, we want to use image digest based tags to use a cue to automation like dependabot or renovatebot to periodially submit pull requests that update the digest as new images are released.
+      volumeMounts:
+        - name: infra-deployments-pr-creator
+          mountPath: /secrets/deploy-key
+        - name: shared-dir
+          mountPath: /shared
+      workingDir: /shared
+      env:
+        - name: GITHUBAPP_KEY_PATH
+          value: /secrets/deploy-key/private-key
+        - name: GITHUBAPP_APP_ID
+          value: "$(params.GITHUB_APP_ID)"
+        - name: GITHUBAPP_INSTALLATION_ID
+          value: "$(params.GITHUB_APP_INSTALLATION_ID)"
+        - name: GITHUB_API_URL
+          value: https://api.github.com
+        - name: BRANCH_NAME
+          value: $(params.BRANCH_NAME)
+        - name: GH_REPO
+          value: "$(params.GH_REPO)"
+        - name: COMPONENT_NAME
+          value: "$(params.COMPONENT_NAME)"
+      script: |
+        #!/usr/bin/env python3
+        import json
+        import logging
+        import os
+        import time
+        import base64
+
+        import requests
+        from jwcrypto import jwk, jwt
+
+        logging.basicConfig(level=logging.DEBUG, format="%(asctime)s:%(name)s:%(levelname)s:%(message)s")
+        logger = logging.getLogger("updater")
+
+        EXPIRE_MINUTES_AS_SECONDS = int(os.environ.get('GITHUBAPP_TOKEN_EXPIRATION_MINUTES', 10)) * 60
+        # TODO support github enteprise
+        GITHUB_API_URL = os.environ["GITHUB_API_URL"]
+
+        BRANCH_NAME = os.environ["BRANCH_NAME"]
+        GH_REPO = os.environ["GH_REPO"]
+        COMPONENT_NAME = os.environ["COMPONENT_NAME"]
+
+
+        class GitHub():
+            token = None
+
+            def __init__(self, private_key, app_id=None, installation_id=None):
+                if not isinstance(private_key, bytes):
+                    raise ValueError(f'"{private_key}" parameter must be byte-string')
+                self._private_key = private_key
+                self.app_id = app_id
+                self.token = self._get_token(installation_id)
+
+            def _load_private_key(self, pem_key_bytes):
+                return jwk.JWK.from_pem(pem_key_bytes)
+
+            def _app_token(self, expire_in=EXPIRE_MINUTES_AS_SECONDS):
+                key = self._load_private_key(self._private_key)
+                now = int(time.time())
+                token = jwt.JWT(
+                    header={"alg": "RS256"},
+                    claims={
+                        "iat": now,
+                        "exp": now + expire_in,
+                        "iss": self.app_id
+                    },
+                    algs=["RS256"],
+                )
+                token.make_signed_token(key)
+                return token.serialize()
+
+            def _get_token(self, installation_id=None):
+                app_token = self._app_token()
+                if not installation_id:
+                    return app_token
+
+                req = self._request(
+                    "POST",
+                    f"/app/installations/{installation_id}/access_tokens",
+                    headers={
+                        "Authorization": f"Bearer {app_token}",
+                        "Accept": "application/vnd.github.machine-man-preview+json"
+                    })
+
+                ret = req.json()
+                if 'token' not in ret:
+                    raise Exception(f"Authentication errors: {ret}")
+
+                return ret['token']
+
+            def _request(self, method, url, headers={}, data={}):
+                if self.token and 'Authorization' not in headers:
+                    headers.update({"Authorization": "Bearer " + self.token})
+                if not url.startswith("http"):
+                    url = f"{GITHUB_API_URL}{url}"
+                return requests.request(method,
+                                        url,
+                                        headers=headers,
+                                        data=json.dumps(data))
+
+            def create_mr(self, title, description):
+                logger.info("Create/update pull request, head: %s, base: main", BRANCH_NAME)
+                req = self._request(
+                    "POST",
+                    f"/repos/{GH_REPO}/pulls",
+                    headers={
+                        "Authorization": f"Bearer {self.token}",
+                        "Accept": "application/vnd.github.v3+json"
+                    },
+                    data={
+                        "head": BRANCH_NAME,
+                        "base": "main",
+                        "title": title,
+                        "body": description,
+                        "maintainer_can_modify": False
+                    })
+                json_output = req.json()
+                print(json_output)
+                return json_output
+
+            def create_reset_branch(self):
+                target_branch = self._request("GET", f"/repos/{GH_REPO}/git/refs/heads/{BRANCH_NAME}").json()
+                main_branch_sha = self._request("GET", f"/repos/{GH_REPO}/git/refs/heads/main").json()['object']['sha']
+                if "ref" in target_branch:
+                    logger.info("Update branch %s", BRANCH_NAME)
+                    self._request(
+                        "PATCH",
+                        f"/repos/{GH_REPO}/git/refs/heads/{BRANCH_NAME}",
+                        data={"sha": main_branch_sha, "force": True}
+                    )
+                else:
+                    logger.info("Create branch %s", BRANCH_NAME)
+                    self._request(
+                        "POST",
+                        f"/repos/{GH_REPO}/git/refs",
+                        data={"sha": main_branch_sha, "ref": f"refs/heads/{BRANCH_NAME}"}
+                    )
+
+            def upload_content(self):
+                for file in open('updated_files.txt').readlines():
+                    file = file.strip()
+                    with open(f"cloned/{file}", "rb") as fd:
+                        encoded_string = base64.b64encode(fd.read()).decode("utf-8")
+                    old_sha = self._request("GET", f'/repos/{GH_REPO}/contents/{file}').json().get("sha")
+                    if old_sha is None:
+                        logger.info("Upload a new file %s", file)
+                        self._request("PUT", f'/repos/{GH_REPO}/contents/{file}', data={"message": f"update {file}", "branch": BRANCH_NAME, "content": encoded_string})
+                    else:
+                        logger.info("Update file %s", file)
+                        self._request("PUT", f'/repos/{GH_REPO}/contents/{file}', data={"message": f"update {file}", "branch": BRANCH_NAME, "content": encoded_string, "sha": old_sha})
+
+
+        def main():
+            with open(os.environ['GITHUBAPP_KEY_PATH'], 'rb') as key_file:
+                key = key_file.read()
+
+            if os.environ.get('GITHUBAPP_APP_ID'):
+                app_id = os.environ['GITHUBAPP_APP_ID']
+            else:
+                raise Exception("application id is not set")
+
+            print(f"Getting user token for application_id: {app_id}")
+            github_app = GitHub(
+                key,
+                app_id=app_id,
+                installation_id=os.environ.get('GITHUBAPP_INSTALLATION_ID'))
+
+            github_app.create_reset_branch()
+            github_app.upload_content()
+            title = f"Promoting component {COMPONENT_NAME} from stage to prod"
+            description = f"Promote from stage to production"
+            github_app.create_mr(title, description)
+
+        if __name__ == '__main__':
+            main()
+
+  workspaces:
+    - name: artifacts
+      description: Workspace containing arbitrary artifacts used during the task run.
+      optional: true
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 25ab2b3a..fd2f5a3b 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,5 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
 - build-pipeline-selectors/build-pipeline-selector.yaml
 - monitoring.yaml
 - rbac
@@ -11,12 +10,5 @@ resources:
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
-namespace: build-service
-
-images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
-
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 33253d7f..ad662a9c 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,6 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 patches:
   - target:
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b044ae23..f2412af5 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,6 +3,18 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
 patches:
   - path: pipelines-as-code-secret-patch.yaml
     target:
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 895e4590..02af01c9 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,3 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
+- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+namespace: build-service
+
+images:
+- name: quay.io/redhat-appstudio/build-service
+  newName: quay.io/redhat-appstudio/build-service
+  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 34307a40..303e846d 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,18 +1,9 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
 - rbac
 
-images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
-
 namespace: image-controller
 
-patches:
-  - path: ./manager_resources_patch.yaml
-
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a22b7f76..a4c51bcc 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,8 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
 
 patches:
+  - path: ./manager_resources_patch.yaml
   - target:
       group: apps
       version: v1
diff --git a/components/image-controller/base/manager_resources_patch.yaml b/components/image-controller/development/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/base/manager_resources_patch.yaml
rename to components/image-controller/development/manager_resources_patch.yaml
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 81fb17a5..30d19f15 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,7 +3,17 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
+
 patches:
+  - path: ./manager_resources_patch.yaml
   - path: quaytoken.yaml
     target:
       name: quaytoken
diff --git a/components/image-controller/production/manager_resources_patch.yaml b/components/image-controller/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..972112ef
--- /dev/null
+++ b/components/image-controller/production/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
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
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
+
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 479bc600..c747c0f7 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,3 +3,14 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+
+images:
+- name: quay.io/redhat-appstudio/image-controller
+  newName: quay.io/redhat-appstudio/image-controller
+  newTag: 8208ff372b880773b911062dc828f050e45c5312
+
+namespace: image-controller
+
+patches:
+  - path: ./manager_resources_patch.yaml
\ No newline at end of file
diff --git a/components/image-controller/staging/manager_resources_patch.yaml b/components/image-controller/staging/manager_resources_patch.yaml
new file mode 100644
index 00000000..972112ef
--- /dev/null
+++ b/components/image-controller/staging/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
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
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 51dd1698 to 866da8e4 on Wed Jan 10 09:06:49 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 98e80f0a..a92a7e17 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 583ada46..eda70283 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 51dd1698 to 866da8e4 on Wed Jan 10 09:06:49 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 98e80f0a..a92a7e17 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 583ada46..eda70283 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 51dd1698 to 866da8e4 on Wed Jan 10 09:06:49 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 98e80f0a..a92a7e17 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 583ada46..eda70283 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 7a12797b to 51dd1698 on Tue Jan 9 23:20:46 2024 </h3>  
 
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
<h3>4: Staging changes from 7a12797b to 51dd1698 on Tue Jan 9 23:20:46 2024 </h3>  
 
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
<h3>4: Development changes from 7a12797b to 51dd1698 on Tue Jan 9 23:20:46 2024 </h3>  
 
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
