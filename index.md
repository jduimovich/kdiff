# kustomize changes tracked by commits 
### This file generated at Tue Jun 25 04:02:41 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a1837023 to c9402782 on Mon Jun 24 21:13:22 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 337d464a..813438a2 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -12,6 +12,10 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=ad974044255725077080ace5e4be8840ee85b2da
   - ../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 # generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
 configMapGenerator:
   - behavior: replace
@@ -63,8 +67,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-results-watcher-performance.yaml
-    target:
-        kind: Deployment
-        namespace: tekton-results
-        name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7a33bfab..4f0e1599 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,6 +15,11 @@ resources:
   - ../../base/rbac
   - ../../base/certificates
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
+
 # generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
 configMapGenerator:
   - behavior: replace
@@ -61,8 +66,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index adaab372..4bc95ab0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c59459f1..84267c34 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eac0cd8c..8b7c63c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from a1837023 to c9402782 on Mon Jun 24 21:13:22 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 337d464a..813438a2 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -12,6 +12,10 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=ad974044255725077080ace5e4be8840ee85b2da
   - ../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 # generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
 configMapGenerator:
   - behavior: replace
@@ -63,8 +67,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-results-watcher-performance.yaml
-    target:
-        kind: Deployment
-        namespace: tekton-results
-        name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7a33bfab..4f0e1599 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,6 +15,11 @@ resources:
   - ../../base/rbac
   - ../../base/certificates
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
+
 # generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
 configMapGenerator:
   - behavior: replace
@@ -61,8 +66,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index adaab372..4bc95ab0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c59459f1..84267c34 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eac0cd8c..8b7c63c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-a1837023/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1617a1618,1627
>         - -threadiness
>         - "50"
>         - -qps
>         - "50"
>         - -burst
>         - "100"
>         - -update_log_timeout
>         - 9m
>         - -dynamic_reconcile_timeout
>         - 9m
1635c1645
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
./commit-a1837023/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1617a1618,1627
>         - -threadiness
>         - "50"
>         - -qps
>         - "50"
>         - -burst
>         - "100"
>         - -update_log_timeout
>         - 9m
>         - -dynamic_reconcile_timeout
>         - 9m
1635c1645
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
./commit-a1837023/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1617a1618,1627
>         - -threadiness
>         - "50"
>         - -qps
>         - "50"
>         - -burst
>         - "100"
>         - -update_log_timeout
>         - 9m
>         - -dynamic_reconcile_timeout
>         - 9m
1635c1645
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a 
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
<h3>1: Development changes from a1837023 to c9402782 on Mon Jun 24 21:13:22 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 337d464a..813438a2 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -12,6 +12,10 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=ad974044255725077080ace5e4be8840ee85b2da
   - ../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 # generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
 configMapGenerator:
   - behavior: replace
@@ -63,8 +67,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-results-watcher-performance.yaml
-    target:
-        kind: Deployment
-        namespace: tekton-results
-        name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7a33bfab..4f0e1599 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,6 +15,11 @@ resources:
   - ../../base/rbac
   - ../../base/certificates
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
+
 # generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
 configMapGenerator:
   - behavior: replace
@@ -61,8 +66,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index adaab372..4bc95ab0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c59459f1..84267c34 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eac0cd8c..8b7c63c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1615,16 +1615,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "50"
-        - -qps
-        - "50"
-        - -burst
-        - "100"
-        - -update_log_timeout
-        - 9m
-        - -dynamic_reconcile_timeout
-        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1642,7 +1632,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-a1837023/development/components/pipeline-service/development/kustomize.out.yaml
1523a1524,1533
>         - -threadiness
>         - "50"
>         - -qps
>         - "50"
>         - -burst
>         - "100"
>         - -update_log_timeout
>         - 9m
>         - -dynamic_reconcile_timeout
>         - 9m
1541c1551
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a 
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
<h3>2: Production changes from 26edfba3 to a1837023 on Mon Jun 24 14:08:04 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 363485fc..f0284210 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=3c44246100c3b14191d2571b49e310e0c8f35550
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=c6133cc0b908743ebd1f3a92c7ff9b123353b97b
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index cc198b92..26ffa0e4 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=3c44246100c3b14191d2571b49e310e0c8f35550
+  - https://github.com/konflux-ci/release-service/config/default?ref=c6133cc0b908743ebd1f3a92c7ff9b123353b97b
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 3c44246100c3b14191d2571b49e310e0c8f35550
+    newTag: c6133cc0b908743ebd1f3a92c7ff9b123353b97b
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 26edfba3 to a1837023 on Mon Jun 24 14:08:04 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 363485fc..f0284210 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=3c44246100c3b14191d2571b49e310e0c8f35550
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=c6133cc0b908743ebd1f3a92c7ff9b123353b97b
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index cc198b92..26ffa0e4 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=3c44246100c3b14191d2571b49e310e0c8f35550
+  - https://github.com/konflux-ci/release-service/config/default?ref=c6133cc0b908743ebd1f3a92c7ff9b123353b97b
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 3c44246100c3b14191d2571b49e310e0c8f35550
+    newTag: c6133cc0b908743ebd1f3a92c7ff9b123353b97b
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 26edfba3 to a1837023 on Mon Jun 24 14:08:04 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 363485fc..f0284210 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=3c44246100c3b14191d2571b49e310e0c8f35550
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=c6133cc0b908743ebd1f3a92c7ff9b123353b97b
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index cc198b92..26ffa0e4 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=3c44246100c3b14191d2571b49e310e0c8f35550
+  - https://github.com/konflux-ci/release-service/config/default?ref=c6133cc0b908743ebd1f3a92c7ff9b123353b97b
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 3c44246100c3b14191d2571b49e310e0c8f35550
+    newTag: c6133cc0b908743ebd1f3a92c7ff9b123353b97b
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-26edfba3/development/components/release/development/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:c6133cc0b908743ebd1f3a92c7ff9b123353b97b
---
>         image: quay.io/konflux-ci/release-service:3c44246100c3b14191d2571b49e310e0c8f35550 
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
<h3>3: Production changes from 0f0294da to 26edfba3 on Mon Jun 24 13:12:03 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 84de80d1..8e51d866 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-0f0294da/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>         image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>             image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f
./commit-0f0294da/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>         image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>             image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f 
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
<h3>3: Staging changes from 0f0294da to 26edfba3 on Mon Jun 24 13:12:03 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 84de80d1..8e51d866 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 0f0294da to 26edfba3 on Mon Jun 24 13:12:03 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 84de80d1..8e51d866 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from faf8cbea to 0f0294da on Mon Jun 24 11:31:42 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 97bbef61..2023a771 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- monitoring.yaml
 - allow-argocd-to-manage.yaml
 - https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
 - https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
 
