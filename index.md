# kustomize changes tracked by commits 
### This file generated at Tue Dec 10 16:08:33 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0aedb86a to 06ddea9b on Tue Dec 10 15:39:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 266eb43b..b4733e2b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -523,7 +523,7 @@ data:
   dynamic.linux-s390x.region: "us-east-2"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-4x16"
-  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.max-instances: "15"
   dynamic.linux-s390x.private-ip: "true"
 
 # GPU Instances 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0aedb86a/production/components/multi-platform-controller/production/kustomize.out.yaml
617c617
<   dynamic.linux-s390x.max-instances: "15"
---
>   dynamic.linux-s390x.max-instances: "50" 
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
<h3>1: Staging changes from 0aedb86a to 06ddea9b on Tue Dec 10 15:39:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 266eb43b..b4733e2b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -523,7 +523,7 @@ data:
   dynamic.linux-s390x.region: "us-east-2"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-4x16"
-  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.max-instances: "15"
   dynamic.linux-s390x.private-ip: "true"
 
 # GPU Instances 
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
<h3>1: Development changes from 0aedb86a to 06ddea9b on Tue Dec 10 15:39:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 266eb43b..b4733e2b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -523,7 +523,7 @@ data:
   dynamic.linux-s390x.region: "us-east-2"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-4x16"
-  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.max-instances: "15"
   dynamic.linux-s390x.private-ip: "true"
 
 # GPU Instances 
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
<h3>2: Production changes from 5401ee80 to 0aedb86a on Tue Dec 10 14:50:25 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a98cfe1c..04eb9bc2 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+- https://github.com/konflux-ci/image-controller/config/default?ref=9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+  newTag: 9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index d27226fd..5f7b3cb7 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+- https://github.com/konflux-ci/image-controller/config/default?ref=9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+  newTag: 9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5401ee80 to 0aedb86a on Tue Dec 10 14:50:25 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a98cfe1c..04eb9bc2 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+- https://github.com/konflux-ci/image-controller/config/default?ref=9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+  newTag: 9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index d27226fd..5f7b3cb7 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+- https://github.com/konflux-ci/image-controller/config/default?ref=9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+  newTag: 9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 5401ee80 to 0aedb86a on Tue Dec 10 14:50:25 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a98cfe1c..04eb9bc2 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+- https://github.com/konflux-ci/image-controller/config/default?ref=9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+  newTag: 9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index d27226fd..5f7b3cb7 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+- https://github.com/konflux-ci/image-controller/config/default?ref=9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 28a83b3f377e14bf792cab1bfa8e3c3d22634f08
+  newTag: 9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5401ee80/development/components/image-controller/development/kustomize.out.yaml
787c787
<         image: quay.io/konflux-ci/image-controller:9986c9955e05534885e2fd8a5f0b8ea6d2383ba0
---
>         image: quay.io/konflux-ci/image-controller:28a83b3f377e14bf792cab1bfa8e3c3d22634f08 
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
<h3>3: Production changes from 766dcbb7 to 5401ee80 on Tue Dec 10 13:30:53 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index f03110a3..7a96159b 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1535,7 +1535,7 @@ spec:
                       requests:
                         cpu: 400m
                         memory: 1Gi
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b256a6e0..9c1fd2ed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2253,7 +2253,7 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4c2b876c..bc5d8190 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2265,7 +2265,7 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template: 
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
<h3>3: Staging changes from 766dcbb7 to 5401ee80 on Tue Dec 10 13:30:53 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index f03110a3..7a96159b 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1535,7 +1535,7 @@ spec:
                       requests:
                         cpu: 400m
                         memory: 1Gi
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b256a6e0..9c1fd2ed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2253,7 +2253,7 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4c2b876c..bc5d8190 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2265,7 +2265,7 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-766dcbb7/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2252c2252
<       statefulSets:
---
>       statefusets:
./commit-766dcbb7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2264c2264
<       statefulSets:
---
>       statefusets: 
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
<h3>3: Development changes from 766dcbb7 to 5401ee80 on Tue Dec 10 13:30:53 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index f03110a3..7a96159b 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1535,7 +1535,7 @@ spec:
                       requests:
                         cpu: 400m
                         memory: 1Gi
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b256a6e0..9c1fd2ed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2253,7 +2253,7 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4c2b876c..bc5d8190 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2265,7 +2265,7 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
-      statefusets:
+      statefulSets:
         tekton-pipelines-controller:
           spec:
             template: 
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
<h3>4: Production changes from f055ba70 to 766dcbb7 on Tue Dec 10 10:36:11 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index deac35e3..7adc2c7e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 52917d98..f03110a3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ff60deed..b256a6e0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 26b32cb8..4c2b876c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090 
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
<h3>4: Staging changes from f055ba70 to 766dcbb7 on Tue Dec 10 10:36:11 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index deac35e3..7adc2c7e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 52917d98..f03110a3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ff60deed..b256a6e0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 26b32cb8..4c2b876c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-f055ba70/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1442c1442
<         image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1545c1545
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1676c1676
<         image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
./commit-f055ba70/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1442c1442
<         image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1545c1545
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1676c1676
<         image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9 
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
<h3>4: Development changes from f055ba70 to 766dcbb7 on Tue Dec 10 10:36:11 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index deac35e3..7adc2c7e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 52917d98..f03110a3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ff60deed..b256a6e0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 26b32cb8..4c2b876c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-f055ba70/development/components/pipeline-service/development/kustomize.out.yaml
1266c1266
<         image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1398c1398
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1503c1503
<         image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9 
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
