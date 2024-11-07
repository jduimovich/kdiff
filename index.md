# kustomize changes tracked by commits 
### This file generated at Thu Nov  7 00:10:11 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f5c048be to b0f67909 on Wed Nov 6 19:03:31 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index db683228..e7f35fd8 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=c686cff5875764e7cb1cda5831a06be5d8c99b84
+- https://github.com/konflux-ci/build-service/config/default?ref=89319dea6882a4b933f26f32e2d874911effe089
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: c686cff5875764e7cb1cda5831a06be5d8c99b84
+  newTag: 89319dea6882a4b933f26f32e2d874911effe089
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 3d332cd6..6451503a 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=c686cff5875764e7cb1cda5831a06be5d8c99b84
+- https://github.com/konflux-ci/build-service/config/default?ref=89319dea6882a4b933f26f32e2d874911effe089
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: c686cff5875764e7cb1cda5831a06be5d8c99b84
+  newTag: 89319dea6882a4b933f26f32e2d874911effe089
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f5c048be to b0f67909 on Wed Nov 6 19:03:31 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index db683228..e7f35fd8 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=c686cff5875764e7cb1cda5831a06be5d8c99b84
+- https://github.com/konflux-ci/build-service/config/default?ref=89319dea6882a4b933f26f32e2d874911effe089
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: c686cff5875764e7cb1cda5831a06be5d8c99b84
+  newTag: 89319dea6882a4b933f26f32e2d874911effe089
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 3d332cd6..6451503a 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=c686cff5875764e7cb1cda5831a06be5d8c99b84
+- https://github.com/konflux-ci/build-service/config/default?ref=89319dea6882a4b933f26f32e2d874911effe089
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: c686cff5875764e7cb1cda5831a06be5d8c99b84
+  newTag: 89319dea6882a4b933f26f32e2d874911effe089
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f5c048be/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
556c556
<         image: quay.io/konflux-ci/build-service:89319dea6882a4b933f26f32e2d874911effe089
---
>         image: quay.io/konflux-ci/build-service:c686cff5875764e7cb1cda5831a06be5d8c99b84 
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
<h3>1: Development changes from f5c048be to b0f67909 on Wed Nov 6 19:03:31 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index db683228..e7f35fd8 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=c686cff5875764e7cb1cda5831a06be5d8c99b84
+- https://github.com/konflux-ci/build-service/config/default?ref=89319dea6882a4b933f26f32e2d874911effe089
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: c686cff5875764e7cb1cda5831a06be5d8c99b84
+  newTag: 89319dea6882a4b933f26f32e2d874911effe089
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 3d332cd6..6451503a 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=c686cff5875764e7cb1cda5831a06be5d8c99b84
+- https://github.com/konflux-ci/build-service/config/default?ref=89319dea6882a4b933f26f32e2d874911effe089
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: c686cff5875764e7cb1cda5831a06be5d8c99b84
+  newTag: 89319dea6882a4b933f26f32e2d874911effe089
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f5c048be/development/components/build-service/development/kustomize.out.yaml
549c549
<         image: quay.io/konflux-ci/build-service:89319dea6882a4b933f26f32e2d874911effe089
---
>         image: quay.io/konflux-ci/build-service:c686cff5875764e7cb1cda5831a06be5d8c99b84 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 1a2e1912 to f5c048be on Wed Nov 6 17:40:22 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/manager_resources_patch.yaml b/components/multi-platform-controller/production/manager_resources_patch.yaml
index a9644597..2ab8828d 100644
--- a/components/multi-platform-controller/production/manager_resources_patch.yaml
+++ b/components/multi-platform-controller/production/manager_resources_patch.yaml
@@ -11,8 +11,8 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 8Gi
+            memory: 16Gi
           requests:
             cpu: 500m
