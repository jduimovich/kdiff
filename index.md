# kustomize changes tracked by commits 
### This file generated at Mon Dec  2 16:10:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 35f903fe to 08836b9e on Mon Dec 2 15:48:39 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/base/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 1a0740d5..fc22a80d 100644
--- a/components/multi-platform-controller/production-downstream/base/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - external-secrets.yaml
 
 components:
@@ -15,7 +15,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index f9320e90..ccc55028 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -7,8 +7,8 @@ resources:
 - ../base/common
 - host-config.yaml
 - external-secrets.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 
 components:
   - ../k-components/manager-resources
@@ -16,7 +16,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-35f903fe/production/components/multi-platform-controller/production/kustomize.out.yaml
818c818
<         image: quay.io/konflux-ci/multi-platform-controller:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
---
>         image: quay.io/konflux-ci/multi-platform-controller:6f8abf513a9da030c16286ef9fffa4084db33cca
902c902
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:6f8abf513a9da030c16286ef9fffa4084db33cca 
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
<h3>1: Staging changes from 35f903fe to 08836b9e on Mon Dec 2 15:48:39 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/base/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 1a0740d5..fc22a80d 100644
--- a/components/multi-platform-controller/production-downstream/base/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - external-secrets.yaml
 
 components:
@@ -15,7 +15,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index f9320e90..ccc55028 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -7,8 +7,8 @@ resources:
 - ../base/common
 - host-config.yaml
 - external-secrets.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 
 components:
   - ../k-components/manager-resources
@@ -16,7 +16,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 35f903fe to 08836b9e on Mon Dec 2 15:48:39 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/base/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 1a0740d5..fc22a80d 100644
--- a/components/multi-platform-controller/production-downstream/base/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - external-secrets.yaml
 
 components:
@@ -15,7 +15,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index f9320e90..ccc55028 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -7,8 +7,8 @@ resources:
 - ../base/common
 - host-config.yaml
 - external-secrets.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 
 components:
   - ../k-components/manager-resources
@@ -16,7 +16,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
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

<div>
<h3>2: Production changes from c7d1fbda to 35f903fe on Mon Dec 2 14:59:14 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 260b506d..a60fdf2c 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=27222cf35825df8425d637d7ef63bb7b2393e0c6
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ccb0ab66..f0be2ff2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
+  - https://github.com/konflux-ci/release-service/config/default?ref=27222cf35825df8425d637d7ef63bb7b2393e0c6
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: eb5da6151492402ec802ce6fd602b77dd1f4cb03
+    newTag: 27222cf35825df8425d637d7ef63bb7b2393e0c6
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c7d1fbda to 35f903fe on Mon Dec 2 14:59:14 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 260b506d..a60fdf2c 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=27222cf35825df8425d637d7ef63bb7b2393e0c6
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ccb0ab66..f0be2ff2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
+  - https://github.com/konflux-ci/release-service/config/default?ref=27222cf35825df8425d637d7ef63bb7b2393e0c6
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: eb5da6151492402ec802ce6fd602b77dd1f4cb03
+    newTag: 27222cf35825df8425d637d7ef63bb7b2393e0c6
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c7d1fbda to 35f903fe on Mon Dec 2 14:59:14 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 260b506d..a60fdf2c 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=27222cf35825df8425d637d7ef63bb7b2393e0c6
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ccb0ab66..f0be2ff2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
+  - https://github.com/konflux-ci/release-service/config/default?ref=27222cf35825df8425d637d7ef63bb7b2393e0c6
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: eb5da6151492402ec802ce6fd602b77dd1f4cb03
+    newTag: 27222cf35825df8425d637d7ef63bb7b2393e0c6
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c7d1fbda/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:27222cf35825df8425d637d7ef63bb7b2393e0c6
---
>         image: quay.io/konflux-ci/release-service:eb5da6151492402ec802ce6fd602b77dd1f4cb03 
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
<h3>3: Production changes from 38bdf3cc to c7d1fbda on Mon Dec 2 14:59:07 2024 </h3>  
 
