# kustomize changes tracked by commits 
### This file generated at Thu Feb  8 16:07:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c168c478 to aa580364 on Thu Feb 8 15:55:24 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8794adf9..65aaabc4 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1cb9ae10..ee640cb7 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from c168c478 to aa580364 on Thu Feb 8 15:55:24 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8794adf9..65aaabc4 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1cb9ae10..ee640cb7 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from c168c478 to aa580364 on Thu Feb 8 15:55:24 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8794adf9..65aaabc4 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1cb9ae10..ee640cb7 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
+    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c168c478/development/components/release/development/kustomize.out.yaml
1697c1697
<         image: quay.io/redhat-appstudio/release-service:a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
---
>         image: quay.io/redhat-appstudio/release-service:3b6255c66b5e6f69385feca861ce5aadfe6a6e2b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from cee718c8 to c168c478 on Thu Feb 8 14:30:12 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index aa682463..a02c5775 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
+  newTag: 455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 4f16f731..51f043e7 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
+  newTag: 455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from cee718c8 to c168c478 on Thu Feb 8 14:30:12 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index aa682463..a02c5775 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
+  newTag: 455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 4f16f731..51f043e7 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
+  newTag: 455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-cee718c8/staging/components/image-controller/staging/kustomize.out.yaml
668c668
<         image: quay.io/redhat-appstudio/image-controller:455f1c5b1756c4896b508592ac80fffd6cb9b3c1
---
>         image: quay.io/redhat-appstudio/image-controller:889c0b1d674feb10123817a4270d0b4cfe39636e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from cee718c8 to c168c478 on Thu Feb 8 14:30:12 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index aa682463..a02c5775 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
+  newTag: 455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 4f16f731..51f043e7 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
+  newTag: 455f1c5b1756c4896b508592ac80fffd6cb9b3c1
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-cee718c8/development/components/image-controller/development/kustomize.out.yaml
669c669
<         image: quay.io/redhat-appstudio/image-controller:455f1c5b1756c4896b508592ac80fffd6cb9b3c1
---
>         image: quay.io/redhat-appstudio/image-controller:889c0b1d674feb10123817a4270d0b4cfe39636e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 351d090c to cee718c8 on Thu Feb 8 13:40:47 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ae43a74e..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
 - ../../base
 - toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..92650350
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-stage-p01.apys.p3.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-stage-p01.apys.p3.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 351d090c to cee718c8 on Thu Feb 8 13:40:47 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ae43a74e..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
 - ../../base
 - toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..92650350
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-stage-p01.apys.p3.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-stage-p01.apys.p3.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 351d090c to cee718c8 on Thu Feb 8 13:40:47 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ae43a74e..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
 - ../../base
 - toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..92650350
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-stage-p01.apys.p3.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-stage-p01.apys.p3.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 48e91d5a to 351d090c on Thu Feb 8 11:50:49 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
index 3614bf97..f467b27c 100644
--- a/.tekton/build-service-prod-overlay-update.yaml
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   name: build-service-prod-overlay-update
-  namespace: rhtap-promotion-staging
+  namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index b38e36ee..8d2b1560 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   name: image-controller-prod-overlay-update
-  namespace: rhtap-promotion-staging
+  namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 21350ab7..8fd610d8 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -103,3 +103,10 @@ metadata:
   name: pipeline-service
 spec:
   url: "https://github.com/openshift-pipelines/pipeline-service"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: infra-deployments
+spec:
+  url: "https://github.com/redhat-appstudio/infra-deployments" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-48e91d5a/production/components/tekton-ci/production/kustomize.out.yaml
308,316d307
<   name: infra-deployments
< spec:
<   url: https://github.com/redhat-appstudio/infra-deployments
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 48e91d5a to 351d090c on Thu Feb 8 11:50:49 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
index 3614bf97..f467b27c 100644
--- a/.tekton/build-service-prod-overlay-update.yaml
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   name: build-service-prod-overlay-update
-  namespace: rhtap-promotion-staging
+  namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index b38e36ee..8d2b1560 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   name: image-controller-prod-overlay-update
-  namespace: rhtap-promotion-staging
+  namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 21350ab7..8fd610d8 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -103,3 +103,10 @@ metadata:
   name: pipeline-service
 spec:
   url: "https://github.com/openshift-pipelines/pipeline-service"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: infra-deployments
+spec:
+  url: "https://github.com/redhat-appstudio/infra-deployments" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-48e91d5a/staging/components/tekton-ci/staging/kustomize.out.yaml
268,276d267
<   name: infra-deployments
< spec:
<   url: https://github.com/redhat-appstudio/infra-deployments
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 48e91d5a to 351d090c on Thu Feb 8 11:50:49 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
index 3614bf97..f467b27c 100644
--- a/.tekton/build-service-prod-overlay-update.yaml
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   name: build-service-prod-overlay-update
-  namespace: rhtap-promotion-staging
+  namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index b38e36ee..8d2b1560 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   name: image-controller-prod-overlay-update
-  namespace: rhtap-promotion-staging
+  namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 21350ab7..8fd610d8 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -103,3 +103,10 @@ metadata:
   name: pipeline-service
 spec:
   url: "https://github.com/openshift-pipelines/pipeline-service"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: infra-deployments
+spec:
+  url: "https://github.com/redhat-appstudio/infra-deployments" 
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
```
 
</details> 
<br> 


</div>
