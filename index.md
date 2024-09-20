# kustomize changes tracked by commits 
### This file generated at Fri Sep 20 04:02:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from deba81e8 to 7be5a675 on Thu Sep 19 19:28:37 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 72f609ce..55e51902 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-deba81e8/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:23c020091dcd4eeafbf3d75736b9c64d36a22f4b
---
>         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
./commit-deba81e8/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:23c020091dcd4eeafbf3d75736b9c64d36a22f4b
---
>         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c 
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
<h3>1: Staging changes from deba81e8 to 7be5a675 on Thu Sep 19 19:28:37 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 72f609ce..55e51902 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from deba81e8 to 7be5a675 on Thu Sep 19 19:28:37 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 72f609ce..55e51902 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from d23253ca to deba81e8 on Thu Sep 19 18:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 51a5bee5..e5c78337 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 57de23f2..4afae557 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from d23253ca to deba81e8 on Thu Sep 19 18:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 51a5bee5..e5c78337 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 57de23f2..4afae557 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d23253ca/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:23c020091dcd4eeafbf3d75736b9c64d36a22f4b
---
>         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from d23253ca to deba81e8 on Thu Sep 19 18:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 51a5bee5..e5c78337 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 57de23f2..4afae557 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
+- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
+  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d23253ca/development/components/build-service/development/kustomize.out.yaml
547c547
<         image: quay.io/konflux-ci/build-service:23c020091dcd4eeafbf3d75736b9c64d36a22f4b
---
>         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c 
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
<h3>3: Production changes from 4a768262 to d23253ca on Thu Sep 19 16:15:09 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index e9556e32..da421997 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 23a08c20..33dd638a 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
+      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-4a768262/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
332c332
<   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
---
>   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd 
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
<h3>3: Staging changes from 4a768262 to d23253ca on Thu Sep 19 16:15:09 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index e9556e32..da421997 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 23a08c20..33dd638a 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
+      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-4a768262/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
332c332
<   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
---
>   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 4a768262 to d23253ca on Thu Sep 19 16:15:09 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index e9556e32..da421997 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 23a08c20..33dd638a 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
+      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-4a768262/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
332c332
<   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
---
>   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd 
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
<h3>4: Production changes from 27c2d3b8 to 4a768262 on Thu Sep 19 15:03:24 2024 </h3>  
 
<details> 
<summary>Git Diff (140 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb8a5909..cb54432f 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,6 +1566,18 @@ spec:
                     requests:
                       cpu: 200m
                       memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: "1"
+                      limits:
+                        memory: 8Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 83e8d587..281bbfa9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9c64a4fa..b1b3508b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index e1a822f8..0735f2d0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6d592572..b5e11e1f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c7667781..2bf23bad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2060,7 +2060,7 @@ spec:
                     limits:
                       memory: 8Gi
                     requests:
-                      cpu: 500m
+                      cpu: "1"
                       memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
index 408130cc..0cbd0acc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -15,6 +15,6 @@ spec:
                     resources:
                       requests:
                         memory: 6Gi
-                        cpu: 500m
+                        cpu: "1"
                       limits:
                         memory: 8Gi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (56 lines)</summary>  

``` 
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi 
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
<h3>4: Staging changes from 27c2d3b8 to 4a768262 on Thu Sep 19 15:03:24 2024 </h3>  
 
<details> 
<summary>Git Diff (140 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb8a5909..cb54432f 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,6 +1566,18 @@ spec:
                     requests:
                       cpu: 200m
                       memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: "1"
+                      limits:
+                        memory: 8Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 83e8d587..281bbfa9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9c64a4fa..b1b3508b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index e1a822f8..0735f2d0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6d592572..b5e11e1f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c7667781..2bf23bad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2060,7 +2060,7 @@ spec:
                     limits:
                       memory: 8Gi
                     requests:
-                      cpu: 500m
+                      cpu: "1"
                       memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
index 408130cc..0cbd0acc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -15,6 +15,6 @@ spec:
                     resources:
                       requests:
                         memory: 6Gi
-                        cpu: 500m
+                        cpu: "1"
                       limits:
                         memory: 8Gi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-27c2d3b8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2063c2063
<                       cpu: "1"
---
>                       cpu: 500m 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 27c2d3b8 to 4a768262 on Thu Sep 19 15:03:24 2024 </h3>  
 
<details> 
<summary>Git Diff (140 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb8a5909..cb54432f 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,6 +1566,18 @@ spec:
                     requests:
                       cpu: 200m
                       memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: "1"
+                      limits:
+                        memory: 8Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 83e8d587..281bbfa9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9c64a4fa..b1b3508b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index e1a822f8..0735f2d0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6d592572..b5e11e1f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c7667781..2bf23bad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2060,7 +2060,7 @@ spec:
                     limits:
                       memory: 8Gi
                     requests:
-                      cpu: 500m
+                      cpu: "1"
                       memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
index 408130cc..0cbd0acc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -15,6 +15,6 @@ spec:
                     resources:
                       requests:
                         memory: 6Gi
-                        cpu: 500m
+                        cpu: "1"
                       limits:
                         memory: 8Gi 
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
