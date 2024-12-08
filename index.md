# kustomize changes tracked by commits 
### This file generated at Sun Dec  8 12:08:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 373fb7fa to baac906f on Sun Dec 8 09:44:00 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 8defeb03..9d50df47 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=2a4003ca8394db66d1b05622f9319001129cf4ff
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=2a4003ca8394db66d1b05622f9319001129cf4ff
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+  newTag: 2a4003ca8394db66d1b05622f9319001129cf4ff
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+  newTag: 2a4003ca8394db66d1b05622f9319001129cf4ff 
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
<h3>1: Staging changes from 373fb7fa to baac906f on Sun Dec 8 09:44:00 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 8defeb03..9d50df47 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=2a4003ca8394db66d1b05622f9319001129cf4ff
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=2a4003ca8394db66d1b05622f9319001129cf4ff
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+  newTag: 2a4003ca8394db66d1b05622f9319001129cf4ff
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+  newTag: 2a4003ca8394db66d1b05622f9319001129cf4ff 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-373fb7fa/staging/components/multi-platform-controller/staging/kustomize.out.yaml
648c648
<         image: quay.io/konflux-ci/multi-platform-controller:2a4003ca8394db66d1b05622f9319001129cf4ff
---
>         image: quay.io/konflux-ci/multi-platform-controller:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:2a4003ca8394db66d1b05622f9319001129cf4ff
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
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
<h3>1: Development changes from 373fb7fa to baac906f on Sun Dec 8 09:44:00 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 8defeb03..9d50df47 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=2a4003ca8394db66d1b05622f9319001129cf4ff
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=2a4003ca8394db66d1b05622f9319001129cf4ff
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+  newTag: 2a4003ca8394db66d1b05622f9319001129cf4ff
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+  newTag: 2a4003ca8394db66d1b05622f9319001129cf4ff 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-373fb7fa/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:2a4003ca8394db66d1b05622f9319001129cf4ff
---
>         image: quay.io/konflux-ci/multi-platform-controller:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:2a4003ca8394db66d1b05622f9319001129cf4ff
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
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
<h3>2: Production changes from 90e3b5ad to 373fb7fa on Sun Dec 8 09:43:54 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 89ae1a09..77c66f1d 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+- https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 6319fc1b..ee6b2128 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  - https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 namespace: project-controller 
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
<h3>2: Staging changes from 90e3b5ad to 373fb7fa on Sun Dec 8 09:43:54 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 89ae1a09..77c66f1d 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+- https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 6319fc1b..ee6b2128 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  - https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-90e3b5ad/staging/components/project-controller/staging/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
---
>         image: quay.io/konflux-ci/project-controller:6a8725d371fadfaf0823f75d81a4a9ad75b3da20 
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
<h3>2: Development changes from 90e3b5ad to 373fb7fa on Sun Dec 8 09:43:54 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 89ae1a09..77c66f1d 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+- https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 6319fc1b..ee6b2128 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  - https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 6a8725d371fadfaf0823f75d81a4a9ad75b3da20
+  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-90e3b5ad/development/components/project-controller/development/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
---
>         image: quay.io/konflux-ci/project-controller:6a8725d371fadfaf0823f75d81a4a9ad75b3da20 
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
<h3>3: Production changes from 62eccb76 to 90e3b5ad on Sun Dec 8 08:58:30 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 1af449b5..369bdce8 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -2152,7 +2152,7 @@ spec:
         settings:
           application-name: Konflux kflux-prd-rh02
           custom-console-name: Konflux kflux-prd-rh02
-          custom-console-url: TBA
+          custom-console-url: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com
           custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
index bf1e4255..ff19c8ed 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Konflux kflux-prd-rh02 
     custom-console-name: Konflux kflux-prd-rh02
-    custom-console-url: TBA
+    custom-console-url: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
<h3>3: Staging changes from 62eccb76 to 90e3b5ad on Sun Dec 8 08:58:30 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 1af449b5..369bdce8 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -2152,7 +2152,7 @@ spec:
         settings:
           application-name: Konflux kflux-prd-rh02
           custom-console-name: Konflux kflux-prd-rh02
-          custom-console-url: TBA
+          custom-console-url: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com
           custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
index bf1e4255..ff19c8ed 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Konflux kflux-prd-rh02 
     custom-console-name: Konflux kflux-prd-rh02
-    custom-console-url: TBA
+    custom-console-url: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
<h3>3: Development changes from 62eccb76 to 90e3b5ad on Sun Dec 8 08:58:30 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 1af449b5..369bdce8 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -2152,7 +2152,7 @@ spec:
         settings:
           application-name: Konflux kflux-prd-rh02
           custom-console-name: Konflux kflux-prd-rh02
-          custom-console-url: TBA
+          custom-console-url: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com
           custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
index bf1e4255..ff19c8ed 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Konflux kflux-prd-rh02 
     custom-console-name: Konflux kflux-prd-rh02
-    custom-console-url: TBA
+    custom-console-url: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
<h3>4: Production changes from adf8bf9b to 62eccb76 on Fri Dec 6 10:41:45 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml b/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
index 87d51f18..53a88065 100644
--- a/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
+++ b/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
@@ -10,17 +10,22 @@ spec:
         generators:
           - clusters:
               values:
-                environment: ""
+                sourceRoot: configs/ingresscontroller
+                environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: ingresscontroller-{{nameNormalized}}
     spec:
       project: default
       source:
-        path: configs/ingresscontroller
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 92a6cae8..91986a6f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -181,3 +181,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: crossplane-control-plane
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ingresscontroller
diff --git a/configs/ingresscontroller/kustomization.yaml b/configs/ingresscontroller/base/kustomization.yaml
similarity index 100%
rename from configs/ingresscontroller/kustomization.yaml
rename to configs/ingresscontroller/base/kustomization.yaml
diff --git a/configs/ingresscontroller/timeout-patch.yaml b/configs/ingresscontroller/base/timeout-patch.yaml
similarity index 100%
rename from configs/ingresscontroller/timeout-patch.yaml
rename to configs/ingresscontroller/base/timeout-patch.yaml
diff --git a/configs/ingresscontroller/development/kustomization.yaml b/configs/ingresscontroller/development/kustomization.yaml
new file mode 100644
index 00000000..aa0b761e
--- /dev/null
+++ b/configs/ingresscontroller/development/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
diff --git a/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml b/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml
new file mode 100644
index 00000000..774a422d
--- /dev/null
+++ b/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../../base
diff --git a/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml b/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml
new file mode 100644
index 00000000..774a422d
--- /dev/null
+++ b/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../../base 
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
<h3>4: Staging changes from adf8bf9b to 62eccb76 on Fri Dec 6 10:41:45 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml b/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
index 87d51f18..53a88065 100644
--- a/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
+++ b/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
@@ -10,17 +10,22 @@ spec:
         generators:
           - clusters:
               values:
-                environment: ""
+                sourceRoot: configs/ingresscontroller
+                environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: ingresscontroller-{{nameNormalized}}
     spec:
       project: default
       source:
-        path: configs/ingresscontroller
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 92a6cae8..91986a6f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -181,3 +181,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: crossplane-control-plane
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ingresscontroller
diff --git a/configs/ingresscontroller/kustomization.yaml b/configs/ingresscontroller/base/kustomization.yaml
similarity index 100%
rename from configs/ingresscontroller/kustomization.yaml
rename to configs/ingresscontroller/base/kustomization.yaml
diff --git a/configs/ingresscontroller/timeout-patch.yaml b/configs/ingresscontroller/base/timeout-patch.yaml
similarity index 100%
rename from configs/ingresscontroller/timeout-patch.yaml
rename to configs/ingresscontroller/base/timeout-patch.yaml
diff --git a/configs/ingresscontroller/development/kustomization.yaml b/configs/ingresscontroller/development/kustomization.yaml
new file mode 100644
index 00000000..aa0b761e
--- /dev/null
+++ b/configs/ingresscontroller/development/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
diff --git a/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml b/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml
new file mode 100644
index 00000000..774a422d
--- /dev/null
+++ b/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../../base
diff --git a/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml b/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml
new file mode 100644
index 00000000..774a422d
--- /dev/null
+++ b/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../../base 
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
<h3>4: Development changes from adf8bf9b to 62eccb76 on Fri Dec 6 10:41:45 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml b/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
index 87d51f18..53a88065 100644
--- a/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
+++ b/argo-cd-apps/base/host/ingresscontroller/ingresscontroller.yaml
@@ -10,17 +10,22 @@ spec:
         generators:
           - clusters:
               values:
-                environment: ""
+                sourceRoot: configs/ingresscontroller
+                environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: ingresscontroller-{{nameNormalized}}
     spec:
       project: default
       source:
-        path: configs/ingresscontroller
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 92a6cae8..91986a6f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -181,3 +181,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: crossplane-control-plane
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ingresscontroller
diff --git a/configs/ingresscontroller/kustomization.yaml b/configs/ingresscontroller/base/kustomization.yaml
similarity index 100%
rename from configs/ingresscontroller/kustomization.yaml
rename to configs/ingresscontroller/base/kustomization.yaml
diff --git a/configs/ingresscontroller/timeout-patch.yaml b/configs/ingresscontroller/base/timeout-patch.yaml
similarity index 100%
rename from configs/ingresscontroller/timeout-patch.yaml
rename to configs/ingresscontroller/base/timeout-patch.yaml
diff --git a/configs/ingresscontroller/development/kustomization.yaml b/configs/ingresscontroller/development/kustomization.yaml
new file mode 100644
index 00000000..aa0b761e
--- /dev/null
+++ b/configs/ingresscontroller/development/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
diff --git a/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml b/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml
new file mode 100644
index 00000000..774a422d
--- /dev/null
+++ b/configs/ingresscontroller/production/stone-prd-host1/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../../base
diff --git a/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml b/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml
new file mode 100644
index 00000000..774a422d
--- /dev/null
+++ b/configs/ingresscontroller/staging/stone-stg-host/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-adf8bf9b/development/app-of-apps-development.yaml
584d583
<             sourceRoot: configs/ingresscontroller
586,590c585
<           elements:
<           - nameNormalized: stone-prd-host1
<             values.clusterDir: stone-prd-host1
<           - nameNormalized: stone-stg-host
<             values.clusterDir: stone-stg-host
---
>           elements: []
602c597
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
---
>         path: configs/ingresscontroller 
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
