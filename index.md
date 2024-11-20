# kustomize changes tracked by commits 
### This file generated at Wed Nov 20 12:05:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6f70ae93 to 19330408 on Wed Nov 20 11:30:52 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 3b4b4537..62e4c36c 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-6f70ae93/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
./commit-6f70ae93/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82 
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
<h3>1: Staging changes from 6f70ae93 to 19330408 on Wed Nov 20 11:30:52 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 3b4b4537..62e4c36c 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-6f70ae93/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82 
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
<h3>1: Development changes from 6f70ae93 to 19330408 on Wed Nov 20 11:30:52 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 3b4b4537..62e4c36c 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-6f70ae93/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 8da204d9 to 6f70ae93 on Wed Nov 20 08:59:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 23a953ce..1641463b 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */2 * * *" # every 2 hours
+  schedule: "0 */4 * * *" # every 4 hours
   jobTemplate:
     spec:
       template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-8da204d9/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
850c850
<   schedule: 0 */4 * * *
---
>   schedule: 0 */2 * * *
./commit-8da204d9/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
850c850
<   schedule: 0 */4 * * *
---
>   schedule: 0 */2 * * * 
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
<h3>2: Staging changes from 8da204d9 to 6f70ae93 on Wed Nov 20 08:59:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 23a953ce..1641463b 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */2 * * *" # every 2 hours
+  schedule: "0 */4 * * *" # every 4 hours
   jobTemplate:
     spec:
       template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8da204d9/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
908c908
<   schedule: 0 */4 * * *
---
>   schedule: 0 */2 * * * 
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
<h3>2: Development changes from 8da204d9 to 6f70ae93 on Wed Nov 20 08:59:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 23a953ce..1641463b 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */2 * * *" # every 2 hours
+  schedule: "0 */4 * * *" # every 4 hours
   jobTemplate:
     spec:
       template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8da204d9/development/components/mintmaker/development/kustomize.out.yaml
907c907
<   schedule: 0 */4 * * *
---
>   schedule: 0 */2 * * * 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from f59a12f5 to 8da204d9 on Wed Nov 20 06:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 64c85ea4..ae52e085 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f862243aef9a8540bade567fc8f1945a46970b31
+    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index f7598a67..d80ffb83 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
+- https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f862243aef9a8540bade567fc8f1945a46970b31
+  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
 
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
<h3>3: Staging changes from f59a12f5 to 8da204d9 on Wed Nov 20 06:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 64c85ea4..ae52e085 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f862243aef9a8540bade567fc8f1945a46970b31
+    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index f7598a67..d80ffb83 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
+- https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f862243aef9a8540bade567fc8f1945a46970b31
+  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-f59a12f5/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
513,515c513,515
<             "matchPackageNames": [
<               "/^quay.io/redhat-appstudio-tekton-catalog//",
<               "/^quay.io/konflux-ci/tekton-catalog//"
---
>             "matchPackagePatterns": [
>               "^quay.io/redhat-appstudio-tekton-catalog/",
>               "^quay.io/konflux-ci/tekton-catalog/"
535c535
<             "prBodyTemplate": "{{{header}}}{{{table}}}{{{notes}}}{{{changelogs}}}{{{configDescription}}}{{{controls}}}{{{footer}}}",
---
>             "prBodyTemplate": "{{{header}}}{{{table}}}{{{notes}}}{{{changelogs}}}{{{controls}}}{{{footer}}}",
792c792
<         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f
---
>         image: quay.io/konflux-ci/mintmaker:f862243aef9a8540bade567fc8f1945a46970b31 
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
<h3>3: Development changes from f59a12f5 to 8da204d9 on Wed Nov 20 06:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 64c85ea4..ae52e085 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f862243aef9a8540bade567fc8f1945a46970b31
+    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index f7598a67..d80ffb83 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
+- https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f862243aef9a8540bade567fc8f1945a46970b31
+  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-f59a12f5/development/components/mintmaker/development/kustomize.out.yaml
513,515c513,515
<             "matchPackageNames": [
<               "/^quay.io/redhat-appstudio-tekton-catalog//",
<               "/^quay.io/konflux-ci/tekton-catalog//"
---
>             "matchPackagePatterns": [
>               "^quay.io/redhat-appstudio-tekton-catalog/",
>               "^quay.io/konflux-ci/tekton-catalog/"
535c535
<             "prBodyTemplate": "{{{header}}}{{{table}}}{{{notes}}}{{{changelogs}}}{{{configDescription}}}{{{controls}}}{{{footer}}}",
---
>             "prBodyTemplate": "{{{header}}}{{{table}}}{{{notes}}}{{{changelogs}}}{{{controls}}}{{{footer}}}",
791c791
<         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f
---
>         image: quay.io/konflux-ci/mintmaker:f862243aef9a8540bade567fc8f1945a46970b31 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from eb742069 to f59a12f5 on Tue Nov 19 18:40:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index 0e92c9aa..1b4e2a21 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -29,7 +29,7 @@ jobs:
             ! -path 'components/repository-validator/staging/*' \
             ! -path 'components/repository-validator/production/*' \
             | \
-            xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
+            xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build --enable-helm "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
 
       - name: Scan yaml files with kube-linter
         uses: stackrox/kube-linter-action@v1.0.4 
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
<h3>4: Staging changes from eb742069 to f59a12f5 on Tue Nov 19 18:40:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index 0e92c9aa..1b4e2a21 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -29,7 +29,7 @@ jobs:
             ! -path 'components/repository-validator/staging/*' \
             ! -path 'components/repository-validator/production/*' \
             | \
-            xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
+            xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build --enable-helm "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
 
       - name: Scan yaml files with kube-linter
         uses: stackrox/kube-linter-action@v1.0.4 
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
<h3>4: Development changes from eb742069 to f59a12f5 on Tue Nov 19 18:40:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index 0e92c9aa..1b4e2a21 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -29,7 +29,7 @@ jobs:
             ! -path 'components/repository-validator/staging/*' \
             ! -path 'components/repository-validator/production/*' \
             | \
-            xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
+            xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build --enable-helm "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
 
       - name: Scan yaml files with kube-linter
         uses: stackrox/kube-linter-action@v1.0.4 
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
```
 
</details> 
<br> 


</div>
