# kustomize changes tracked by commits 
### This file generated at Mon Dec  9 20:06:37 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 83442bb3 to 187e3c9c on Mon Dec 9 19:37:19 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index c856a75e..92e7b80f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,14 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
       additional-params:
       - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-83442bb3/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
./commit-83442bb3/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 83442bb3 to 187e3c9c on Mon Dec 9 19:37:19 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index c856a75e..92e7b80f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,14 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
       additional-params:
       - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-83442bb3/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a 
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
<h3>1: Development changes from 83442bb3 to 187e3c9c on Mon Dec 9 19:37:19 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index c856a75e..92e7b80f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,14 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
       additional-params:
       - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-83442bb3/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a 
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
<h3>2: Production changes from a05260b8 to 83442bb3 on Mon Dec 9 18:21:59 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 69f89a3e..77d7820b 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-a05260b8/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
558c558
<         image: quay.io/konflux-ci/build-service:55c26e6ca271d0d8e423d57175dbd6c08730f43c
---
>         image: quay.io/konflux-ci/build-service:f15262c4576a9b74e7a2296d8594da7230913558
./commit-a05260b8/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
558c558
<         image: quay.io/konflux-ci/build-service:55c26e6ca271d0d8e423d57175dbd6c08730f43c
---
>         image: quay.io/konflux-ci/build-service:f15262c4576a9b74e7a2296d8594da7230913558 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a05260b8 to 83442bb3 on Mon Dec 9 18:21:59 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 69f89a3e..77d7820b 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a05260b8 to 83442bb3 on Mon Dec 9 18:21:59 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 69f89a3e..77d7820b 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from afe65668 to a05260b8 on Mon Dec 9 18:03:04 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index dd0495a2..11226fec 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 57f360d3..26b1331f 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from afe65668 to a05260b8 on Mon Dec 9 18:03:04 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index dd0495a2..11226fec 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 57f360d3..26b1331f 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-afe65668/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
558c558
<         image: quay.io/konflux-ci/build-service:55c26e6ca271d0d8e423d57175dbd6c08730f43c
---
>         image: quay.io/konflux-ci/build-service:f15262c4576a9b74e7a2296d8594da7230913558 
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
<h3>3: Development changes from afe65668 to a05260b8 on Mon Dec 9 18:03:04 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index dd0495a2..11226fec 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 57f360d3..26b1331f 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=f15262c4576a9b74e7a2296d8594da7230913558
+- https://github.com/konflux-ci/build-service/config/default?ref=55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: f15262c4576a9b74e7a2296d8594da7230913558
+  newTag: 55c26e6ca271d0d8e423d57175dbd6c08730f43c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-afe65668/development/components/build-service/development/kustomize.out.yaml
551c551
<         image: quay.io/konflux-ci/build-service:55c26e6ca271d0d8e423d57175dbd6c08730f43c
---
>         image: quay.io/konflux-ci/build-service:f15262c4576a9b74e7a2296d8594da7230913558 
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
<h3>4: Production changes from 1e5062b7 to afe65668 on Mon Dec 9 15:48:09 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index ba0120b3..deac35e3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ffa4ddf4..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1141,9 +1141,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index cec1c743..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 24593781..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1556,9 +1556,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 95fa05c4..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a2ee3e24..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 62eb0951..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 02437490..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bd45c294..52917d98 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1270,9 +1270,6 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b6199b05..ff60deed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7c36081b..26b32cb8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-1e5062b7/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
>         - -threadiness=32 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 1e5062b7 to afe65668 on Mon Dec 9 15:48:09 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index ba0120b3..deac35e3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ffa4ddf4..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1141,9 +1141,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index cec1c743..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 24593781..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1556,9 +1556,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 95fa05c4..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a2ee3e24..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 62eb0951..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 02437490..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bd45c294..52917d98 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1270,9 +1270,6 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b6199b05..ff60deed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7c36081b..26b32cb8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-1e5062b7/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1657a1658,1660
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1657a1658,1660
>         - -qps=50
>         - -burst=50
>         - -threadiness=32 
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
<h3>4: Development changes from 1e5062b7 to afe65668 on Mon Dec 9 15:48:09 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index ba0120b3..deac35e3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ffa4ddf4..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1141,9 +1141,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index cec1c743..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 24593781..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1556,9 +1556,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 95fa05c4..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a2ee3e24..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 62eb0951..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 02437490..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bd45c294..52917d98 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1270,9 +1270,6 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b6199b05..ff60deed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7c36081b..26b32cb8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-1e5062b7/development/components/pipeline-service/development/kustomize.out.yaml
1484a1485,1487
>         - -qps=50
>         - -burst=50
>         - -threadiness=32 
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
