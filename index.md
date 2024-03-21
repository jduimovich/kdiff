# kustomize changes tracked by commits 
### This file generated at Thu Mar 21 00:08:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 083c4bb2 to 92cc68f1 on Wed Mar 20 21:51:40 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 16cbf899..d8792479 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index af214d1c..83e69c38 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d99eaa6e..2db107a9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 948ec7fb..9ceb04c9 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d3dd9177..326c8c22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f3fad6eb..4ad07cf8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-083c4bb2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1786,1789d1785
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-083c4bb2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1786,1789d1785
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-083c4bb2/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1786,1789d1785
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 083c4bb2 to 92cc68f1 on Wed Mar 20 21:51:40 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 16cbf899..d8792479 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index af214d1c..83e69c38 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d99eaa6e..2db107a9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 948ec7fb..9ceb04c9 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d3dd9177..326c8c22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f3fad6eb..4ad07cf8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-083c4bb2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1737,1740d1736
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-083c4bb2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1737,1740d1736
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-083c4bb2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1737,1740d1736
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false 
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
<h3>1: Development changes from 083c4bb2 to 92cc68f1 on Wed Mar 20 21:51:40 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 16cbf899..d8792479 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index af214d1c..83e69c38 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d99eaa6e..2db107a9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1783,6 +1783,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 948ec7fb..9ceb04c9 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d3dd9177..326c8c22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f3fad6eb..4ad07cf8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1734,6 +1734,10 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 2809b38c to 083c4bb2 on Wed Mar 20 20:31:56 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index 42d0c030..fb9e6cc8 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,3 +17,7 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 2809b38c to 083c4bb2 on Wed Mar 20 20:31:56 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index 42d0c030..fb9e6cc8 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,3 +17,7 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false 
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
<h3>2: Development changes from 2809b38c to 083c4bb2 on Wed Mar 20 20:31:56 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index 42d0c030..fb9e6cc8 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,3 +17,7 @@ spec:
   target:
     creationPolicy: Orphan
     name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from c08822c4 to 2809b38c on Wed Mar 20 13:39:28 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index a4f0e49a..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -5,8 +5,6 @@ metadata:
 secrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
-  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
-  - name: quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c08822c4/production/components/tekton-ci/production/kustomize.out.yaml
12a13
> - name: quay-push-secret-konflux-ci
20a22
> - name: quay-push-secret-konflux-ci 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from c08822c4 to 2809b38c on Wed Mar 20 13:39:28 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index a4f0e49a..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -5,8 +5,6 @@ metadata:
 secrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
-  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
-  - name: quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c08822c4/staging/components/tekton-ci/staging/kustomize.out.yaml
12a13
> - name: quay-push-secret-konflux-ci
20a22
> - name: quay-push-secret-konflux-ci 
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
<h3>3: Development changes from c08822c4 to 2809b38c on Wed Mar 20 13:39:28 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index a4f0e49a..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -5,8 +5,6 @@ metadata:
 secrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
-  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
-  - name: quay-push-secret-konflux-ci 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 3e5947ae to c08822c4 on Wed Mar 20 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 278ee536..0e38909c 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=b87a8318314a02f323405fad17362516d57febe5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=b87a8318314a02f323405fad17362516d57febe5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=448db67428ab1b31168a9f8929127e3ac78b8df2
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=448db67428ab1b31168a9f8929127e3ac78b8df2
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: b87a8318314a02f323405fad17362516d57febe5
+  newTag: 448db67428ab1b31168a9f8929127e3ac78b8df2
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: b87a8318314a02f323405fad17362516d57febe5
+  newTag: 448db67428ab1b31168a9f8929127e3ac78b8df2
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-3e5947ae/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:448db67428ab1b31168a9f8929127e3ac78b8df2
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:b87a8318314a02f323405fad17362516d57febe5
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:448db67428ab1b31168a9f8929127e3ac78b8df2
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:b87a8318314a02f323405fad17362516d57febe5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 3e5947ae to c08822c4 on Wed Mar 20 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 278ee536..0e38909c 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=b87a8318314a02f323405fad17362516d57febe5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=b87a8318314a02f323405fad17362516d57febe5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=448db67428ab1b31168a9f8929127e3ac78b8df2
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=448db67428ab1b31168a9f8929127e3ac78b8df2
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: b87a8318314a02f323405fad17362516d57febe5
+  newTag: 448db67428ab1b31168a9f8929127e3ac78b8df2
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: b87a8318314a02f323405fad17362516d57febe5
+  newTag: 448db67428ab1b31168a9f8929127e3ac78b8df2
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-3e5947ae/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:448db67428ab1b31168a9f8929127e3ac78b8df2
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:b87a8318314a02f323405fad17362516d57febe5
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:448db67428ab1b31168a9f8929127e3ac78b8df2
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:b87a8318314a02f323405fad17362516d57febe5 
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
<h3>4: Development changes from 3e5947ae to c08822c4 on Wed Mar 20 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 278ee536..0e38909c 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=b87a8318314a02f323405fad17362516d57febe5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=b87a8318314a02f323405fad17362516d57febe5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=448db67428ab1b31168a9f8929127e3ac78b8df2
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=448db67428ab1b31168a9f8929127e3ac78b8df2
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: b87a8318314a02f323405fad17362516d57febe5
+  newTag: 448db67428ab1b31168a9f8929127e3ac78b8df2
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: b87a8318314a02f323405fad17362516d57febe5
+  newTag: 448db67428ab1b31168a9f8929127e3ac78b8df2
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-3e5947ae/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:448db67428ab1b31168a9f8929127e3ac78b8df2
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:b87a8318314a02f323405fad17362516d57febe5
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:448db67428ab1b31168a9f8929127e3ac78b8df2
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:b87a8318314a02f323405fad17362516d57febe5 
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
```
 
</details> 
<br> 


</div>