-            memory: 8Gi
+            memory: 16Gi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-1a2e1912/production/components/multi-platform-controller/production/kustomize.out.yaml
840c840
<             memory: 16Gi
---
>             memory: 8Gi
843c843
<             memory: 16Gi
---
>             memory: 8Gi 
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
<h3>2: Staging changes from 1a2e1912 to f5c048be on Wed Nov 6 17:40:22 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/manager_resources_patch.yaml b/components/multi-platform-controller/production/manager_resources_patch.yaml
index a9644597..2ab8828d 100644
--- a/components/multi-platform-controller/production/manager_resources_patch.yaml
+++ b/components/multi-platform-controller/production/manager_resources_patch.yaml
@@ -11,8 +11,8 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 8Gi
+            memory: 16Gi
           requests:
             cpu: 500m
-            memory: 8Gi
+            memory: 16Gi
  
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
<h3>2: Development changes from 1a2e1912 to f5c048be on Wed Nov 6 17:40:22 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/manager_resources_patch.yaml b/components/multi-platform-controller/production/manager_resources_patch.yaml
index a9644597..2ab8828d 100644
--- a/components/multi-platform-controller/production/manager_resources_patch.yaml
+++ b/components/multi-platform-controller/production/manager_resources_patch.yaml
@@ -11,8 +11,8 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 8Gi
+            memory: 16Gi
           requests:
             cpu: 500m
-            memory: 8Gi
+            memory: 16Gi
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from d675cc7e to 1a2e1912 on Wed Nov 6 17:31:48 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index e2ae9fdd..5dcc0b31 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -16,3 +16,6 @@ images:
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+
+patches:
+  - path: ./manager_resources_patch.yaml
diff --git a/components/multi-platform-controller/production/manager_resources_patch.yaml b/components/multi-platform-controller/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..a9644597
--- /dev/null
+++ b/components/multi-platform-controller/production/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 8Gi
+          requests:
+            cpu: 500m
+            memory: 8Gi
+ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (62 lines)</summary>  