<details> 
<summary>Git Diff (800 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 2d598175..75829e32 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -563,22 +503,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -595,21 +519,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1448,69 +1357,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 8662a6da..0356c007 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -30,14 +30,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -139,37 +131,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -189,27 +150,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -526,22 +466,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -558,21 +482,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1412,69 +1321,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d1978c7f..cdd39ba0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -37,14 +37,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -171,37 +163,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -221,27 +182,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -745,22 +685,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -777,21 +701,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1801,69 +1710,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: argoproj.io/v1alpha1
 kind: Application
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 48e42a7e..98fb0e01 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -37,14 +37,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -171,37 +163,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -221,27 +182,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -745,22 +685,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -777,21 +701,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1801,69 +1710,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: argoproj.io/v1alpha1
 kind: Application
 metadata: 
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
<h3>3: Staging changes from 38bdf3cc to c7d1fbda on Mon Dec 2 14:59:07 2024 </h3>  
 
<details> 
<summary>Git Diff (800 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 2d598175..75829e32 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -563,22 +503,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -595,21 +519,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1448,69 +1357,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 8662a6da..0356c007 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -30,14 +30,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -139,37 +131,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -189,27 +150,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -526,22 +466,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -558,21 +482,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1412,69 +1321,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d1978c7f..cdd39ba0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -37,14 +37,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -171,37 +163,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -221,27 +182,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -745,22 +685,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -777,21 +701,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1801,69 +1710,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: argoproj.io/v1alpha1
 kind: Application
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 48e42a7e..98fb0e01 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -37,14 +37,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -171,37 +163,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -221,27 +182,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -745,22 +685,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -777,21 +701,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1801,69 +1710,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: argoproj.io/v1alpha1
 kind: Application
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (322 lines)</summary>  

``` 
./commit-38bdf3cc/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
42a43,50
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
169a178,208
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
187a227,247
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
691a752,767
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
706a783,797
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1707a1799,1861
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 200m
>                 memory: 200Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-38bdf3cc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
42a43,50
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
169a178,208
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
187a227,247
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
691a752,767
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
706a783,797
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1707a1799,1861
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 200m
>                 memory: 200Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 38bdf3cc to c7d1fbda on Mon Dec 2 14:59:07 2024 </h3>  
 
<details> 
<summary>Git Diff (800 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 2d598175..75829e32 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -563,22 +503,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -595,21 +519,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1448,69 +1357,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 8662a6da..0356c007 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -30,14 +30,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -139,37 +131,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -189,27 +150,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -526,22 +466,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -558,21 +482,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1412,69 +1321,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d1978c7f..cdd39ba0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -37,14 +37,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -171,37 +163,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -221,27 +182,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -745,22 +685,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -777,21 +701,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1801,69 +1710,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: argoproj.io/v1alpha1
 kind: Application
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 48e42a7e..98fb0e01 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -37,14 +37,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -171,37 +163,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -221,27 +182,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -745,22 +685,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -777,21 +701,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1801,69 +1710,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: argoproj.io/v1alpha1
 kind: Application
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (161 lines)</summary>  

``` 
./commit-38bdf3cc/development/components/pipeline-service/development/kustomize.out.yaml
34a35,42
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
174a183,213
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
192a232,252
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
681a742,757
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
696a773,787
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1561a1653,1715
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *' 
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
<h3>4: Production changes from 05dcac83 to 38bdf3cc on Mon Dec 2 14:15:13 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index beaabd97..8e9a843d 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+    newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index e368acd2..fd39a512 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+- https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+  newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
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
<h3>4: Staging changes from 05dcac83 to 38bdf3cc on Mon Dec 2 14:15:13 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index beaabd97..8e9a843d 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+    newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index e368acd2..fd39a512 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+- https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+  newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (133 lines)</summary>  

``` 
./commit-05dcac83/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
462,463d461
<       "additionalBranchPrefix": "{{baseBranch}}/",
<       "branchPrefix": "konflux/mintmaker/",
506d503
<         "additionalBranchPrefix": "",
548a546,547
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
560,562c559
<             "matchManagers": [
<               "rpm"
<             ]
---
>             "matchManagers": ["rpm"]
564a562,563
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
579a579,580
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
584a586,587
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
589a593,594
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
594a600,601
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
599a607,608
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
604a614,615
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
609a621,622
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
614a628,629
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
619a635,636
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
624a642,643
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
629a649,650
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
634a656,657
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
639a663,664
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
644a670,671
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
649a677,678
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
654a684,685
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
659a691,692
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
664a698,699
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
670a706,707
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
675a713,714
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
680a720,721
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
685a727,728
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
690a734,735
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
695a741,742
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
700a748,749
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
705a755,756
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
710a762,763
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
715a769,770
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
720a776,777
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
725a783,784
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
730a790,791
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
735a797,798
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
740a804,805
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
745a811,812
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
750a818,819
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
756,758c825
<       "allowedPostUpgradeCommands": [
<         "^rpm-lockfile-prototype rpms.in.yaml$"
<       ],
---
>       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
839c906
<         image: quay.io/konflux-ci/mintmaker:69ed9315e29c04ff1ddc6d57987dd998ae215672
---
>         image: quay.io/konflux-ci/mintmaker:bc5123d66773c7c6dbd4465f29eb0a85f70fb882 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 05dcac83 to 38bdf3cc on Mon Dec 2 14:15:13 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index beaabd97..8e9a843d 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+    newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index e368acd2..fd39a512 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+- https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: bc5123d66773c7c6dbd4465f29eb0a85f70fb882
+  newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (133 lines)</summary>  

``` 
./commit-05dcac83/development/components/mintmaker/development/kustomize.out.yaml
462,463d461
<       "additionalBranchPrefix": "{{baseBranch}}/",
<       "branchPrefix": "konflux/mintmaker/",
506d503
<         "additionalBranchPrefix": "",
548a546,547
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
560,562c559
<             "matchManagers": [
<               "rpm"
<             ]
---
>             "matchManagers": ["rpm"]
564a562,563
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
579a579,580
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
584a586,587
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
589a593,594
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
594a600,601
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
599a607,608
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
604a614,615
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
609a621,622
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
614a628,629
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
619a635,636
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
624a642,643
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
629a649,650
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
634a656,657
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
639a663,664
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
644a670,671
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
649a677,678
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
654a684,685
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
659a691,692
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
664a698,699
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
670a706,707
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
675a713,714
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
680a720,721
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
685a727,728
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
690a734,735
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
695a741,742
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
700a748,749
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
705a755,756
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
710a762,763
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
715a769,770
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
720a776,777
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
725a783,784
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
730a790,791
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
735a797,798
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
740a804,805
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
745a811,812
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
750a818,819
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
756,758c825
<       "allowedPostUpgradeCommands": [
<         "^rpm-lockfile-prototype rpms.in.yaml$"
<       ],
---
>       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
838c905
<         image: quay.io/konflux-ci/mintmaker:69ed9315e29c04ff1ddc6d57987dd998ae215672
---
>         image: quay.io/konflux-ci/mintmaker:bc5123d66773c7c6dbd4465f29eb0a85f70fb882 
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