-
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
diff --git a/components/multi-platform-controller/base/monitoring.yaml b/components/multi-platform-controller/base/monitoring.yaml
new file mode 100644
index 00000000..a7094459
--- /dev/null
+++ b/components/multi-platform-controller/base/monitoring.yaml
@@ -0,0 +1,48 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: multi-platform-controller-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-multi-platform-controller-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: multi-platform-controller-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: multi-platform-controller
+spec:
+  endpoints:
+  - path: /metrics
+    interval: 15s
+    port: http-metrics
+    scheme: http
+  selector:
+    matchLabels:
+      app: multi-platform-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (59 lines)</summary>  

``` 
./commit-faf8cbea/production/components/multi-platform-controller/production/kustomize.out.yaml
12,17d11
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
109,118d102
< kind: ClusterRole
< metadata:
<   name: multi-platform-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
162,174d145
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-multi-platform-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
342,350d312
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: multi-platform-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
604,618d565
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< spec:
<   endpoints:
<   - interval: 15s
<     path: /metrics
<     port: http-metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app: multi-platform-controller 
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
<h3>4: Staging changes from faf8cbea to 0f0294da on Mon Jun 24 11:31:42 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 97bbef61..2023a771 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- monitoring.yaml
 - allow-argocd-to-manage.yaml
 - https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
 - https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
 
-
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
diff --git a/components/multi-platform-controller/base/monitoring.yaml b/components/multi-platform-controller/base/monitoring.yaml
new file mode 100644
index 00000000..a7094459
--- /dev/null
+++ b/components/multi-platform-controller/base/monitoring.yaml
@@ -0,0 +1,48 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: multi-platform-controller-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-multi-platform-controller-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: multi-platform-controller-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: multi-platform-controller
+spec:
+  endpoints:
+  - path: /metrics
+    interval: 15s
+    port: http-metrics
+    scheme: http
+  selector:
+    matchLabels:
+      app: multi-platform-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (59 lines)</summary>  

``` 
./commit-faf8cbea/staging/components/multi-platform-controller/staging/kustomize.out.yaml
12,17d11
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
109,118d102
< kind: ClusterRole
< metadata:
<   name: multi-platform-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
162,174d145
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-multi-platform-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
241,249d211
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: multi-platform-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
457,471d418
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< spec:
<   endpoints:
<   - interval: 15s
<     path: /metrics
<     port: http-metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app: multi-platform-controller 
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
<h3>4: Development changes from faf8cbea to 0f0294da on Mon Jun 24 11:31:42 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 97bbef61..2023a771 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- monitoring.yaml
 - allow-argocd-to-manage.yaml
 - https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
 - https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
 
-
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
diff --git a/components/multi-platform-controller/base/monitoring.yaml b/components/multi-platform-controller/base/monitoring.yaml
new file mode 100644
index 00000000..a7094459
--- /dev/null
+++ b/components/multi-platform-controller/base/monitoring.yaml
@@ -0,0 +1,48 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: multi-platform-controller-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-multi-platform-controller-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: multi-platform-controller-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: multi-platform-controller
+spec:
+  endpoints:
+  - path: /metrics
+    interval: 15s
+    port: http-metrics
+    scheme: http
+  selector:
+    matchLabels:
+      app: multi-platform-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (58 lines)</summary>  

``` 
./commit-faf8cbea/development/components/multi-platform-controller/development/kustomize.out.yaml
12,17d11
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
109,118d102
< kind: ClusterRole
< metadata:
<   name: multi-platform-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
162,183d145
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-multi-platform-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: multi-platform-controller
< type: kubernetes.io/service-account-token
< ---
324,338d285
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< spec:
<   endpoints:
<   - interval: 15s
<     path: /metrics
<     port: http-metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app: multi-platform-controller 
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