``` 
./commit-d675cc7e/production/components/multi-platform-controller/production/kustomize.out.yaml
810a811,835
>         - --http2-disable
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       - args:
840c865
<             memory: 8Gi
---
>             memory: 4Gi
842,868c867,868
<             cpu: 500m
<             memory: 8Gi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       - args:
<         - --http2-disable
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=0
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
---
>             cpu: 100m
>             memory: 512Mi 
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
<h3>3: Staging changes from d675cc7e to 1a2e1912 on Wed Nov 6 17:31:48 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index e2ae9fdd..5dcc0b31 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -16,3 +16,6 @@ images:
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+
+patches:
+  - path: ./manager_resources_patch.yaml
diff --git a/components/multi-platform-controller/production/manager_resources_patch.yaml b/components/multi-platform-controller/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..a9644597
--- /dev/null
+++ b/components/multi-platform-controller/production/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 8Gi
+          requests:
+            cpu: 500m
+            memory: 8Gi
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from d675cc7e to 1a2e1912 on Wed Nov 6 17:31:48 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index e2ae9fdd..5dcc0b31 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -16,3 +16,6 @@ images:
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+
+patches:
+  - path: ./manager_resources_patch.yaml
diff --git a/components/multi-platform-controller/production/manager_resources_patch.yaml b/components/multi-platform-controller/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..a9644597
--- /dev/null
+++ b/components/multi-platform-controller/production/manager_resources_patch.yaml
@@ -0,0 +1,18 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 8Gi
+          requests:
+            cpu: 500m
+            memory: 8Gi
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from f173ebd4 to d675cc7e on Wed Nov 6 17:07:56 2024 </h3>  
 
<details> 
<summary>Git Diff (263 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index fca9c7d3..1db6f02a 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -59,8 +59,9 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-arm64.max-instances: "50"
+  dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -70,8 +71,9 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mlarge-arm64.max-instances: "160"
+  dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mlarge-amd64.type: aws
   dynamic.linux-mlarge-amd64.region: us-east-1
@@ -81,8 +83,9 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.max-instances: "100"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -92,8 +95,9 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -103,8 +107,9 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -114,8 +119,9 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -125,8 +131,9 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
@@ -136,8 +143,9 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m2xlarge-amd64.type: aws
   dynamic.linux-m2xlarge-amd64.region: us-east-1
@@ -147,8 +155,9 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m4xlarge-amd64.type: aws
   dynamic.linux-m4xlarge-amd64.region: us-east-1
@@ -158,8 +167,9 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m8xlarge-amd64.type: aws
   dynamic.linux-m8xlarge-amd64.region: us-east-1
@@ -169,8 +179,9 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
 
   # cpu:memory (1:2)
   dynamic.linux-cxlarge-arm64.type: aws
@@ -181,8 +192,9 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c2xlarge-arm64.type: aws
   dynamic.linux-c2xlarge-arm64.region: us-east-1
@@ -192,8 +204,9 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c4xlarge-arm64.type: aws
   dynamic.linux-c4xlarge-arm64.region: us-east-1
@@ -203,8 +216,9 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c8xlarge-arm64.type: aws
   dynamic.linux-c8xlarge-arm64.region: us-east-1
@@ -214,8 +228,9 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-cxlarge-amd64.type: aws
   dynamic.linux-cxlarge-amd64.region: us-east-1
@@ -225,8 +240,9 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c2xlarge-amd64.type: aws
   dynamic.linux-c2xlarge-amd64.region: us-east-1
@@ -236,8 +252,9 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c4xlarge-amd64.type: aws
   dynamic.linux-c4xlarge-amd64.region: us-east-1
@@ -247,8 +264,9 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c8xlarge-amd64.type: aws
   dynamic.linux-c8xlarge-amd64.region: us-east-1
@@ -258,8 +276,9 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
@@ -269,10 +288,11 @@ data:
   dynamic.linux-root-arm64.aws-secret: aws-account
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.max-instances: "100"
   dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.allocation-timeout: "1200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -282,10 +302,11 @@ data:
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.max-instances: "100"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.allocation-timeout: "1200"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key"
@@ -299,6 +320,7 @@ data:
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
 
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
@@ -312,6 +334,7 @@ data:
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
   dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -334,6 +357,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-g6xlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//" 
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
<h3>4: Staging changes from f173ebd4 to d675cc7e on Wed Nov 6 17:07:56 2024 </h3>  
 
<details> 
<summary>Git Diff (263 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index fca9c7d3..1db6f02a 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -59,8 +59,9 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-arm64.max-instances: "50"
+  dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -70,8 +71,9 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mlarge-arm64.max-instances: "160"
+  dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mlarge-amd64.type: aws
   dynamic.linux-mlarge-amd64.region: us-east-1
@@ -81,8 +83,9 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.max-instances: "100"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -92,8 +95,9 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -103,8 +107,9 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -114,8 +119,9 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -125,8 +131,9 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
@@ -136,8 +143,9 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m2xlarge-amd64.type: aws
   dynamic.linux-m2xlarge-amd64.region: us-east-1
@@ -147,8 +155,9 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m4xlarge-amd64.type: aws
   dynamic.linux-m4xlarge-amd64.region: us-east-1
@@ -158,8 +167,9 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m8xlarge-amd64.type: aws
   dynamic.linux-m8xlarge-amd64.region: us-east-1
@@ -169,8 +179,9 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
 
   # cpu:memory (1:2)
   dynamic.linux-cxlarge-arm64.type: aws
@@ -181,8 +192,9 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c2xlarge-arm64.type: aws
   dynamic.linux-c2xlarge-arm64.region: us-east-1
@@ -192,8 +204,9 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c4xlarge-arm64.type: aws
   dynamic.linux-c4xlarge-arm64.region: us-east-1
@@ -203,8 +216,9 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c8xlarge-arm64.type: aws
   dynamic.linux-c8xlarge-arm64.region: us-east-1
@@ -214,8 +228,9 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-cxlarge-amd64.type: aws
   dynamic.linux-cxlarge-amd64.region: us-east-1
@@ -225,8 +240,9 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c2xlarge-amd64.type: aws
   dynamic.linux-c2xlarge-amd64.region: us-east-1
@@ -236,8 +252,9 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c4xlarge-amd64.type: aws
   dynamic.linux-c4xlarge-amd64.region: us-east-1
@@ -247,8 +264,9 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c8xlarge-amd64.type: aws
   dynamic.linux-c8xlarge-amd64.region: us-east-1
@@ -258,8 +276,9 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
@@ -269,10 +288,11 @@ data:
   dynamic.linux-root-arm64.aws-secret: aws-account
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.max-instances: "100"
   dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.allocation-timeout: "1200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -282,10 +302,11 @@ data:
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.max-instances: "100"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.allocation-timeout: "1200"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key"
@@ -299,6 +320,7 @@ data:
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
 
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
@@ -312,6 +334,7 @@ data:
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
   dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -334,6 +357,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-g6xlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//" 
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
<h3>4: Development changes from f173ebd4 to d675cc7e on Wed Nov 6 17:07:56 2024 </h3>  
 
<details> 
<summary>Git Diff (263 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index fca9c7d3..1db6f02a 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -59,8 +59,9 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-arm64.max-instances: "50"
+  dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -70,8 +71,9 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mlarge-arm64.max-instances: "160"
+  dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mlarge-amd64.type: aws
   dynamic.linux-mlarge-amd64.region: us-east-1
@@ -81,8 +83,9 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.max-instances: "100"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -92,8 +95,9 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -103,8 +107,9 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -114,8 +119,9 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -125,8 +131,9 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
@@ -136,8 +143,9 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m2xlarge-amd64.type: aws
   dynamic.linux-m2xlarge-amd64.region: us-east-1
@@ -147,8 +155,9 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m4xlarge-amd64.type: aws
   dynamic.linux-m4xlarge-amd64.region: us-east-1
@@ -158,8 +167,9 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-m8xlarge-amd64.type: aws
   dynamic.linux-m8xlarge-amd64.region: us-east-1
@@ -169,8 +179,9 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
 
   # cpu:memory (1:2)
   dynamic.linux-cxlarge-arm64.type: aws
@@ -181,8 +192,9 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c2xlarge-arm64.type: aws
   dynamic.linux-c2xlarge-arm64.region: us-east-1
@@ -192,8 +204,9 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c4xlarge-arm64.type: aws
   dynamic.linux-c4xlarge-arm64.region: us-east-1
@@ -203,8 +216,9 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-c8xlarge-arm64.type: aws
   dynamic.linux-c8xlarge-arm64.region: us-east-1
@@ -214,8 +228,9 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
 
   dynamic.linux-cxlarge-amd64.type: aws
   dynamic.linux-cxlarge-amd64.region: us-east-1
@@ -225,8 +240,9 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c2xlarge-amd64.type: aws
   dynamic.linux-c2xlarge-amd64.region: us-east-1
@@ -236,8 +252,9 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c4xlarge-amd64.type: aws
   dynamic.linux-c4xlarge-amd64.region: us-east-1
@@ -247,8 +264,9 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-c8xlarge-amd64.type: aws
   dynamic.linux-c8xlarge-amd64.region: us-east-1
@@ -258,8 +276,9 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
@@ -269,10 +288,11 @@ data:
   dynamic.linux-root-arm64.aws-secret: aws-account
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.max-instances: "100"
   dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.allocation-timeout: "1200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -282,10 +302,11 @@ data:
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.max-instances: "100"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.allocation-timeout: "1200"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key"
@@ -299,6 +320,7 @@ data:
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
 
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
@@ -312,6 +334,7 @@ data:
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
   dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -334,6 +357,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-g6xlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//" 
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
```
 
</details> 
<br> 


</div>
