# kustomize changes tracked by commits 
### This file generated at Thu Jul 11 08:06:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 86e0cf7b to cfc3a772 on Thu Jul 11 07:49:10 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 194768c1..04aaab63 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+- https://github.com/konflux-ci/image-controller/config/default?ref=8845d94392d509ad59d33438acb42695f173bd02
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+  newTag: 8845d94392d509ad59d33438acb42695f173bd02
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index cfd090d0..f9f72e45 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+- https://github.com/konflux-ci/image-controller/config/default?ref=8845d94392d509ad59d33438acb42695f173bd02
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+  newTag: 8845d94392d509ad59d33438acb42695f173bd02
 
 namespace: image-controller
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 86e0cf7b to cfc3a772 on Thu Jul 11 07:49:10 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 194768c1..04aaab63 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+- https://github.com/konflux-ci/image-controller/config/default?ref=8845d94392d509ad59d33438acb42695f173bd02
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+  newTag: 8845d94392d509ad59d33438acb42695f173bd02
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index cfd090d0..f9f72e45 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+- https://github.com/konflux-ci/image-controller/config/default?ref=8845d94392d509ad59d33438acb42695f173bd02
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+  newTag: 8845d94392d509ad59d33438acb42695f173bd02
 
 namespace: image-controller
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 86e0cf7b to cfc3a772 on Thu Jul 11 07:49:10 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 194768c1..04aaab63 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+- https://github.com/konflux-ci/image-controller/config/default?ref=8845d94392d509ad59d33438acb42695f173bd02
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+  newTag: 8845d94392d509ad59d33438acb42695f173bd02
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index cfd090d0..f9f72e45 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+- https://github.com/konflux-ci/image-controller/config/default?ref=8845d94392d509ad59d33438acb42695f173bd02
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 5b44f8dd00fca244daa7ebb11a610abbf68d3e5a
+  newTag: 8845d94392d509ad59d33438acb42695f173bd02
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-86e0cf7b/development/components/image-controller/development/kustomize.out.yaml
781c781
<         image: quay.io/konflux-ci/image-controller:8845d94392d509ad59d33438acb42695f173bd02
---
>         image: quay.io/konflux-ci/image-controller:5b44f8dd00fca244daa7ebb11a610abbf68d3e5a 
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
<h3>2: Production changes from fbb40f6d to 86e0cf7b on Thu Jul 11 05:36:55 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ba28aba1..f6a57560 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-fbb40f6d/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
./commit-fbb40f6d/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from fbb40f6d to 86e0cf7b on Thu Jul 11 05:36:55 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ba28aba1..f6a57560 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fbb40f6d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from fbb40f6d to 86e0cf7b on Thu Jul 11 05:36:55 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ba28aba1..f6a57560 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fbb40f6d/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650 
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
<h3>3: Production changes from 0a22d627 to fbb40f6d on Wed Jul 10 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (1694 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/kustomization.yaml b/argo-cd-apps/base/host/kustomization.yaml
index cd5fc000..5190868e 100644
--- a/argo-cd-apps/base/host/kustomization.yaml
+++ b/argo-cd-apps/base/host/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - segment-bridge
   - ingresscontroller
   - smee
+  - workspaces
 components:
   - ../../k-components/deploy-to-host-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/host/workspaces/kustomization.yaml b/argo-cd-apps/base/host/workspaces/kustomization.yaml
new file mode 100644
index 00000000..dc728213
--- /dev/null
+++ b/argo-cd-apps/base/host/workspaces/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
new file mode 100644
index 00000000..236dcbe7
--- /dev/null
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/workspaces
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: workspaces-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-workspaces
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index e1ff152e..080c610f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 892ad3c7..9bb8ff78 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -5,3 +5,8 @@ metadata:
   name: gitops
 $patch: delete
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 7018a027..d8dbb2e9 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -30,3 +30,8 @@ metadata:
   name: quality-dashboard
 $patch: delete
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b83ed571..c44c86d4 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -58,6 +58,11 @@ http {
             proxy_read_timeout 30m;
         }
 
+        location /apis/workspaces.konflux.io/ {
+            # Konflux Workspaces
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+        }
+
         location /wss/k8s/ {
             # Kube-API websockets
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
diff --git a/components/workspaces/base/kustomization.yaml b/components/workspaces/base/kustomization.yaml
new file mode 100644
index 00000000..4b3440f0
--- /dev/null
+++ b/components/workspaces/base/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- operator/config/default
+- server/config/default
diff --git a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
new file mode 100644
index 00000000..405d6ddb
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
@@ -0,0 +1,173 @@
+---
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    controller-gen.kubebuilder.io/version: v0.14.0
+  name: internalworkspaces.workspaces.konflux.io
+spec:
+  group: workspaces.konflux.io
+  names:
+    kind: InternalWorkspace
+    listKind: InternalWorkspaceList
+    plural: internalworkspaces
+    singular: internalworkspace
+  scope: Namespaced
+  versions:
+  - additionalPrinterColumns:
+    - jsonPath: .spec.visibility
+      name: Visibility
+      type: string
+    name: v1alpha1
+    schema:
+      openAPIV3Schema:
+        description: InternalWorkspace is the Schema for the workspaces API
+        properties:
+          apiVersion:
+            description: |-
+              APIVersion defines the versioned schema of this representation of an object.
+              Servers should convert recognized schemas to the latest internal value, and
+              may reject unrecognized values.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
+            type: string
+          kind:
+            description: |-
+              Kind is a string value representing the REST resource this object represents.
+              Servers may infer this from the endpoint the client submits requests to.
+              Cannot be updated.
+              In CamelCase.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
+            type: string
+          metadata:
+            type: object
+          spec:
+            description: InternalWorkspaceSpec defines the desired state of Workspace
+            properties:
+              displayName:
+                type: string
+              owner:
+                description: UserInfo contains information about a user identity
+                properties:
+                  jwtInfo:
+                    description: JwtInfo contains information extracted from the user
+                      JWT Token
+                    properties:
+                      email:
+                        type: string
+                      sub:
+                        type: string
+                      userId:
+                        type: string
+                    required:
+                    - email
+                    - sub
+                    - userId
+                    type: object
+                required:
+                - jwtInfo
+                type: object
+              visibility:
+                enum:
+                - community
+                - private
+                type: string
+            required:
+            - displayName
+            - owner
+            - visibility
+            type: object
+          status:
+            description: InternalWorkspaceStatus defines the observed state of Workspace
+            properties:
+              conditions:
+                items:
+                  description: "Condition contains details for one aspect of the current
+                    state of this API Resource.\n---\nThis struct is intended for
+                    direct use as an array at the field path .status.conditions.  For
+                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
+                    observations of a foo's current state.\n\t    // Known .status.conditions.type
+                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
+                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
+                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
+                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
+                    \   // other fields\n\t}"
+                  properties:
+                    lastTransitionTime:
+                      description: |-
+                        lastTransitionTime is the last time the condition transitioned from one status to another.
+                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
+                      format: date-time
+                      type: string
+                    message:
+                      description: |-
+                        message is a human readable message indicating details about the transition.
+                        This may be an empty string.
+                      maxLength: 32768
+                      type: string
+                    observedGeneration:
+                      description: |-
+                        observedGeneration represents the .metadata.generation that the condition was set based upon.
+                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
+                        with respect to the current state of the instance.
+                      format: int64
+                      minimum: 0
+                      type: integer
+                    reason:
+                      description: |-
+                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
+                        Producers of specific condition types may define expected values and meanings for this field,
+                        and whether the values are considered a guaranteed API.
+                        The value should be a CamelCase string.
+                        This field may not be empty.
+                      maxLength: 1024
+                      minLength: 1
+                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
+                      type: string
+                    status:
+                      description: status of the condition, one of True, False, Unknown.
+                      enum:
+                      - "True"
+                      - "False"
+                      - Unknown
+                      type: string
+                    type:
+                      description: |-
+                        type of condition in CamelCase or in foo.example.com/CamelCase.
+                        ---
+                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
+                        useful (see .node.status.conditions), the ability to deconflict is important.
+                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
+                      maxLength: 316
+                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
+                      type: string
+                  required:
+                  - lastTransitionTime
+                  - message
+                  - reason
+                  - status
+                  - type
+                  type: object
+                type: array
+              owner:
+                description: Owner contains information on the owner
+                properties:
+                  username:
+                    type: string
+                type: object
+              space:
+                description: Space contains information about the underlying Space
+                properties:
+                  isHome:
+                    type: boolean
+                  name:
+                    type: string
+                required:
+                - isHome
+                - name
+                type: object
+            type: object
+        type: object
+    served: true
+    storage: true
+    subresources:
+      status: {}
diff --git a/components/workspaces/base/operator/config/crd/kustomization.yaml b/components/workspaces/base/operator/config/crd/kustomization.yaml
new file mode 100644
index 00000000..5a877825
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- bases/workspaces.konflux.io_internalworkspaces.yaml
+#+kubebuilder:scaffold:crdkustomizeresource
+
+patches: []
+# [WEBHOOK] To enable webhook, uncomment all the sections with [WEBHOOK] prefix.
+# patches here are for enabling the conversion webhook for each CRD
+#- patches/webhook_in_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizewebhookpatch
+
+# [CERTMANAGER] To enable cert-manager, uncomment all the sections with [CERTMANAGER] prefix.
+# patches here are for enabling the CA injection for each CRD
+#- patches/cainjection_in_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizecainjectionpatch
+
+# the following config is for teaching kustomize how to do kustomization for CRDs.
+configurations:
+- kustomizeconfig.yaml
diff --git a/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml b/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml
new file mode 100644
index 00000000..ec5c150a
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml
@@ -0,0 +1,19 @@
+# This file is for teaching kustomize how to substitute name and namespace reference in CRD
+nameReference:
+- kind: Service
+  version: v1
+  fieldSpecs:
+  - kind: CustomResourceDefinition
+    version: v1
+    group: apiextensions.k8s.io
+    path: spec/conversion/webhook/clientConfig/service/name
+
+namespace:
+- kind: CustomResourceDefinition
+  version: v1
+  group: apiextensions.k8s.io
+  path: spec/conversion/webhook/clientConfig/service/namespace
+  create: false
+
+varReference:
+- path: metadata/annotations
diff --git a/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml b/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
new file mode 100644
index 00000000..4e01dc55
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
@@ -0,0 +1,7 @@
+# The following patch adds a directive for certmanager to inject CA into the CRD
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    cert-manager.io/inject-ca-from: $(CERTIFICATE_NAMESPACE)/$(CERTIFICATE_NAME)
+  name: workspaces.workspaces.io
diff --git a/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml b/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml
new file mode 100644
index 00000000..7684f103
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml
@@ -0,0 +1,16 @@
+# The following patch enables a conversion webhook for the CRD
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  name: workspaces.workspaces.io
+spec:
+  conversion:
+    strategy: Webhook
+    webhook:
+      clientConfig:
+        service:
+          namespace: system
+          name: webhook-service
+          path: /convert
+      conversionReviewVersions:
+      - v1
diff --git a/components/workspaces/base/operator/config/default/kustomization.yaml b/components/workspaces/base/operator/config/default/kustomization.yaml
new file mode 100644
index 00000000..32bd602f
--- /dev/null
+++ b/components/workspaces/base/operator/config/default/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: workspaces-system
+namePrefix: workspaces-
+resources:
+- ../crd
+- ../rbac
+- ../manager
+patches:
+- path: manager_auth_proxy_patch.yaml
diff --git a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
new file mode 100644
index 00000000..bc2f7500
--- /dev/null
+++ b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
@@ -0,0 +1,54 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+              - matchExpressions:
+                - key: kubernetes.io/arch
+                  operator: In
+                  values:
+                    - amd64
+                    # - arm64
+                    # - ppc64le
+                    # - s390x
+                - key: kubernetes.io/os
+                  operator: In
+                  values:
+                    - linux
+      containers:
+      - name: kube-rbac-proxy
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
+        args:
+        - "--secure-listen-address=0.0.0.0:8443"
+        - "--upstream=http://127.0.0.1:8080/"
+        - "--logtostderr=true"
+        - "--v=0"
+        ports:
+        - containerPort: 8443
+          protocol: TCP
+          name: https
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+      - name: manager
+        args:
+        - "--health-probe-bind-address=:8081"
+        - "--metrics-bind-address=127.0.0.1:8080"
+        - "--leader-elect"
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
new file mode 100644
index 00000000..b0f27a4b
--- /dev/null
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- manager.yaml
+images:
+- name: controller
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2
+configMapGenerator:
+- behavior: replace
+  literals:
+  - kubesaw.namespace=toolchain-host-operator
+  name: operator-config
diff --git a/components/workspaces/base/operator/config/manager/manager.yaml b/components/workspaces/base/operator/config/manager/manager.yaml
new file mode 100644
index 00000000..4594a54b
--- /dev/null
+++ b/components/workspaces/base/operator/config/manager/manager.yaml
@@ -0,0 +1,104 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: namespace
+    app.kubernetes.io/instance: system 
+    app.kubernetes.io/component: manager
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: system
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: deployment
+    app.kubernetes.io/instance: controller-manager
+    app.kubernetes.io/component: manager
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+spec:
+  selector:
+    matchLabels:
+      control-plane: controller-manager
+  replicas: 1
+  template:
+    metadata:
+      annotations:
+        kubectl.kubernetes.io/default-container: manager
+      labels:
+        control-plane: controller-manager
+    spec:
+      securityContext:
+        runAsNonRoot: true
+        # TODO(user): For common cases that do not require escalating privileges
+        # it is recommended to ensure that all your Pods/Containers are restrictive.
+        # More info: https://kubernetes.io/docs/concepts/security/pod-security-standards/#restricted
+        # Please uncomment the following code if your project does NOT have to work on old Kubernetes
+        # versions < 1.19 or on vendors versions which do NOT support this field by default (i.e. Openshift < 4.11 ).
+        # seccompProfile:
+        #   type: RuntimeDefault
+      containers:
+      - name: manager
+        command:
+        - /manager
+        args:
+        - "--leader-elect"
+        image: controller:index
+        imagePullPolicy: IfNotPresent
+        env:
+        - name: KUBESAW_NAMESPACE
+          valueFrom:
+            configMapKeyRef:
+              name: workspaces-operator-config
+              key: kubesaw.namespace
+        - name: WORKSPACES_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8081
+          initialDelaySeconds: 15
+          periodSeconds: 20
+        readinessProbe:
+          httpGet:
+            path: /readyz
+            port: 8081
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        # TODO(user): Configure the resources accordingly based on the project requirements.
+        # More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+        ports:
+        - containerPort: 8081
+          name: http
+      serviceAccountName: controller-manager
+      terminationGracePeriodSeconds: 10
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: operator-config
+data:
+  kubesaw.namespace: toolchain-host-operator
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
new file mode 100644
index 00000000..1993ada2
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
@@ -0,0 +1,16 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrole
+    app.kubernetes.io/instance: metrics-reader
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: metrics-reader
+rules:
+- nonResourceURLs:
+  - "/metrics"
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml
new file mode 100644
index 00000000..606c8411
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml
@@ -0,0 +1,24 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrole
+    app.kubernetes.io/instance: proxy-role
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: proxy-role
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml
new file mode 100644
index 00000000..729d0a19
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrolebinding
+    app.kubernetes.io/instance: proxy-rolebinding
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: proxy-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: proxy-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
new file mode 100644
index 00000000..e624d7e2
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
@@ -0,0 +1,21 @@
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: service
+    app.kubernetes.io/instance: controller-manager-metrics-service
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: controller-manager-metrics-service
+  namespace: system
+spec:
+  ports:
+  - name: https
+    port: 8443
+    protocol: TCP
+    targetPort: https
+  selector:
+    control-plane: controller-manager
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
new file mode 100644
index 00000000..f5cb6303
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
@@ -0,0 +1,27 @@
+# permissions for end users to edit workspaces.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+  name: workspace-editor-role
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
new file mode 100644
index 00000000..dcd07c69
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
@@ -0,0 +1,23 @@
+# permissions for end users to view workspaces.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+  name: workspace-viewer-role
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/kustomization.yaml b/components/workspaces/base/operator/config/rbac/kustomization.yaml
new file mode 100644
index 00000000..fb5a2b88
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/kustomization.yaml
@@ -0,0 +1,18 @@
+resources:
+# All RBAC will be applied under this service account in
+# the deployment namespace. You may comment out this resource
+# if your manager will use a service account that exists at
+# runtime. Be sure to update RoleBinding and ClusterRoleBinding
+# subjects if changing service account names.
+- service_account.yaml
+- role.yaml
+- role_binding.yaml
+- leader_election_role.yaml
+- leader_election_role_binding.yaml
+# Comment the following 4 lines if you want to disable
+# the auth proxy (https://github.com/brancz/kube-rbac-proxy)
+# which protects your /metrics endpoint.
+# - auth_proxy_service.yaml
+# - auth_proxy_role.yaml
+# - auth_proxy_role_binding.yaml
+# - auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/base/operator/config/rbac/leader_election_role.yaml b/components/workspaces/base/operator/config/rbac/leader_election_role.yaml
new file mode 100644
index 00000000..b11092a1
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/leader_election_role.yaml
@@ -0,0 +1,44 @@
+# permissions to do leader election.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/name: role
+    app.kubernetes.io/instance: leader-election-role
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: leader-election-role
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch
+  - create
+  - update
+  - patch
+  - delete
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - watch
+  - create
+  - update
+  - patch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - create
+  - patch
diff --git a/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml b/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml
new file mode 100644
index 00000000..63d84233
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: rolebinding
+    app.kubernetes.io/instance: leader-election-rolebinding
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: leader-election-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: leader-election-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
new file mode 100644
index 00000000..fd9a514a
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -0,0 +1,89 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: manager-role
+rules:
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - roles
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spacebindings
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spaces
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - create
+  - delete
+  - deletecollection
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/finalizers
+  verbs:
+  - update
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
+  - patch
+  - update
diff --git a/components/workspaces/base/operator/config/rbac/role_binding.yaml b/components/workspaces/base/operator/config/rbac/role_binding.yaml
new file mode 100644
index 00000000..21dbb96f
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrolebinding
+    app.kubernetes.io/instance: manager-rolebinding
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: manager-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manager-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/service_account.yaml b/components/workspaces/base/operator/config/rbac/service_account.yaml
new file mode 100644
index 00000000..f1a705d4
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/service_account.yaml
@@ -0,0 +1,12 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  labels:
+    app.kubernetes.io/name: serviceaccount
+    app.kubernetes.io/instance: controller-manager
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml b/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
new file mode 100644
index 00000000..26fdb2bc
--- /dev/null
+++ b/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
@@ -0,0 +1,147 @@
+---
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    controller-gen.kubebuilder.io/version: v0.14.0
+  name: workspaces.workspaces.konflux.io
+spec:
+  group: workspaces.konflux.io
+  names:
+    kind: Workspace
+    listKind: WorkspaceList
+    plural: workspaces
+    singular: workspace
+  scope: Namespaced
+  versions:
+  - additionalPrinterColumns:
+    - jsonPath: .spec.visibility
+      name: Visibility
+      type: string
+    name: v1alpha1
+    schema:
+      openAPIV3Schema:
+        description: Workspace is the Schema for the workspaces API
+        properties:
+          apiVersion:
+            description: |-
+              APIVersion defines the versioned schema of this representation of an object.
+              Servers should convert recognized schemas to the latest internal value, and
+              may reject unrecognized values.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
+            type: string
+          kind:
+            description: |-
+              Kind is a string value representing the REST resource this object represents.
+              Servers may infer this from the endpoint the client submits requests to.
+              Cannot be updated.
+              In CamelCase.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
+            type: string
+          metadata:
+            type: object
+          spec:
+            description: WorkspaceSpec defines the desired state of Workspace
+            properties:
+              visibility:
+                enum:
+                - community
+                - private
+                type: string
+            required:
+            - visibility
+            type: object
+          status:
+            description: WorkspaceStatus defines the observed state of Workspace
+            properties:
+              conditions:
+                items:
+                  description: "Condition contains details for one aspect of the current
+                    state of this API Resource.\n---\nThis struct is intended for
+                    direct use as an array at the field path .status.conditions.  For
+                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
+                    observations of a foo's current state.\n\t    // Known .status.conditions.type
+                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
+                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
+                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
+                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
+                    \   // other fields\n\t}"
+                  properties:
+                    lastTransitionTime:
+                      description: |-
+                        lastTransitionTime is the last time the condition transitioned from one status to another.
+                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
+                      format: date-time
+                      type: string
+                    message:
+                      description: |-
+                        message is a human readable message indicating details about the transition.
+                        This may be an empty string.
+                      maxLength: 32768
+                      type: string
+                    observedGeneration:
+                      description: |-
+                        observedGeneration represents the .metadata.generation that the condition was set based upon.
+                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
+                        with respect to the current state of the instance.
+                      format: int64
+                      minimum: 0
+                      type: integer
+                    reason:
+                      description: |-
+                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
+                        Producers of specific condition types may define expected values and meanings for this field,
+                        and whether the values are considered a guaranteed API.
+                        The value should be a CamelCase string.
+                        This field may not be empty.
+                      maxLength: 1024
+                      minLength: 1
+                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
+                      type: string
+                    status:
+                      description: status of the condition, one of True, False, Unknown.
+                      enum:
+                      - "True"
+                      - "False"
+                      - Unknown
+                      type: string
+                    type:
+                      description: |-
+                        type of condition in CamelCase or in foo.example.com/CamelCase.
+                        ---
+                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
+                        useful (see .node.status.conditions), the ability to deconflict is important.
+                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
+                      maxLength: 316
+                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
+                      type: string
+                  required:
+                  - lastTransitionTime
+                  - message
+                  - reason
+                  - status
+                  - type
+                  type: object
+                type: array
+              owner:
+                description: UserInfoStatus User info stored in the status
+                properties:
+                  email:
+                    type: string
+                required:
+                - email
+                type: object
+              space:
+                description: SpaceInfo Information about a Space
+                properties:
+                  name:
+                    type: string
+                required:
+                - name
+                type: object
+            type: object
+        type: object
+    served: true
+    storage: true
+    subresources:
+      status: {}
diff --git a/components/workspaces/base/server/config/crd/kustomization.yaml b/components/workspaces/base/server/config/crd/kustomization.yaml
new file mode 100644
index 00000000..5534b22c
--- /dev/null
+++ b/components/workspaces/base/server/config/crd/kustomization.yaml
@@ -0,0 +1,7 @@
+# This kustomization.yaml is not intended to be run by itself,
+# since it depends on service name and namespace that are out of this kustomize package.
+# It should be run by config/default
+resources:
+- bases/workspaces.konflux.io_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizeresource
+
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
new file mode 100644
index 00000000..a1557893
--- /dev/null
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -0,0 +1,86 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../crd
+- ../rbac
+- ../server
+namePrefix: workspaces-
+
+configMapGenerator:
+- literals:
+  - toolchain_namespace=toolchain-host-operator
+  name: rest-api-server-cm
+  options:
+    disableNameSuffixHash: true
+- behavior: replace
+  literals:
+  - log.level=0
+  - kubesaw.namespace=toolchain-host-operator
+  name: rest-api-server-config
+
+      # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
+      # create Role and RoleBinding to read UserSignups into toolchain-host-operator
+      # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
+      # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
+replacements:
+- source:
+    fieldPath: data.toolchain_namespace
+    kind: ConfigMap
+    name: rest-api-server-cm
+    options:
+      create: true
+  targets:
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:spacebinding-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: Role
+      name: spacebinding-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:usersignup-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: Role
+      name: usersignup-reader
+- source:
+    fieldPath: metadata.namespace
+    kind: ServiceAccount
+    name: rest-api-server
+  targets:
+  - fieldPaths:
+    - subjects.0.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:spacebinding-reader
+  - fieldPaths:
+    - subjects.0.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:usersignup-reader
+namespace: workspaces-system
diff --git a/components/workspaces/base/server/config/rbac/kustomization.yaml b/components/workspaces/base/server/config/rbac/kustomization.yaml
new file mode 100644
index 00000000..5f78348a
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- role_spacebinding_reader.yaml
+- role_usersignup_reader.yaml
+- role_workspace_server_editor.yaml
+- rolebinding_spacebinding_reader.yaml
+- rolebinding_usersignup_reader.yaml
+- rolebinding_workspace_server_editor.yaml
+- serviceaccount.yaml
diff --git a/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml b/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml
new file mode 100644
index 00000000..e602e374
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: spacebinding-reader
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spacebindings
+  verbs:
+  - list
+  - get
+  - watch
diff --git a/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml b/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml
new file mode 100644
index 00000000..60eba82a
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: usersignup-reader
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - list
+  - get
+  - watch
diff --git a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
new file mode 100644
index 00000000..749a74e3
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
@@ -0,0 +1,15 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspace-server-editor
+  namespace: system
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - list
+  - get
+  - watch
+  - update
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml b/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
new file mode 100644
index 00000000..889c039f
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:spacebinding-reader
+  namespace: system
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: spacebinding-reader
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml b/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml
new file mode 100644
index 00000000..dd1ddf76
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:usersignup-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: usersignup-reader
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
new file mode 100644
index 00000000..e9f2eae5
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:workspace-server-editor
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspace-server-editor
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/serviceaccount.yaml b/components/workspaces/base/server/config/rbac/serviceaccount.yaml
new file mode 100644
index 00000000..3ea73e85
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/serviceaccount.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
new file mode 100644
index 00000000..e73cc159
--- /dev/null
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -0,0 +1,116 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: rest-api-server
+  name: rest-api-server
+  namespace: system
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: rest-api-server
+  template:
+    metadata:
+      labels:
+        app: rest-api-server
+    spec:
+      securityContext:
+        runAsNonRoot: true
+      containers:
+      - image: traefik:v2.11.0
+        name: proxy
+        imagePullPolicy: IfNotPresent
+        volumeMounts:
+        - name: "traefik-static-config"
+          mountPath: "/etc/traefik"
+        - name: "traefik-dynamic-config"
+          mountPath: "/etc/traefik/dynamic"
+        - name: "traefik-plugin-storage"
+          mountPath: "/plugins-storage" 
+        securityContext:
+          readOnlyRootFilesystem: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      - image: workspaces/rest-api:index
+        name: rest-api
+        imagePullPolicy: IfNotPresent
+        env:
+        - name: KUBESAW_NAMESPACE
+          valueFrom:
+            configMapKeyRef:
+              name: rest-api-server-config
+              key: kubesaw.namespace
+        - name: LOG_LEVEL
+          valueFrom:
+            configMapKeyRef:
+              name: rest-api-server-config
+              key: log.level
+        - name: WORKSPACES_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        # livenessProbe:
+        #   httpGet:
+        #     path: /healthz
+        #     port: 8080
+        #   initialDelaySeconds: 15
+        #   periodSeconds: 20
+        # readinessProbe:
+        #   httpGet:
+        #     path: /readyz
+        #     port: 8081
+        #   initialDelaySeconds: 5
+        #   periodSeconds: 10
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+        ports:
+          - containerPort: 8080
+            name: http
+      volumes:
+      - name: "traefik-plugin-storage"
+        emptyDir:
+          sizeLimit: 20Mi
+      - name: "traefik-static-config"
+        configMap:
+          name: "traefik-sidecar-static-config"
+      - name: "traefik-dynamic-config"
+        configMap:
+          name: "traefik-sidecar-dynamic-config"
+      serviceAccountName: rest-api-server
+      terminationGracePeriodSeconds: 60
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: rest-api-server-config
+data:
+  kubesaw.namespace=system
+---
+apiVersion: v1
+data: {}
+kind: ConfigMap
+metadata:
+  name: traefik-sidecar-static-config
+---
+apiVersion: v1
+data: {}
+kind: ConfigMap
+metadata:
+  name: traefik-sidecar-dynamic-config
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
new file mode 100644
index 00000000..6dfae938
--- /dev/null
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -0,0 +1,22 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- deployment.yaml
+- service.yaml
+configMapGenerator:
+- behavior: merge
+  files:
+  - traefik.yaml=./proxy-config/traefik.yaml
+  name: traefik-sidecar-static-config
+  options:
+    disableNameSuffixHash: true
+- behavior: merge
+  files:
+  - config.yaml=./proxy-config/dynamic/config.yaml
+  name: traefik-sidecar-dynamic-config
+  options:
+    disableNameSuffixHash: true
+images:
+- name: workspaces/rest-api
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
new file mode 100644
index 00000000..90715b38
--- /dev/null
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -0,0 +1,31 @@
+http:
+  services:
+    web:
+      loadBalancer:
+        servers:
+        - url: "http://localhost:8080/"
+  routers:
+    app-apis:
+      service: web
+      entrypoints:
+      - web
+      rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
+      middlewares:
+        - jwt-authorizer
+    app-healthz:
+      service: web
+      entrypoints:
+      - web
+      rule: Path(`/healthz`)
+
+# Middlewares
+  middlewares:
+
+# JWT Auth
+    jwt-authorizer:
+      plugin:
+        jwt:
+          required: true
+          keys: []
+          jwtHeaders:
+            X-Subject: sub
diff --git a/components/workspaces/base/server/config/server/proxy-config/traefik.yaml b/components/workspaces/base/server/config/server/proxy-config/traefik.yaml
new file mode 100644
index 00000000..25b22119
--- /dev/null
+++ b/components/workspaces/base/server/config/server/proxy-config/traefik.yaml
@@ -0,0 +1,32 @@
+entryPoints:
+  web:
+    address: ":8000"
+  metrics:
+    address: ":8001"
+providers:
+  file:
+    directory: /etc/traefik/dynamic/
+    watch: true
+# Configure Logger
+log:
+  level: INFO
+  format: json
+# Print acess logs
+accessLog:
+  format: json
+# enable Prometheus metrics
+metrics:
+  prometheus:
+    entryPoint: metrics
+# enable Jaeger tracing
+# tracing:
+#   jaeger: {}
+experimental:
+  plugins:
+    jwt:
+      moduleName: github.com/traefik-plugins/traefik-jwt-plugin
+      version: v0.7.1
+authSources:
+  jwtSource:
+    jwt:
+      jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
diff --git a/components/workspaces/base/server/config/server/service.yaml b/components/workspaces/base/server/config/server/service.yaml
new file mode 100644
index 00000000..1399b7bc
--- /dev/null
+++ b/components/workspaces/base/server/config/server/service.yaml
@@ -0,0 +1,35 @@
+kind: Service
+apiVersion: v1
+metadata:
+  name: rest-api-server
+  namespace: system
+  labels:
+    provider: workspaces
+    run: rest-api-server
+spec:
+  ports:
+  - protocol: TCP
+    port: 8000
+    targetPort: 8000
+  selector:
+    app: rest-api-server
+  type: ClusterIP
+  sessionAffinity: None
+---
+kind: Service
+apiVersion: v1
+metadata:
+  name: rest-api-server-metrics
+  namespace: system
+  labels:
+    provider: workspaces
+    run: rest-api-server
+spec:
+  ports:
+  - protocol: TCP
+    port: 8001
+    targetPort: 8001
+  selector:
+    app: rest-api-server
+  type: ClusterIP
+  sessionAffinity: None
diff --git a/components/workspaces/staging/kustomization.yaml b/components/workspaces/staging/kustomization.yaml
new file mode 100644
index 00000000..84a57038
--- /dev/null
+++ b/components/workspaces/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: konflux-workspaces
+resources:
+- ../base/
+images:
+- name: workspaces/rest-api
+  newName: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha2
+- name: controller
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-0a22d627/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
102,106d101
<             location /apis/workspaces.konflux.io/ {
<                 # Konflux Workspaces
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
124c119
<   name: proxy-fd4m7g5685
---
>   name: proxy-mk27dcmc6f
618c613
<           name: proxy-fd4m7g5685
---
>           name: proxy-mk27dcmc6f
./commit-0a22d627/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
102,106d101
<             location /apis/workspaces.konflux.io/ {
<                 # Konflux Workspaces
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
124c119
<   name: proxy-fd4m7g5685
---
>   name: proxy-mk27dcmc6f
618c613
<           name: proxy-fd4m7g5685
---
>           name: proxy-mk27dcmc6f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 0a22d627 to fbb40f6d on Wed Jul 10 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (1694 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/kustomization.yaml b/argo-cd-apps/base/host/kustomization.yaml
index cd5fc000..5190868e 100644
--- a/argo-cd-apps/base/host/kustomization.yaml
+++ b/argo-cd-apps/base/host/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - segment-bridge
   - ingresscontroller
   - smee
+  - workspaces
 components:
   - ../../k-components/deploy-to-host-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/host/workspaces/kustomization.yaml b/argo-cd-apps/base/host/workspaces/kustomization.yaml
new file mode 100644
index 00000000..dc728213
--- /dev/null
+++ b/argo-cd-apps/base/host/workspaces/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
new file mode 100644
index 00000000..236dcbe7
--- /dev/null
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/workspaces
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: workspaces-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-workspaces
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index e1ff152e..080c610f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 892ad3c7..9bb8ff78 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -5,3 +5,8 @@ metadata:
   name: gitops
 $patch: delete
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 7018a027..d8dbb2e9 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -30,3 +30,8 @@ metadata:
   name: quality-dashboard
 $patch: delete
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b83ed571..c44c86d4 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -58,6 +58,11 @@ http {
             proxy_read_timeout 30m;
         }
 
+        location /apis/workspaces.konflux.io/ {
+            # Konflux Workspaces
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+        }
+
         location /wss/k8s/ {
             # Kube-API websockets
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
diff --git a/components/workspaces/base/kustomization.yaml b/components/workspaces/base/kustomization.yaml
new file mode 100644
index 00000000..4b3440f0
--- /dev/null
+++ b/components/workspaces/base/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- operator/config/default
+- server/config/default
diff --git a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
new file mode 100644
index 00000000..405d6ddb
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
@@ -0,0 +1,173 @@
+---
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    controller-gen.kubebuilder.io/version: v0.14.0
+  name: internalworkspaces.workspaces.konflux.io
+spec:
+  group: workspaces.konflux.io
+  names:
+    kind: InternalWorkspace
+    listKind: InternalWorkspaceList
+    plural: internalworkspaces
+    singular: internalworkspace
+  scope: Namespaced
+  versions:
+  - additionalPrinterColumns:
+    - jsonPath: .spec.visibility
+      name: Visibility
+      type: string
+    name: v1alpha1
+    schema:
+      openAPIV3Schema:
+        description: InternalWorkspace is the Schema for the workspaces API
+        properties:
+          apiVersion:
+            description: |-
+              APIVersion defines the versioned schema of this representation of an object.
+              Servers should convert recognized schemas to the latest internal value, and
+              may reject unrecognized values.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
+            type: string
+          kind:
+            description: |-
+              Kind is a string value representing the REST resource this object represents.
+              Servers may infer this from the endpoint the client submits requests to.
+              Cannot be updated.
+              In CamelCase.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
+            type: string
+          metadata:
+            type: object
+          spec:
+            description: InternalWorkspaceSpec defines the desired state of Workspace
+            properties:
+              displayName:
+                type: string
+              owner:
+                description: UserInfo contains information about a user identity
+                properties:
+                  jwtInfo:
+                    description: JwtInfo contains information extracted from the user
+                      JWT Token
+                    properties:
+                      email:
+                        type: string
+                      sub:
+                        type: string
+                      userId:
+                        type: string
+                    required:
+                    - email
+                    - sub
+                    - userId
+                    type: object
+                required:
+                - jwtInfo
+                type: object
+              visibility:
+                enum:
+                - community
+                - private
+                type: string
+            required:
+            - displayName
+            - owner
+            - visibility
+            type: object
+          status:
+            description: InternalWorkspaceStatus defines the observed state of Workspace
+            properties:
+              conditions:
+                items:
+                  description: "Condition contains details for one aspect of the current
+                    state of this API Resource.\n---\nThis struct is intended for
+                    direct use as an array at the field path .status.conditions.  For
+                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
+                    observations of a foo's current state.\n\t    // Known .status.conditions.type
+                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
+                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
+                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
+                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
+                    \   // other fields\n\t}"
+                  properties:
+                    lastTransitionTime:
+                      description: |-
+                        lastTransitionTime is the last time the condition transitioned from one status to another.
+                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
+                      format: date-time
+                      type: string
+                    message:
+                      description: |-
+                        message is a human readable message indicating details about the transition.
+                        This may be an empty string.
+                      maxLength: 32768
+                      type: string
+                    observedGeneration:
+                      description: |-
+                        observedGeneration represents the .metadata.generation that the condition was set based upon.
+                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
+                        with respect to the current state of the instance.
+                      format: int64
+                      minimum: 0
+                      type: integer
+                    reason:
+                      description: |-
+                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
+                        Producers of specific condition types may define expected values and meanings for this field,
+                        and whether the values are considered a guaranteed API.
+                        The value should be a CamelCase string.
+                        This field may not be empty.
+                      maxLength: 1024
+                      minLength: 1
+                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
+                      type: string
+                    status:
+                      description: status of the condition, one of True, False, Unknown.
+                      enum:
+                      - "True"
+                      - "False"
+                      - Unknown
+                      type: string
+                    type:
+                      description: |-
+                        type of condition in CamelCase or in foo.example.com/CamelCase.
+                        ---
+                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
+                        useful (see .node.status.conditions), the ability to deconflict is important.
+                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
+                      maxLength: 316
+                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
+                      type: string
+                  required:
+                  - lastTransitionTime
+                  - message
+                  - reason
+                  - status
+                  - type
+                  type: object
+                type: array
+              owner:
+                description: Owner contains information on the owner
+                properties:
+                  username:
+                    type: string
+                type: object
+              space:
+                description: Space contains information about the underlying Space
+                properties:
+                  isHome:
+                    type: boolean
+                  name:
+                    type: string
+                required:
+                - isHome
+                - name
+                type: object
+            type: object
+        type: object
+    served: true
+    storage: true
+    subresources:
+      status: {}
diff --git a/components/workspaces/base/operator/config/crd/kustomization.yaml b/components/workspaces/base/operator/config/crd/kustomization.yaml
new file mode 100644
index 00000000..5a877825
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- bases/workspaces.konflux.io_internalworkspaces.yaml
+#+kubebuilder:scaffold:crdkustomizeresource
+
+patches: []
+# [WEBHOOK] To enable webhook, uncomment all the sections with [WEBHOOK] prefix.
+# patches here are for enabling the conversion webhook for each CRD
+#- patches/webhook_in_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizewebhookpatch
+
+# [CERTMANAGER] To enable cert-manager, uncomment all the sections with [CERTMANAGER] prefix.
+# patches here are for enabling the CA injection for each CRD
+#- patches/cainjection_in_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizecainjectionpatch
+
+# the following config is for teaching kustomize how to do kustomization for CRDs.
+configurations:
+- kustomizeconfig.yaml
diff --git a/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml b/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml
new file mode 100644
index 00000000..ec5c150a
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml
@@ -0,0 +1,19 @@
+# This file is for teaching kustomize how to substitute name and namespace reference in CRD
+nameReference:
+- kind: Service
+  version: v1
+  fieldSpecs:
+  - kind: CustomResourceDefinition
+    version: v1
+    group: apiextensions.k8s.io
+    path: spec/conversion/webhook/clientConfig/service/name
+
+namespace:
+- kind: CustomResourceDefinition
+  version: v1
+  group: apiextensions.k8s.io
+  path: spec/conversion/webhook/clientConfig/service/namespace
+  create: false
+
+varReference:
+- path: metadata/annotations
diff --git a/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml b/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
new file mode 100644
index 00000000..4e01dc55
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
@@ -0,0 +1,7 @@
+# The following patch adds a directive for certmanager to inject CA into the CRD
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    cert-manager.io/inject-ca-from: $(CERTIFICATE_NAMESPACE)/$(CERTIFICATE_NAME)
+  name: workspaces.workspaces.io
diff --git a/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml b/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml
new file mode 100644
index 00000000..7684f103
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml
@@ -0,0 +1,16 @@
+# The following patch enables a conversion webhook for the CRD
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  name: workspaces.workspaces.io
+spec:
+  conversion:
+    strategy: Webhook
+    webhook:
+      clientConfig:
+        service:
+          namespace: system
+          name: webhook-service
+          path: /convert
+      conversionReviewVersions:
+      - v1
diff --git a/components/workspaces/base/operator/config/default/kustomization.yaml b/components/workspaces/base/operator/config/default/kustomization.yaml
new file mode 100644
index 00000000..32bd602f
--- /dev/null
+++ b/components/workspaces/base/operator/config/default/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: workspaces-system
+namePrefix: workspaces-
+resources:
+- ../crd
+- ../rbac
+- ../manager
+patches:
+- path: manager_auth_proxy_patch.yaml
diff --git a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
new file mode 100644
index 00000000..bc2f7500
--- /dev/null
+++ b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
@@ -0,0 +1,54 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+              - matchExpressions:
+                - key: kubernetes.io/arch
+                  operator: In
+                  values:
+                    - amd64
+                    # - arm64
+                    # - ppc64le
+                    # - s390x
+                - key: kubernetes.io/os
+                  operator: In
+                  values:
+                    - linux
+      containers:
+      - name: kube-rbac-proxy
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
+        args:
+        - "--secure-listen-address=0.0.0.0:8443"
+        - "--upstream=http://127.0.0.1:8080/"
+        - "--logtostderr=true"
+        - "--v=0"
+        ports:
+        - containerPort: 8443
+          protocol: TCP
+          name: https
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+      - name: manager
+        args:
+        - "--health-probe-bind-address=:8081"
+        - "--metrics-bind-address=127.0.0.1:8080"
+        - "--leader-elect"
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
new file mode 100644
index 00000000..b0f27a4b
--- /dev/null
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- manager.yaml
+images:
+- name: controller
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2
+configMapGenerator:
+- behavior: replace
+  literals:
+  - kubesaw.namespace=toolchain-host-operator
+  name: operator-config
diff --git a/components/workspaces/base/operator/config/manager/manager.yaml b/components/workspaces/base/operator/config/manager/manager.yaml
new file mode 100644
index 00000000..4594a54b
--- /dev/null
+++ b/components/workspaces/base/operator/config/manager/manager.yaml
@@ -0,0 +1,104 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: namespace
+    app.kubernetes.io/instance: system 
+    app.kubernetes.io/component: manager
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: system
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: deployment
+    app.kubernetes.io/instance: controller-manager
+    app.kubernetes.io/component: manager
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+spec:
+  selector:
+    matchLabels:
+      control-plane: controller-manager
+  replicas: 1
+  template:
+    metadata:
+      annotations:
+        kubectl.kubernetes.io/default-container: manager
+      labels:
+        control-plane: controller-manager
+    spec:
+      securityContext:
+        runAsNonRoot: true
+        # TODO(user): For common cases that do not require escalating privileges
+        # it is recommended to ensure that all your Pods/Containers are restrictive.
+        # More info: https://kubernetes.io/docs/concepts/security/pod-security-standards/#restricted
+        # Please uncomment the following code if your project does NOT have to work on old Kubernetes
+        # versions < 1.19 or on vendors versions which do NOT support this field by default (i.e. Openshift < 4.11 ).
+        # seccompProfile:
+        #   type: RuntimeDefault
+      containers:
+      - name: manager
+        command:
+        - /manager
+        args:
+        - "--leader-elect"
+        image: controller:index
+        imagePullPolicy: IfNotPresent
+        env:
+        - name: KUBESAW_NAMESPACE
+          valueFrom:
+            configMapKeyRef:
+              name: workspaces-operator-config
+              key: kubesaw.namespace
+        - name: WORKSPACES_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8081
+          initialDelaySeconds: 15
+          periodSeconds: 20
+        readinessProbe:
+          httpGet:
+            path: /readyz
+            port: 8081
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        # TODO(user): Configure the resources accordingly based on the project requirements.
+        # More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+        ports:
+        - containerPort: 8081
+          name: http
+      serviceAccountName: controller-manager
+      terminationGracePeriodSeconds: 10
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: operator-config
+data:
+  kubesaw.namespace: toolchain-host-operator
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
new file mode 100644
index 00000000..1993ada2
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
@@ -0,0 +1,16 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrole
+    app.kubernetes.io/instance: metrics-reader
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: metrics-reader
+rules:
+- nonResourceURLs:
+  - "/metrics"
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml
new file mode 100644
index 00000000..606c8411
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml
@@ -0,0 +1,24 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrole
+    app.kubernetes.io/instance: proxy-role
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: proxy-role
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml
new file mode 100644
index 00000000..729d0a19
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrolebinding
+    app.kubernetes.io/instance: proxy-rolebinding
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: proxy-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: proxy-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
new file mode 100644
index 00000000..e624d7e2
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
@@ -0,0 +1,21 @@
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: service
+    app.kubernetes.io/instance: controller-manager-metrics-service
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: controller-manager-metrics-service
+  namespace: system
+spec:
+  ports:
+  - name: https
+    port: 8443
+    protocol: TCP
+    targetPort: https
+  selector:
+    control-plane: controller-manager
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
new file mode 100644
index 00000000..f5cb6303
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
@@ -0,0 +1,27 @@
+# permissions for end users to edit workspaces.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+  name: workspace-editor-role
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
new file mode 100644
index 00000000..dcd07c69
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
@@ -0,0 +1,23 @@
+# permissions for end users to view workspaces.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+  name: workspace-viewer-role
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/kustomization.yaml b/components/workspaces/base/operator/config/rbac/kustomization.yaml
new file mode 100644
index 00000000..fb5a2b88
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/kustomization.yaml
@@ -0,0 +1,18 @@
+resources:
+# All RBAC will be applied under this service account in
+# the deployment namespace. You may comment out this resource
+# if your manager will use a service account that exists at
+# runtime. Be sure to update RoleBinding and ClusterRoleBinding
+# subjects if changing service account names.
+- service_account.yaml
+- role.yaml
+- role_binding.yaml
+- leader_election_role.yaml
+- leader_election_role_binding.yaml
+# Comment the following 4 lines if you want to disable
+# the auth proxy (https://github.com/brancz/kube-rbac-proxy)
+# which protects your /metrics endpoint.
+# - auth_proxy_service.yaml
+# - auth_proxy_role.yaml
+# - auth_proxy_role_binding.yaml
+# - auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/base/operator/config/rbac/leader_election_role.yaml b/components/workspaces/base/operator/config/rbac/leader_election_role.yaml
new file mode 100644
index 00000000..b11092a1
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/leader_election_role.yaml
@@ -0,0 +1,44 @@
+# permissions to do leader election.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/name: role
+    app.kubernetes.io/instance: leader-election-role
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: leader-election-role
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch
+  - create
+  - update
+  - patch
+  - delete
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - watch
+  - create
+  - update
+  - patch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - create
+  - patch
diff --git a/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml b/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml
new file mode 100644
index 00000000..63d84233
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: rolebinding
+    app.kubernetes.io/instance: leader-election-rolebinding
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: leader-election-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: leader-election-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
new file mode 100644
index 00000000..fd9a514a
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -0,0 +1,89 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: manager-role
+rules:
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - roles
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spacebindings
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spaces
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - create
+  - delete
+  - deletecollection
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/finalizers
+  verbs:
+  - update
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
+  - patch
+  - update
diff --git a/components/workspaces/base/operator/config/rbac/role_binding.yaml b/components/workspaces/base/operator/config/rbac/role_binding.yaml
new file mode 100644
index 00000000..21dbb96f
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrolebinding
+    app.kubernetes.io/instance: manager-rolebinding
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: manager-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manager-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/service_account.yaml b/components/workspaces/base/operator/config/rbac/service_account.yaml
new file mode 100644
index 00000000..f1a705d4
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/service_account.yaml
@@ -0,0 +1,12 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  labels:
+    app.kubernetes.io/name: serviceaccount
+    app.kubernetes.io/instance: controller-manager
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml b/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
new file mode 100644
index 00000000..26fdb2bc
--- /dev/null
+++ b/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
@@ -0,0 +1,147 @@
+---
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    controller-gen.kubebuilder.io/version: v0.14.0
+  name: workspaces.workspaces.konflux.io
+spec:
+  group: workspaces.konflux.io
+  names:
+    kind: Workspace
+    listKind: WorkspaceList
+    plural: workspaces
+    singular: workspace
+  scope: Namespaced
+  versions:
+  - additionalPrinterColumns:
+    - jsonPath: .spec.visibility
+      name: Visibility
+      type: string
+    name: v1alpha1
+    schema:
+      openAPIV3Schema:
+        description: Workspace is the Schema for the workspaces API
+        properties:
+          apiVersion:
+            description: |-
+              APIVersion defines the versioned schema of this representation of an object.
+              Servers should convert recognized schemas to the latest internal value, and
+              may reject unrecognized values.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
+            type: string
+          kind:
+            description: |-
+              Kind is a string value representing the REST resource this object represents.
+              Servers may infer this from the endpoint the client submits requests to.
+              Cannot be updated.
+              In CamelCase.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
+            type: string
+          metadata:
+            type: object
+          spec:
+            description: WorkspaceSpec defines the desired state of Workspace
+            properties:
+              visibility:
+                enum:
+                - community
+                - private
+                type: string
+            required:
+            - visibility
+            type: object
+          status:
+            description: WorkspaceStatus defines the observed state of Workspace
+            properties:
+              conditions:
+                items:
+                  description: "Condition contains details for one aspect of the current
+                    state of this API Resource.\n---\nThis struct is intended for
+                    direct use as an array at the field path .status.conditions.  For
+                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
+                    observations of a foo's current state.\n\t    // Known .status.conditions.type
+                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
+                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
+                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
+                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
+                    \   // other fields\n\t}"
+                  properties:
+                    lastTransitionTime:
+                      description: |-
+                        lastTransitionTime is the last time the condition transitioned from one status to another.
+                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
+                      format: date-time
+                      type: string
+                    message:
+                      description: |-
+                        message is a human readable message indicating details about the transition.
+                        This may be an empty string.
+                      maxLength: 32768
+                      type: string
+                    observedGeneration:
+                      description: |-
+                        observedGeneration represents the .metadata.generation that the condition was set based upon.
+                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
+                        with respect to the current state of the instance.
+                      format: int64
+                      minimum: 0
+                      type: integer
+                    reason:
+                      description: |-
+                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
+                        Producers of specific condition types may define expected values and meanings for this field,
+                        and whether the values are considered a guaranteed API.
+                        The value should be a CamelCase string.
+                        This field may not be empty.
+                      maxLength: 1024
+                      minLength: 1
+                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
+                      type: string
+                    status:
+                      description: status of the condition, one of True, False, Unknown.
+                      enum:
+                      - "True"
+                      - "False"
+                      - Unknown
+                      type: string
+                    type:
+                      description: |-
+                        type of condition in CamelCase or in foo.example.com/CamelCase.
+                        ---
+                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
+                        useful (see .node.status.conditions), the ability to deconflict is important.
+                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
+                      maxLength: 316
+                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
+                      type: string
+                  required:
+                  - lastTransitionTime
+                  - message
+                  - reason
+                  - status
+                  - type
+                  type: object
+                type: array
+              owner:
+                description: UserInfoStatus User info stored in the status
+                properties:
+                  email:
+                    type: string
+                required:
+                - email
+                type: object
+              space:
+                description: SpaceInfo Information about a Space
+                properties:
+                  name:
+                    type: string
+                required:
+                - name
+                type: object
+            type: object
+        type: object
+    served: true
+    storage: true
+    subresources:
+      status: {}
diff --git a/components/workspaces/base/server/config/crd/kustomization.yaml b/components/workspaces/base/server/config/crd/kustomization.yaml
new file mode 100644
index 00000000..5534b22c
--- /dev/null
+++ b/components/workspaces/base/server/config/crd/kustomization.yaml
@@ -0,0 +1,7 @@
+# This kustomization.yaml is not intended to be run by itself,
+# since it depends on service name and namespace that are out of this kustomize package.
+# It should be run by config/default
+resources:
+- bases/workspaces.konflux.io_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizeresource
+
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
new file mode 100644
index 00000000..a1557893
--- /dev/null
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -0,0 +1,86 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../crd
+- ../rbac
+- ../server
+namePrefix: workspaces-
+
+configMapGenerator:
+- literals:
+  - toolchain_namespace=toolchain-host-operator
+  name: rest-api-server-cm
+  options:
+    disableNameSuffixHash: true
+- behavior: replace
+  literals:
+  - log.level=0
+  - kubesaw.namespace=toolchain-host-operator
+  name: rest-api-server-config
+
+      # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
+      # create Role and RoleBinding to read UserSignups into toolchain-host-operator
+      # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
+      # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
+replacements:
+- source:
+    fieldPath: data.toolchain_namespace
+    kind: ConfigMap
+    name: rest-api-server-cm
+    options:
+      create: true
+  targets:
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:spacebinding-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: Role
+      name: spacebinding-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:usersignup-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: Role
+      name: usersignup-reader
+- source:
+    fieldPath: metadata.namespace
+    kind: ServiceAccount
+    name: rest-api-server
+  targets:
+  - fieldPaths:
+    - subjects.0.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:spacebinding-reader
+  - fieldPaths:
+    - subjects.0.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:usersignup-reader
+namespace: workspaces-system
diff --git a/components/workspaces/base/server/config/rbac/kustomization.yaml b/components/workspaces/base/server/config/rbac/kustomization.yaml
new file mode 100644
index 00000000..5f78348a
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- role_spacebinding_reader.yaml
+- role_usersignup_reader.yaml
+- role_workspace_server_editor.yaml
+- rolebinding_spacebinding_reader.yaml
+- rolebinding_usersignup_reader.yaml
+- rolebinding_workspace_server_editor.yaml
+- serviceaccount.yaml
diff --git a/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml b/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml
new file mode 100644
index 00000000..e602e374
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: spacebinding-reader
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spacebindings
+  verbs:
+  - list
+  - get
+  - watch
diff --git a/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml b/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml
new file mode 100644
index 00000000..60eba82a
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: usersignup-reader
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - list
+  - get
+  - watch
diff --git a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
new file mode 100644
index 00000000..749a74e3
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
@@ -0,0 +1,15 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspace-server-editor
+  namespace: system
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - list
+  - get
+  - watch
+  - update
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml b/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
new file mode 100644
index 00000000..889c039f
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:spacebinding-reader
+  namespace: system
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: spacebinding-reader
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml b/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml
new file mode 100644
index 00000000..dd1ddf76
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:usersignup-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: usersignup-reader
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
new file mode 100644
index 00000000..e9f2eae5
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:workspace-server-editor
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspace-server-editor
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/serviceaccount.yaml b/components/workspaces/base/server/config/rbac/serviceaccount.yaml
new file mode 100644
index 00000000..3ea73e85
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/serviceaccount.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
new file mode 100644
index 00000000..e73cc159
--- /dev/null
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -0,0 +1,116 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: rest-api-server
+  name: rest-api-server
+  namespace: system
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: rest-api-server
+  template:
+    metadata:
+      labels:
+        app: rest-api-server
+    spec:
+      securityContext:
+        runAsNonRoot: true
+      containers:
+      - image: traefik:v2.11.0
+        name: proxy
+        imagePullPolicy: IfNotPresent
+        volumeMounts:
+        - name: "traefik-static-config"
+          mountPath: "/etc/traefik"
+        - name: "traefik-dynamic-config"
+          mountPath: "/etc/traefik/dynamic"
+        - name: "traefik-plugin-storage"
+          mountPath: "/plugins-storage" 
+        securityContext:
+          readOnlyRootFilesystem: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      - image: workspaces/rest-api:index
+        name: rest-api
+        imagePullPolicy: IfNotPresent
+        env:
+        - name: KUBESAW_NAMESPACE
+          valueFrom:
+            configMapKeyRef:
+              name: rest-api-server-config
+              key: kubesaw.namespace
+        - name: LOG_LEVEL
+          valueFrom:
+            configMapKeyRef:
+              name: rest-api-server-config
+              key: log.level
+        - name: WORKSPACES_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        # livenessProbe:
+        #   httpGet:
+        #     path: /healthz
+        #     port: 8080
+        #   initialDelaySeconds: 15
+        #   periodSeconds: 20
+        # readinessProbe:
+        #   httpGet:
+        #     path: /readyz
+        #     port: 8081
+        #   initialDelaySeconds: 5
+        #   periodSeconds: 10
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+        ports:
+          - containerPort: 8080
+            name: http
+      volumes:
+      - name: "traefik-plugin-storage"
+        emptyDir:
+          sizeLimit: 20Mi
+      - name: "traefik-static-config"
+        configMap:
+          name: "traefik-sidecar-static-config"
+      - name: "traefik-dynamic-config"
+        configMap:
+          name: "traefik-sidecar-dynamic-config"
+      serviceAccountName: rest-api-server
+      terminationGracePeriodSeconds: 60
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: rest-api-server-config
+data:
+  kubesaw.namespace=system
+---
+apiVersion: v1
+data: {}
+kind: ConfigMap
+metadata:
+  name: traefik-sidecar-static-config
+---
+apiVersion: v1
+data: {}
+kind: ConfigMap
+metadata:
+  name: traefik-sidecar-dynamic-config
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
new file mode 100644
index 00000000..6dfae938
--- /dev/null
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -0,0 +1,22 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- deployment.yaml
+- service.yaml
+configMapGenerator:
+- behavior: merge
+  files:
+  - traefik.yaml=./proxy-config/traefik.yaml
+  name: traefik-sidecar-static-config
+  options:
+    disableNameSuffixHash: true
+- behavior: merge
+  files:
+  - config.yaml=./proxy-config/dynamic/config.yaml
+  name: traefik-sidecar-dynamic-config
+  options:
+    disableNameSuffixHash: true
+images:
+- name: workspaces/rest-api
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
new file mode 100644
index 00000000..90715b38
--- /dev/null
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -0,0 +1,31 @@
+http:
+  services:
+    web:
+      loadBalancer:
+        servers:
+        - url: "http://localhost:8080/"
+  routers:
+    app-apis:
+      service: web
+      entrypoints:
+      - web
+      rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
+      middlewares:
+        - jwt-authorizer
+    app-healthz:
+      service: web
+      entrypoints:
+      - web
+      rule: Path(`/healthz`)
+
+# Middlewares
+  middlewares:
+
+# JWT Auth
+    jwt-authorizer:
+      plugin:
+        jwt:
+          required: true
+          keys: []
+          jwtHeaders:
+            X-Subject: sub
diff --git a/components/workspaces/base/server/config/server/proxy-config/traefik.yaml b/components/workspaces/base/server/config/server/proxy-config/traefik.yaml
new file mode 100644
index 00000000..25b22119
--- /dev/null
+++ b/components/workspaces/base/server/config/server/proxy-config/traefik.yaml
@@ -0,0 +1,32 @@
+entryPoints:
+  web:
+    address: ":8000"
+  metrics:
+    address: ":8001"
+providers:
+  file:
+    directory: /etc/traefik/dynamic/
+    watch: true
+# Configure Logger
+log:
+  level: INFO
+  format: json
+# Print acess logs
+accessLog:
+  format: json
+# enable Prometheus metrics
+metrics:
+  prometheus:
+    entryPoint: metrics
+# enable Jaeger tracing
+# tracing:
+#   jaeger: {}
+experimental:
+  plugins:
+    jwt:
+      moduleName: github.com/traefik-plugins/traefik-jwt-plugin
+      version: v0.7.1
+authSources:
+  jwtSource:
+    jwt:
+      jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
diff --git a/components/workspaces/base/server/config/server/service.yaml b/components/workspaces/base/server/config/server/service.yaml
new file mode 100644
index 00000000..1399b7bc
--- /dev/null
+++ b/components/workspaces/base/server/config/server/service.yaml
@@ -0,0 +1,35 @@
+kind: Service
+apiVersion: v1
+metadata:
+  name: rest-api-server
+  namespace: system
+  labels:
+    provider: workspaces
+    run: rest-api-server
+spec:
+  ports:
+  - protocol: TCP
+    port: 8000
+    targetPort: 8000
+  selector:
+    app: rest-api-server
+  type: ClusterIP
+  sessionAffinity: None
+---
+kind: Service
+apiVersion: v1
+metadata:
+  name: rest-api-server-metrics
+  namespace: system
+  labels:
+    provider: workspaces
+    run: rest-api-server
+spec:
+  ports:
+  - protocol: TCP
+    port: 8001
+    targetPort: 8001
+  selector:
+    app: rest-api-server
+  type: ClusterIP
+  sessionAffinity: None
diff --git a/components/workspaces/staging/kustomization.yaml b/components/workspaces/staging/kustomization.yaml
new file mode 100644
index 00000000..84a57038
--- /dev/null
+++ b/components/workspaces/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: konflux-workspaces
+resources:
+- ../base/
+images:
+- name: workspaces/rest-api
+  newName: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha2
+- name: controller
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-0a22d627/staging/components/ui/staging/kustomize.out.yaml
102,106d101
<             location /apis/workspaces.konflux.io/ {
<                 # Konflux Workspaces
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
124c119
<   name: proxy-fd4m7g5685
---
>   name: proxy-mk27dcmc6f
618c613
<           name: proxy-fd4m7g5685
---
>           name: proxy-mk27dcmc6f
./commit-fbb40f6d/staging/components: workspaces 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 0a22d627 to fbb40f6d on Wed Jul 10 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (1694 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/kustomization.yaml b/argo-cd-apps/base/host/kustomization.yaml
index cd5fc000..5190868e 100644
--- a/argo-cd-apps/base/host/kustomization.yaml
+++ b/argo-cd-apps/base/host/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - segment-bridge
   - ingresscontroller
   - smee
+  - workspaces
 components:
   - ../../k-components/deploy-to-host-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/host/workspaces/kustomization.yaml b/argo-cd-apps/base/host/workspaces/kustomization.yaml
new file mode 100644
index 00000000..dc728213
--- /dev/null
+++ b/argo-cd-apps/base/host/workspaces/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
new file mode 100644
index 00000000..236dcbe7
--- /dev/null
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/workspaces
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: workspaces-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-workspaces
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index e1ff152e..080c610f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 892ad3c7..9bb8ff78 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -5,3 +5,8 @@ metadata:
   name: gitops
 $patch: delete
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 7018a027..d8dbb2e9 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -30,3 +30,8 @@ metadata:
   name: quality-dashboard
 $patch: delete
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b83ed571..c44c86d4 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -58,6 +58,11 @@ http {
             proxy_read_timeout 30m;
         }
 
+        location /apis/workspaces.konflux.io/ {
+            # Konflux Workspaces
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+        }
+
         location /wss/k8s/ {
             # Kube-API websockets
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
diff --git a/components/workspaces/base/kustomization.yaml b/components/workspaces/base/kustomization.yaml
new file mode 100644
index 00000000..4b3440f0
--- /dev/null
+++ b/components/workspaces/base/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- operator/config/default
+- server/config/default
diff --git a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
new file mode 100644
index 00000000..405d6ddb
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
@@ -0,0 +1,173 @@
+---
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    controller-gen.kubebuilder.io/version: v0.14.0
+  name: internalworkspaces.workspaces.konflux.io
+spec:
+  group: workspaces.konflux.io
+  names:
+    kind: InternalWorkspace
+    listKind: InternalWorkspaceList
+    plural: internalworkspaces
+    singular: internalworkspace
+  scope: Namespaced
+  versions:
+  - additionalPrinterColumns:
+    - jsonPath: .spec.visibility
+      name: Visibility
+      type: string
+    name: v1alpha1
+    schema:
+      openAPIV3Schema:
+        description: InternalWorkspace is the Schema for the workspaces API
+        properties:
+          apiVersion:
+            description: |-
+              APIVersion defines the versioned schema of this representation of an object.
+              Servers should convert recognized schemas to the latest internal value, and
+              may reject unrecognized values.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
+            type: string
+          kind:
+            description: |-
+              Kind is a string value representing the REST resource this object represents.
+              Servers may infer this from the endpoint the client submits requests to.
+              Cannot be updated.
+              In CamelCase.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
+            type: string
+          metadata:
+            type: object
+          spec:
+            description: InternalWorkspaceSpec defines the desired state of Workspace
+            properties:
+              displayName:
+                type: string
+              owner:
+                description: UserInfo contains information about a user identity
+                properties:
+                  jwtInfo:
+                    description: JwtInfo contains information extracted from the user
+                      JWT Token
+                    properties:
+                      email:
+                        type: string
+                      sub:
+                        type: string
+                      userId:
+                        type: string
+                    required:
+                    - email
+                    - sub
+                    - userId
+                    type: object
+                required:
+                - jwtInfo
+                type: object
+              visibility:
+                enum:
+                - community
+                - private
+                type: string
+            required:
+            - displayName
+            - owner
+            - visibility
+            type: object
+          status:
+            description: InternalWorkspaceStatus defines the observed state of Workspace
+            properties:
+              conditions:
+                items:
+                  description: "Condition contains details for one aspect of the current
+                    state of this API Resource.\n---\nThis struct is intended for
+                    direct use as an array at the field path .status.conditions.  For
+                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
+                    observations of a foo's current state.\n\t    // Known .status.conditions.type
+                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
+                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
+                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
+                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
+                    \   // other fields\n\t}"
+                  properties:
+                    lastTransitionTime:
+                      description: |-
+                        lastTransitionTime is the last time the condition transitioned from one status to another.
+                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
+                      format: date-time
+                      type: string
+                    message:
+                      description: |-
+                        message is a human readable message indicating details about the transition.
+                        This may be an empty string.
+                      maxLength: 32768
+                      type: string
+                    observedGeneration:
+                      description: |-
+                        observedGeneration represents the .metadata.generation that the condition was set based upon.
+                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
+                        with respect to the current state of the instance.
+                      format: int64
+                      minimum: 0
+                      type: integer
+                    reason:
+                      description: |-
+                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
+                        Producers of specific condition types may define expected values and meanings for this field,
+                        and whether the values are considered a guaranteed API.
+                        The value should be a CamelCase string.
+                        This field may not be empty.
+                      maxLength: 1024
+                      minLength: 1
+                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
+                      type: string
+                    status:
+                      description: status of the condition, one of True, False, Unknown.
+                      enum:
+                      - "True"
+                      - "False"
+                      - Unknown
+                      type: string
+                    type:
+                      description: |-
+                        type of condition in CamelCase or in foo.example.com/CamelCase.
+                        ---
+                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
+                        useful (see .node.status.conditions), the ability to deconflict is important.
+                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
+                      maxLength: 316
+                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
+                      type: string
+                  required:
+                  - lastTransitionTime
+                  - message
+                  - reason
+                  - status
+                  - type
+                  type: object
+                type: array
+              owner:
+                description: Owner contains information on the owner
+                properties:
+                  username:
+                    type: string
+                type: object
+              space:
+                description: Space contains information about the underlying Space
+                properties:
+                  isHome:
+                    type: boolean
+                  name:
+                    type: string
+                required:
+                - isHome
+                - name
+                type: object
+            type: object
+        type: object
+    served: true
+    storage: true
+    subresources:
+      status: {}
diff --git a/components/workspaces/base/operator/config/crd/kustomization.yaml b/components/workspaces/base/operator/config/crd/kustomization.yaml
new file mode 100644
index 00000000..5a877825
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- bases/workspaces.konflux.io_internalworkspaces.yaml
+#+kubebuilder:scaffold:crdkustomizeresource
+
+patches: []
+# [WEBHOOK] To enable webhook, uncomment all the sections with [WEBHOOK] prefix.
+# patches here are for enabling the conversion webhook for each CRD
+#- patches/webhook_in_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizewebhookpatch
+
+# [CERTMANAGER] To enable cert-manager, uncomment all the sections with [CERTMANAGER] prefix.
+# patches here are for enabling the CA injection for each CRD
+#- patches/cainjection_in_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizecainjectionpatch
+
+# the following config is for teaching kustomize how to do kustomization for CRDs.
+configurations:
+- kustomizeconfig.yaml
diff --git a/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml b/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml
new file mode 100644
index 00000000..ec5c150a
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/kustomizeconfig.yaml
@@ -0,0 +1,19 @@
+# This file is for teaching kustomize how to substitute name and namespace reference in CRD
+nameReference:
+- kind: Service
+  version: v1
+  fieldSpecs:
+  - kind: CustomResourceDefinition
+    version: v1
+    group: apiextensions.k8s.io
+    path: spec/conversion/webhook/clientConfig/service/name
+
+namespace:
+- kind: CustomResourceDefinition
+  version: v1
+  group: apiextensions.k8s.io
+  path: spec/conversion/webhook/clientConfig/service/namespace
+  create: false
+
+varReference:
+- path: metadata/annotations
diff --git a/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml b/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
new file mode 100644
index 00000000..4e01dc55
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
@@ -0,0 +1,7 @@
+# The following patch adds a directive for certmanager to inject CA into the CRD
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    cert-manager.io/inject-ca-from: $(CERTIFICATE_NAMESPACE)/$(CERTIFICATE_NAME)
+  name: workspaces.workspaces.io
diff --git a/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml b/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml
new file mode 100644
index 00000000..7684f103
--- /dev/null
+++ b/components/workspaces/base/operator/config/crd/patches/webhook_in_workspaces.yaml
@@ -0,0 +1,16 @@
+# The following patch enables a conversion webhook for the CRD
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  name: workspaces.workspaces.io
+spec:
+  conversion:
+    strategy: Webhook
+    webhook:
+      clientConfig:
+        service:
+          namespace: system
+          name: webhook-service
+          path: /convert
+      conversionReviewVersions:
+      - v1
diff --git a/components/workspaces/base/operator/config/default/kustomization.yaml b/components/workspaces/base/operator/config/default/kustomization.yaml
new file mode 100644
index 00000000..32bd602f
--- /dev/null
+++ b/components/workspaces/base/operator/config/default/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: workspaces-system
+namePrefix: workspaces-
+resources:
+- ../crd
+- ../rbac
+- ../manager
+patches:
+- path: manager_auth_proxy_patch.yaml
diff --git a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
new file mode 100644
index 00000000..bc2f7500
--- /dev/null
+++ b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
@@ -0,0 +1,54 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+              - matchExpressions:
+                - key: kubernetes.io/arch
+                  operator: In
+                  values:
+                    - amd64
+                    # - arm64
+                    # - ppc64le
+                    # - s390x
+                - key: kubernetes.io/os
+                  operator: In
+                  values:
+                    - linux
+      containers:
+      - name: kube-rbac-proxy
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
+        args:
+        - "--secure-listen-address=0.0.0.0:8443"
+        - "--upstream=http://127.0.0.1:8080/"
+        - "--logtostderr=true"
+        - "--v=0"
+        ports:
+        - containerPort: 8443
+          protocol: TCP
+          name: https
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+      - name: manager
+        args:
+        - "--health-probe-bind-address=:8081"
+        - "--metrics-bind-address=127.0.0.1:8080"
+        - "--leader-elect"
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
new file mode 100644
index 00000000..b0f27a4b
--- /dev/null
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- manager.yaml
+images:
+- name: controller
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2
+configMapGenerator:
+- behavior: replace
+  literals:
+  - kubesaw.namespace=toolchain-host-operator
+  name: operator-config
diff --git a/components/workspaces/base/operator/config/manager/manager.yaml b/components/workspaces/base/operator/config/manager/manager.yaml
new file mode 100644
index 00000000..4594a54b
--- /dev/null
+++ b/components/workspaces/base/operator/config/manager/manager.yaml
@@ -0,0 +1,104 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: namespace
+    app.kubernetes.io/instance: system 
+    app.kubernetes.io/component: manager
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: system
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: deployment
+    app.kubernetes.io/instance: controller-manager
+    app.kubernetes.io/component: manager
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+spec:
+  selector:
+    matchLabels:
+      control-plane: controller-manager
+  replicas: 1
+  template:
+    metadata:
+      annotations:
+        kubectl.kubernetes.io/default-container: manager
+      labels:
+        control-plane: controller-manager
+    spec:
+      securityContext:
+        runAsNonRoot: true
+        # TODO(user): For common cases that do not require escalating privileges
+        # it is recommended to ensure that all your Pods/Containers are restrictive.
+        # More info: https://kubernetes.io/docs/concepts/security/pod-security-standards/#restricted
+        # Please uncomment the following code if your project does NOT have to work on old Kubernetes
+        # versions < 1.19 or on vendors versions which do NOT support this field by default (i.e. Openshift < 4.11 ).
+        # seccompProfile:
+        #   type: RuntimeDefault
+      containers:
+      - name: manager
+        command:
+        - /manager
+        args:
+        - "--leader-elect"
+        image: controller:index
+        imagePullPolicy: IfNotPresent
+        env:
+        - name: KUBESAW_NAMESPACE
+          valueFrom:
+            configMapKeyRef:
+              name: workspaces-operator-config
+              key: kubesaw.namespace
+        - name: WORKSPACES_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8081
+          initialDelaySeconds: 15
+          periodSeconds: 20
+        readinessProbe:
+          httpGet:
+            path: /readyz
+            port: 8081
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        # TODO(user): Configure the resources accordingly based on the project requirements.
+        # More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+        ports:
+        - containerPort: 8081
+          name: http
+      serviceAccountName: controller-manager
+      terminationGracePeriodSeconds: 10
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: operator-config
+data:
+  kubesaw.namespace: toolchain-host-operator
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
new file mode 100644
index 00000000..1993ada2
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
@@ -0,0 +1,16 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrole
+    app.kubernetes.io/instance: metrics-reader
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: metrics-reader
+rules:
+- nonResourceURLs:
+  - "/metrics"
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml
new file mode 100644
index 00000000..606c8411
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_role.yaml
@@ -0,0 +1,24 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrole
+    app.kubernetes.io/instance: proxy-role
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: proxy-role
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml
new file mode 100644
index 00000000..729d0a19
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrolebinding
+    app.kubernetes.io/instance: proxy-rolebinding
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: proxy-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: proxy-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
new file mode 100644
index 00000000..e624d7e2
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
@@ -0,0 +1,21 @@
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    control-plane: controller-manager
+    app.kubernetes.io/name: service
+    app.kubernetes.io/instance: controller-manager-metrics-service
+    app.kubernetes.io/component: kube-rbac-proxy
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: controller-manager-metrics-service
+  namespace: system
+spec:
+  ports:
+  - name: https
+    port: 8443
+    protocol: TCP
+    targetPort: https
+  selector:
+    control-plane: controller-manager
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
new file mode 100644
index 00000000..f5cb6303
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
@@ -0,0 +1,27 @@
+# permissions for end users to edit workspaces.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+  name: workspace-editor-role
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
new file mode 100644
index 00000000..dcd07c69
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
@@ -0,0 +1,23 @@
+# permissions for end users to view workspaces.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+  name: workspace-viewer-role
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
diff --git a/components/workspaces/base/operator/config/rbac/kustomization.yaml b/components/workspaces/base/operator/config/rbac/kustomization.yaml
new file mode 100644
index 00000000..fb5a2b88
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/kustomization.yaml
@@ -0,0 +1,18 @@
+resources:
+# All RBAC will be applied under this service account in
+# the deployment namespace. You may comment out this resource
+# if your manager will use a service account that exists at
+# runtime. Be sure to update RoleBinding and ClusterRoleBinding
+# subjects if changing service account names.
+- service_account.yaml
+- role.yaml
+- role_binding.yaml
+- leader_election_role.yaml
+- leader_election_role_binding.yaml
+# Comment the following 4 lines if you want to disable
+# the auth proxy (https://github.com/brancz/kube-rbac-proxy)
+# which protects your /metrics endpoint.
+# - auth_proxy_service.yaml
+# - auth_proxy_role.yaml
+# - auth_proxy_role_binding.yaml
+# - auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/base/operator/config/rbac/leader_election_role.yaml b/components/workspaces/base/operator/config/rbac/leader_election_role.yaml
new file mode 100644
index 00000000..b11092a1
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/leader_election_role.yaml
@@ -0,0 +1,44 @@
+# permissions to do leader election.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    app.kubernetes.io/name: role
+    app.kubernetes.io/instance: leader-election-role
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: leader-election-role
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch
+  - create
+  - update
+  - patch
+  - delete
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - watch
+  - create
+  - update
+  - patch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - create
+  - patch
diff --git a/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml b/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml
new file mode 100644
index 00000000..63d84233
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/leader_election_role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: rolebinding
+    app.kubernetes.io/instance: leader-election-rolebinding
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: leader-election-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: leader-election-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
new file mode 100644
index 00000000..fd9a514a
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -0,0 +1,89 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: manager-role
+rules:
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - roles
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spacebindings
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spaces
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - create
+  - delete
+  - deletecollection
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/finalizers
+  verbs:
+  - update
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces/status
+  verbs:
+  - get
+  - patch
+  - update
diff --git a/components/workspaces/base/operator/config/rbac/role_binding.yaml b/components/workspaces/base/operator/config/rbac/role_binding.yaml
new file mode 100644
index 00000000..21dbb96f
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/role_binding.yaml
@@ -0,0 +1,19 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    app.kubernetes.io/name: clusterrolebinding
+    app.kubernetes.io/instance: manager-rolebinding
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: manager-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manager-role
+subjects:
+- kind: ServiceAccount
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/operator/config/rbac/service_account.yaml b/components/workspaces/base/operator/config/rbac/service_account.yaml
new file mode 100644
index 00000000..f1a705d4
--- /dev/null
+++ b/components/workspaces/base/operator/config/rbac/service_account.yaml
@@ -0,0 +1,12 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  labels:
+    app.kubernetes.io/name: serviceaccount
+    app.kubernetes.io/instance: controller-manager
+    app.kubernetes.io/component: rbac
+    app.kubernetes.io/created-by: workspaces
+    app.kubernetes.io/part-of: workspaces
+    app.kubernetes.io/managed-by: kustomize
+  name: controller-manager
+  namespace: system
diff --git a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml b/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
new file mode 100644
index 00000000..26fdb2bc
--- /dev/null
+++ b/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
@@ -0,0 +1,147 @@
+---
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
+  annotations:
+    controller-gen.kubebuilder.io/version: v0.14.0
+  name: workspaces.workspaces.konflux.io
+spec:
+  group: workspaces.konflux.io
+  names:
+    kind: Workspace
+    listKind: WorkspaceList
+    plural: workspaces
+    singular: workspace
+  scope: Namespaced
+  versions:
+  - additionalPrinterColumns:
+    - jsonPath: .spec.visibility
+      name: Visibility
+      type: string
+    name: v1alpha1
+    schema:
+      openAPIV3Schema:
+        description: Workspace is the Schema for the workspaces API
+        properties:
+          apiVersion:
+            description: |-
+              APIVersion defines the versioned schema of this representation of an object.
+              Servers should convert recognized schemas to the latest internal value, and
+              may reject unrecognized values.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
+            type: string
+          kind:
+            description: |-
+              Kind is a string value representing the REST resource this object represents.
+              Servers may infer this from the endpoint the client submits requests to.
+              Cannot be updated.
+              In CamelCase.
+              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
+            type: string
+          metadata:
+            type: object
+          spec:
+            description: WorkspaceSpec defines the desired state of Workspace
+            properties:
+              visibility:
+                enum:
+                - community
+                - private
+                type: string
+            required:
+            - visibility
+            type: object
+          status:
+            description: WorkspaceStatus defines the observed state of Workspace
+            properties:
+              conditions:
+                items:
+                  description: "Condition contains details for one aspect of the current
+                    state of this API Resource.\n---\nThis struct is intended for
+                    direct use as an array at the field path .status.conditions.  For
+                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
+                    observations of a foo's current state.\n\t    // Known .status.conditions.type
+                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
+                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
+                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
+                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
+                    \   // other fields\n\t}"
+                  properties:
+                    lastTransitionTime:
+                      description: |-
+                        lastTransitionTime is the last time the condition transitioned from one status to another.
+                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
+                      format: date-time
+                      type: string
+                    message:
+                      description: |-
+                        message is a human readable message indicating details about the transition.
+                        This may be an empty string.
+                      maxLength: 32768
+                      type: string
+                    observedGeneration:
+                      description: |-
+                        observedGeneration represents the .metadata.generation that the condition was set based upon.
+                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
+                        with respect to the current state of the instance.
+                      format: int64
+                      minimum: 0
+                      type: integer
+                    reason:
+                      description: |-
+                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
+                        Producers of specific condition types may define expected values and meanings for this field,
+                        and whether the values are considered a guaranteed API.
+                        The value should be a CamelCase string.
+                        This field may not be empty.
+                      maxLength: 1024
+                      minLength: 1
+                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
+                      type: string
+                    status:
+                      description: status of the condition, one of True, False, Unknown.
+                      enum:
+                      - "True"
+                      - "False"
+                      - Unknown
+                      type: string
+                    type:
+                      description: |-
+                        type of condition in CamelCase or in foo.example.com/CamelCase.
+                        ---
+                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
+                        useful (see .node.status.conditions), the ability to deconflict is important.
+                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
+                      maxLength: 316
+                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
+                      type: string
+                  required:
+                  - lastTransitionTime
+                  - message
+                  - reason
+                  - status
+                  - type
+                  type: object
+                type: array
+              owner:
+                description: UserInfoStatus User info stored in the status
+                properties:
+                  email:
+                    type: string
+                required:
+                - email
+                type: object
+              space:
+                description: SpaceInfo Information about a Space
+                properties:
+                  name:
+                    type: string
+                required:
+                - name
+                type: object
+            type: object
+        type: object
+    served: true
+    storage: true
+    subresources:
+      status: {}
diff --git a/components/workspaces/base/server/config/crd/kustomization.yaml b/components/workspaces/base/server/config/crd/kustomization.yaml
new file mode 100644
index 00000000..5534b22c
--- /dev/null
+++ b/components/workspaces/base/server/config/crd/kustomization.yaml
@@ -0,0 +1,7 @@
+# This kustomization.yaml is not intended to be run by itself,
+# since it depends on service name and namespace that are out of this kustomize package.
+# It should be run by config/default
+resources:
+- bases/workspaces.konflux.io_workspaces.yaml
+#+kubebuilder:scaffold:crdkustomizeresource
+
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
new file mode 100644
index 00000000..a1557893
--- /dev/null
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -0,0 +1,86 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../crd
+- ../rbac
+- ../server
+namePrefix: workspaces-
+
+configMapGenerator:
+- literals:
+  - toolchain_namespace=toolchain-host-operator
+  name: rest-api-server-cm
+  options:
+    disableNameSuffixHash: true
+- behavior: replace
+  literals:
+  - log.level=0
+  - kubesaw.namespace=toolchain-host-operator
+  name: rest-api-server-config
+
+      # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
+      # create Role and RoleBinding to read UserSignups into toolchain-host-operator
+      # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
+      # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
+replacements:
+- source:
+    fieldPath: data.toolchain_namespace
+    kind: ConfigMap
+    name: rest-api-server-cm
+    options:
+      create: true
+  targets:
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:spacebinding-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: Role
+      name: spacebinding-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:usersignup-reader
+  - fieldPaths:
+    - metadata.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: Role
+      name: usersignup-reader
+- source:
+    fieldPath: metadata.namespace
+    kind: ServiceAccount
+    name: rest-api-server
+  targets:
+  - fieldPaths:
+    - subjects.0.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:spacebinding-reader
+  - fieldPaths:
+    - subjects.0.namespace
+    options:
+      create: true
+    select:
+      group: rbac.authorization.k8s.io
+      kind: RoleBinding
+      name: rest-api-server:usersignup-reader
+namespace: workspaces-system
diff --git a/components/workspaces/base/server/config/rbac/kustomization.yaml b/components/workspaces/base/server/config/rbac/kustomization.yaml
new file mode 100644
index 00000000..5f78348a
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- role_spacebinding_reader.yaml
+- role_usersignup_reader.yaml
+- role_workspace_server_editor.yaml
+- rolebinding_spacebinding_reader.yaml
+- rolebinding_usersignup_reader.yaml
+- rolebinding_workspace_server_editor.yaml
+- serviceaccount.yaml
diff --git a/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml b/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml
new file mode 100644
index 00000000..e602e374
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_spacebinding_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: spacebinding-reader
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spacebindings
+  verbs:
+  - list
+  - get
+  - watch
diff --git a/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml b/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml
new file mode 100644
index 00000000..60eba82a
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_usersignup_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: usersignup-reader
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - list
+  - get
+  - watch
diff --git a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
new file mode 100644
index 00000000..749a74e3
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
@@ -0,0 +1,15 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspace-server-editor
+  namespace: system
+rules:
+- apiGroups:
+  - workspaces.konflux.io
+  resources:
+  - internalworkspaces
+  verbs:
+  - list
+  - get
+  - watch
+  - update
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml b/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
new file mode 100644
index 00000000..889c039f
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:spacebinding-reader
+  namespace: system
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: spacebinding-reader
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml b/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml
new file mode 100644
index 00000000..dd1ddf76
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_usersignup_reader.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:usersignup-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: usersignup-reader
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
new file mode 100644
index 00000000..e9f2eae5
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: rest-api-server:workspace-server-editor
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspace-server-editor
+subjects:
+- kind: ServiceAccount
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/rbac/serviceaccount.yaml b/components/workspaces/base/server/config/rbac/serviceaccount.yaml
new file mode 100644
index 00000000..3ea73e85
--- /dev/null
+++ b/components/workspaces/base/server/config/rbac/serviceaccount.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: rest-api-server
+  namespace: system
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
new file mode 100644
index 00000000..e73cc159
--- /dev/null
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -0,0 +1,116 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: rest-api-server
+  name: rest-api-server
+  namespace: system
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: rest-api-server
+  template:
+    metadata:
+      labels:
+        app: rest-api-server
+    spec:
+      securityContext:
+        runAsNonRoot: true
+      containers:
+      - image: traefik:v2.11.0
+        name: proxy
+        imagePullPolicy: IfNotPresent
+        volumeMounts:
+        - name: "traefik-static-config"
+          mountPath: "/etc/traefik"
+        - name: "traefik-dynamic-config"
+          mountPath: "/etc/traefik/dynamic"
+        - name: "traefik-plugin-storage"
+          mountPath: "/plugins-storage" 
+        securityContext:
+          readOnlyRootFilesystem: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      - image: workspaces/rest-api:index
+        name: rest-api
+        imagePullPolicy: IfNotPresent
+        env:
+        - name: KUBESAW_NAMESPACE
+          valueFrom:
+            configMapKeyRef:
+              name: rest-api-server-config
+              key: kubesaw.namespace
+        - name: LOG_LEVEL
+          valueFrom:
+            configMapKeyRef:
+              name: rest-api-server-config
+              key: log.level
+        - name: WORKSPACES_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        securityContext:
+          allowPrivilegeEscalation: false
+          readOnlyRootFilesystem: true
+          capabilities:
+            drop:
+              - "ALL"
+        # livenessProbe:
+        #   httpGet:
+        #     path: /healthz
+        #     port: 8080
+        #   initialDelaySeconds: 15
+        #   periodSeconds: 20
+        # readinessProbe:
+        #   httpGet:
+        #     path: /readyz
+        #     port: 8081
+        #   initialDelaySeconds: 5
+        #   periodSeconds: 10
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+        ports:
+          - containerPort: 8080
+            name: http
+      volumes:
+      - name: "traefik-plugin-storage"
+        emptyDir:
+          sizeLimit: 20Mi
+      - name: "traefik-static-config"
+        configMap:
+          name: "traefik-sidecar-static-config"
+      - name: "traefik-dynamic-config"
+        configMap:
+          name: "traefik-sidecar-dynamic-config"
+      serviceAccountName: rest-api-server
+      terminationGracePeriodSeconds: 60
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: rest-api-server-config
+data:
+  kubesaw.namespace=system
+---
+apiVersion: v1
+data: {}
+kind: ConfigMap
+metadata:
+  name: traefik-sidecar-static-config
+---
+apiVersion: v1
+data: {}
+kind: ConfigMap
+metadata:
+  name: traefik-sidecar-dynamic-config
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
new file mode 100644
index 00000000..6dfae938
--- /dev/null
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -0,0 +1,22 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- deployment.yaml
+- service.yaml
+configMapGenerator:
+- behavior: merge
+  files:
+  - traefik.yaml=./proxy-config/traefik.yaml
+  name: traefik-sidecar-static-config
+  options:
+    disableNameSuffixHash: true
+- behavior: merge
+  files:
+  - config.yaml=./proxy-config/dynamic/config.yaml
+  name: traefik-sidecar-dynamic-config
+  options:
+    disableNameSuffixHash: true
+images:
+- name: workspaces/rest-api
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
new file mode 100644
index 00000000..90715b38
--- /dev/null
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -0,0 +1,31 @@
+http:
+  services:
+    web:
+      loadBalancer:
+        servers:
+        - url: "http://localhost:8080/"
+  routers:
+    app-apis:
+      service: web
+      entrypoints:
+      - web
+      rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
+      middlewares:
+        - jwt-authorizer
+    app-healthz:
+      service: web
+      entrypoints:
+      - web
+      rule: Path(`/healthz`)
+
+# Middlewares
+  middlewares:
+
+# JWT Auth
+    jwt-authorizer:
+      plugin:
+        jwt:
+          required: true
+          keys: []
+          jwtHeaders:
+            X-Subject: sub
diff --git a/components/workspaces/base/server/config/server/proxy-config/traefik.yaml b/components/workspaces/base/server/config/server/proxy-config/traefik.yaml
new file mode 100644
index 00000000..25b22119
--- /dev/null
+++ b/components/workspaces/base/server/config/server/proxy-config/traefik.yaml
@@ -0,0 +1,32 @@
+entryPoints:
+  web:
+    address: ":8000"
+  metrics:
+    address: ":8001"
+providers:
+  file:
+    directory: /etc/traefik/dynamic/
+    watch: true
+# Configure Logger
+log:
+  level: INFO
+  format: json
+# Print acess logs
+accessLog:
+  format: json
+# enable Prometheus metrics
+metrics:
+  prometheus:
+    entryPoint: metrics
+# enable Jaeger tracing
+# tracing:
+#   jaeger: {}
+experimental:
+  plugins:
+    jwt:
+      moduleName: github.com/traefik-plugins/traefik-jwt-plugin
+      version: v0.7.1
+authSources:
+  jwtSource:
+    jwt:
+      jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
diff --git a/components/workspaces/base/server/config/server/service.yaml b/components/workspaces/base/server/config/server/service.yaml
new file mode 100644
index 00000000..1399b7bc
--- /dev/null
+++ b/components/workspaces/base/server/config/server/service.yaml
@@ -0,0 +1,35 @@
+kind: Service
+apiVersion: v1
+metadata:
+  name: rest-api-server
+  namespace: system
+  labels:
+    provider: workspaces
+    run: rest-api-server
+spec:
+  ports:
+  - protocol: TCP
+    port: 8000
+    targetPort: 8000
+  selector:
+    app: rest-api-server
+  type: ClusterIP
+  sessionAffinity: None
+---
+kind: Service
+apiVersion: v1
+metadata:
+  name: rest-api-server-metrics
+  namespace: system
+  labels:
+    provider: workspaces
+    run: rest-api-server
+spec:
+  ports:
+  - protocol: TCP
+    port: 8001
+    targetPort: 8001
+  selector:
+    app: rest-api-server
+  type: ClusterIP
+  sessionAffinity: None
diff --git a/components/workspaces/staging/kustomization.yaml b/components/workspaces/staging/kustomization.yaml
new file mode 100644
index 00000000..84a57038
--- /dev/null
+++ b/components/workspaces/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: konflux-workspaces
+resources:
+- ../base/
+images:
+- name: workspaces/rest-api
+  newName: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha2
+- name: controller
+  newName: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-0a22d627/development/components/ui/development/kustomize.out.yaml
102,106d101
<             location /apis/workspaces.konflux.io/ {
<                 # Konflux Workspaces
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
124c119
<   name: proxy-fd4m7g5685
---
>   name: proxy-mk27dcmc6f
618c613
<           name: proxy-fd4m7g5685
---
>           name: proxy-mk27dcmc6f 
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
<h3>4: Production changes from 6ba5cb3e to 0a22d627 on Wed Jul 10 15:10:26 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index ee899353..87563ac4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 8ce878b5..4d5e88e9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4eb5dc44..45f21357 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2475783a..3b1a9b5a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2b7f0926..bffccb00 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 491593bc..dc82c0f2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6ba5cb3e to 0a22d627 on Wed Jul 10 15:10:26 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index ee899353..87563ac4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 8ce878b5..4d5e88e9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4eb5dc44..45f21357 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2475783a..3b1a9b5a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2b7f0926..bffccb00 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 491593bc..dc82c0f2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-6ba5cb3e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1353c1353
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
./commit-6ba5cb3e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1353c1353
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
./commit-6ba5cb3e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1353c1353
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000 
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
<h3>4: Development changes from 6ba5cb3e to 0a22d627 on Wed Jul 10 15:10:26 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index ee899353..87563ac4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 8ce878b5..4d5e88e9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4eb5dc44..45f21357 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8eada62e76fb135d2cba5b7929411181c0a0e9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2475783a..3b1a9b5a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2b7f0926..bffccb00 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 491593bc..dc82c0f2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-6ba5cb3e/development/components/pipeline-service/development/kustomize.out.yaml
1220c1220
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000 
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
