# kustomize changes tracked by commits 
### This file generated at Thu May 16 16:05:47 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5056de65 to be153a47 on Thu May 16 15:43:25 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index c863c34d..6555cefe 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -8,8 +8,8 @@ resources:
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
   newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5056de65/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
743c743
<         image: quay.io/konflux-ci/build-service:0e591f628aab9cbe9fac2b9bdc8883e955a560e7
---
>         image: quay.io/konflux-ci/build-service:next 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 5056de65 to be153a47 on Thu May 16 15:43:25 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index c863c34d..6555cefe 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -8,8 +8,8 @@ resources:
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
   newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations: 
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
<h3>1: Development changes from 5056de65 to be153a47 on Thu May 16 15:43:25 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index c863c34d..6555cefe 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -8,8 +8,8 @@ resources:
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
   newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations: 
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

<div>
<h3>2: Production changes from 862762c3 to 5056de65 on Thu May 16 14:46:28 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index ac89a765..c863c34d 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-862762c3/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
743c743
<         image: quay.io/konflux-ci/build-service:next
---
>         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 862762c3 to 5056de65 on Thu May 16 14:46:28 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index ac89a765..c863c34d 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 862762c3 to 5056de65 on Thu May 16 14:46:28 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index ac89a765..c863c34d 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from e25ae992 to 862762c3 on Thu May 16 13:50:58 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1af3fac9..42a038a3 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e8ce9614..9c2e30d3 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/hack/preview.sh b/hack/preview.sh
index 7db495d2..9e4248bf 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -172,8 +172,8 @@ domain=$(oc get ingresses.config.openshift.io cluster --template={{.spec.domain}
 rekor_server="rekor.$domain"
 sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT/argo-cd-apps/base/member/optional/helm/rekor/rekor.yaml && rm $ROOT/argo-cd-apps/base/member/optional/helm/rekor/rekor.yaml.bak
 
-[ -n "${BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/build-service\")) |=.newName=\"${BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/build-service/development/kustomization.yaml
-[ -n "${BUILD_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/build-service\")) |=.newTag=\"${BUILD_SERVICE_IMAGE_TAG}\"" $ROOT/components/build-service/development/kustomization.yaml
+[ -n "${BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/build-service\")) |=.newName=\"${BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/build-service/development/kustomization.yaml
+[ -n "${BUILD_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/build-service\")) |=.newTag=\"${BUILD_SERVICE_IMAGE_TAG}\"" $ROOT/components/build-service/development/kustomization.yaml
 [ -n "${BUILD_SERVICE_IMAGE_TAG_EXPIRATION}" ] && yq -i e "(.spec.template.spec.containers[].env[] | select(.name==\"IMAGE_TAG_ON_PR_EXPIRATION\") | .value) |= \"${BUILD_SERVICE_IMAGE_TAG_EXPIRATION}\"" $ROOT/components/build-service/development/image-expiration-patch.yaml
 [[ -n "${BUILD_SERVICE_PR_OWNER}" && "${BUILD_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/build-service*\")) |= \"https://github.com/${BUILD_SERVICE_PR_OWNER}/build-service/config/default?ref=${BUILD_SERVICE_PR_SHA}\"" $ROOT/components/build-service/development/kustomization.yaml
 [ -n "${JVM_BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"hacbs-jvm-operator\")) |=.newName=\"${JVM_BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/jvm-build-service/base/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from e25ae992 to 862762c3 on Thu May 16 13:50:58 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1af3fac9..42a038a3 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e8ce9614..9c2e30d3 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/hack/preview.sh b/hack/preview.sh
index 7db495d2..9e4248bf 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -172,8 +172,8 @@ domain=$(oc get ingresses.config.openshift.io cluster --template={{.spec.domain}
 rekor_server="rekor.$domain"
 sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT/argo-cd-apps/base/member/optional/helm/rekor/rekor.yaml && rm $ROOT/argo-cd-apps/base/member/optional/helm/rekor/rekor.yaml.bak
 
-[ -n "${BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/build-service\")) |=.newName=\"${BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/build-service/development/kustomization.yaml
-[ -n "${BUILD_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/build-service\")) |=.newTag=\"${BUILD_SERVICE_IMAGE_TAG}\"" $ROOT/components/build-service/development/kustomization.yaml
+[ -n "${BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/build-service\")) |=.newName=\"${BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/build-service/development/kustomization.yaml
+[ -n "${BUILD_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/build-service\")) |=.newTag=\"${BUILD_SERVICE_IMAGE_TAG}\"" $ROOT/components/build-service/development/kustomization.yaml
 [ -n "${BUILD_SERVICE_IMAGE_TAG_EXPIRATION}" ] && yq -i e "(.spec.template.spec.containers[].env[] | select(.name==\"IMAGE_TAG_ON_PR_EXPIRATION\") | .value) |= \"${BUILD_SERVICE_IMAGE_TAG_EXPIRATION}\"" $ROOT/components/build-service/development/image-expiration-patch.yaml
 [[ -n "${BUILD_SERVICE_PR_OWNER}" && "${BUILD_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/build-service*\")) |= \"https://github.com/${BUILD_SERVICE_PR_OWNER}/build-service/config/default?ref=${BUILD_SERVICE_PR_SHA}\"" $ROOT/components/build-service/development/kustomization.yaml
 [ -n "${JVM_BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"hacbs-jvm-operator\")) |=.newName=\"${JVM_BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/jvm-build-service/base/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e25ae992/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
743c743
<         image: quay.io/konflux-ci/build-service:0e591f628aab9cbe9fac2b9bdc8883e955a560e7
---
>         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35 
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
<h3>3: Development changes from e25ae992 to 862762c3 on Thu May 16 13:50:58 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1af3fac9..42a038a3 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e8ce9614..9c2e30d3 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- https://github.com/konflux-ci/build-service/config/default?ref=0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 namespace: build-service
 
 images:
-- name: quay.io/redhat-appstudio/build-service
-  newName: quay.io/redhat-appstudio/build-service
-  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
+- name: quay.io/konflux-ci/build-service
+  newName: quay.io/konflux-ci/build-service
+  newTag: 0e591f628aab9cbe9fac2b9bdc8883e955a560e7
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/hack/preview.sh b/hack/preview.sh
index 7db495d2..9e4248bf 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -172,8 +172,8 @@ domain=$(oc get ingresses.config.openshift.io cluster --template={{.spec.domain}
 rekor_server="rekor.$domain"
 sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT/argo-cd-apps/base/member/optional/helm/rekor/rekor.yaml && rm $ROOT/argo-cd-apps/base/member/optional/helm/rekor/rekor.yaml.bak
 
-[ -n "${BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/build-service\")) |=.newName=\"${BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/build-service/development/kustomization.yaml
-[ -n "${BUILD_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/build-service\")) |=.newTag=\"${BUILD_SERVICE_IMAGE_TAG}\"" $ROOT/components/build-service/development/kustomization.yaml
+[ -n "${BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/build-service\")) |=.newName=\"${BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/build-service/development/kustomization.yaml
+[ -n "${BUILD_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/build-service\")) |=.newTag=\"${BUILD_SERVICE_IMAGE_TAG}\"" $ROOT/components/build-service/development/kustomization.yaml
 [ -n "${BUILD_SERVICE_IMAGE_TAG_EXPIRATION}" ] && yq -i e "(.spec.template.spec.containers[].env[] | select(.name==\"IMAGE_TAG_ON_PR_EXPIRATION\") | .value) |= \"${BUILD_SERVICE_IMAGE_TAG_EXPIRATION}\"" $ROOT/components/build-service/development/image-expiration-patch.yaml
 [[ -n "${BUILD_SERVICE_PR_OWNER}" && "${BUILD_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/build-service*\")) |= \"https://github.com/${BUILD_SERVICE_PR_OWNER}/build-service/config/default?ref=${BUILD_SERVICE_PR_SHA}\"" $ROOT/components/build-service/development/kustomization.yaml
 [ -n "${JVM_BUILD_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"hacbs-jvm-operator\")) |=.newName=\"${JVM_BUILD_SERVICE_IMAGE_REPO}\"" $ROOT/components/jvm-build-service/base/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e25ae992/development/components/build-service/development/kustomize.out.yaml
738c738
<         image: quay.io/konflux-ci/build-service:0e591f628aab9cbe9fac2b9bdc8883e955a560e7
---
>         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35 
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
<h3>4: Production changes from ef29256f to e25ae992 on Thu May 16 11:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 2647a616..01ed6e71 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -29,19 +29,19 @@ spec:
         auth:
           authClientConfigRaw: '{
                     "realm": "redhat-external",
-                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth",
                     "ssl-required": "ALL",
                     "resource": "cloud-services",
                     "clientId": "cloud-services",
                     "public-client": true
                   }'
-          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
-          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        registrationServiceURL: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ef29256f to e25ae992 on Thu May 16 11:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 2647a616..01ed6e71 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -29,19 +29,19 @@ spec:
         auth:
           authClientConfigRaw: '{
                     "realm": "redhat-external",
-                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth",
                     "ssl-required": "ALL",
                     "resource": "cloud-services",
                     "clientId": "cloud-services",
                     "public-client": true
                   }'
-          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
-          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        registrationServiceURL: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
<h3>4: Development changes from ef29256f to e25ae992 on Thu May 16 11:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 2647a616..01ed6e71 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -29,19 +29,19 @@ spec:
         auth:
           authClientConfigRaw: '{
                     "realm": "redhat-external",
-                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth",
                     "ssl-required": "ALL",
                     "resource": "cloud-services",
                     "clientId": "cloud-services",
                     "public-client": true
                   }'
-          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
-          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        registrationServiceURL: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
