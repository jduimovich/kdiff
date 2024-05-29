# kustomize changes tracked by commits 
### This file generated at Wed May 29 20:05:16 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b304aee7 to 5da4e44e on Wed May 29 18:40:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index e1dd8c86..3431d104 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
+  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 namespace: ci-helper-app
\ No newline at end of file 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b304aee7 to 5da4e44e on Wed May 29 18:40:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index e1dd8c86..3431d104 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
+  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b304aee7/staging/components/ci-helper-app/staging/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
---
>         image: quay.io/konflux-ci/ci-helper-app:31701cac48ccc9cf599a788ee08634cfa79eb0cd 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from b304aee7 to 5da4e44e on Wed May 29 18:40:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index e1dd8c86..3431d104 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
+  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b304aee7/development/components/ci-helper-app/development/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
---
>         image: quay.io/konflux-ci/ci-helper-app:31701cac48ccc9cf599a788ee08634cfa79eb0cd 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 8f1e832e to b304aee7 on Wed May 29 16:36:46 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a765b82c..8bf4767b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -13,7 +13,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
-    - CONSOLE_NAME=""
+    - CONSOLE_NAME="Konflux Dev version"
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 8f1e832e to b304aee7 on Wed May 29 16:36:46 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a765b82c..8bf4767b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -13,7 +13,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
-    - CONSOLE_NAME=""
+    - CONSOLE_NAME="Konflux Dev version"
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 8f1e832e to b304aee7 on Wed May 29 16:36:46 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a765b82c..8bf4767b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -13,7 +13,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
-    - CONSOLE_NAME=""
+    - CONSOLE_NAME="Konflux Dev version"
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-8f1e832e/development/components/integration/development/kustomize.out.yaml
1299c1299
<   CONSOLE_NAME: Konflux Dev version
---
>   CONSOLE_NAME: ""
1304c1304
<   name: console-url-h9d67t5c7h
---
>   name: console-url-b6926b66g6
1422c1422
<               name: console-url-h9d67t5c7h
---
>               name: console-url-b6926b66g6
1428c1428
<               name: console-url-h9d67t5c7h
---
>               name: console-url-b6926b66g6
1434c1434
<               name: console-url-h9d67t5c7h
---
>               name: console-url-b6926b66g6 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 0ecc441e to 8f1e832e on Wed May 29 15:47:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index b8e4e926..2e77c0e0 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 59f6ccc2..ab49097a 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 59dfc02b..9cff683a 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ccfe62b8..a4faed9f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0ecc441e/production/components/has/production/kustomize.out.yaml
776c776
<         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33
---
>         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 0ecc441e to 8f1e832e on Wed May 29 15:47:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index b8e4e926..2e77c0e0 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 59f6ccc2..ab49097a 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 59dfc02b..9cff683a 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ccfe62b8..a4faed9f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0ecc441e/staging/components/has/staging/kustomize.out.yaml
803c803
<         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33
---
>         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 0ecc441e to 8f1e832e on Wed May 29 15:47:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index b8e4e926..2e77c0e0 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 59f6ccc2..ab49097a 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 59dfc02b..9cff683a 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ccfe62b8..a4faed9f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0ecc441e/development/components/has/development/kustomize.out.yaml
735c735
<         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33
---
>         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 2fd14ecc to 0ecc441e on Wed May 29 15:47:17 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 568ed5b3..c0919ce4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -7,7 +7,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
-  enabled: true
+  enabled: false
   capacityThresholds:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
@@ -23,7 +23,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 4292e6af..961c0d80 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -10,7 +10,8 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
+      domains: 'redhat.com'
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 2fd14ecc to 0ecc441e on Wed May 29 15:47:17 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 568ed5b3..c0919ce4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -7,7 +7,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
-  enabled: true
+  enabled: false
   capacityThresholds:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
@@ -23,7 +23,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 4292e6af..961c0d80 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -10,7 +10,8 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
+      domains: 'redhat.com'
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 2fd14ecc to 0ecc441e on Wed May 29 15:47:17 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 568ed5b3..c0919ce4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -7,7 +7,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
-  enabled: true
+  enabled: false
   capacityThresholds:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
@@ -23,7 +23,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 4292e6af..961c0d80 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -10,7 +10,8 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
+      domains: 'redhat.com'
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
```
 
</details> 
<br> 


</div>
