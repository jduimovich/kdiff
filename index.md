# kustomize changes tracked by commits 
### This file generated at Mon Jul 29 08:04:29 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8138a8aa to 4c215882 on Mon Jul 29 07:48:57 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index ec1efb80..5c502b6e 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
+  newTag: d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
+  newTag: d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-8138a8aa/production/components/multi-platform-controller/production/kustomize.out.yaml
578c578
<         image: quay.io/konflux-ci/multi-platform-controller:d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
---
>         image: quay.io/konflux-ci/multi-platform-controller:91c2565b7c49012904dd07cfdf293af42c1dc263
620c620
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:91c2565b7c49012904dd07cfdf293af42c1dc263 
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
<h3>1: Staging changes from 8138a8aa to 4c215882 on Mon Jul 29 07:48:57 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index ec1efb80..5c502b6e 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
+  newTag: d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
+  newTag: d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-8138a8aa/staging/components/multi-platform-controller/staging/kustomize.out.yaml
481c481
<         image: quay.io/konflux-ci/multi-platform-controller:d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
---
>         image: quay.io/konflux-ci/multi-platform-controller:91c2565b7c49012904dd07cfdf293af42c1dc263
523c523
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:91c2565b7c49012904dd07cfdf293af42c1dc263 
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
<h3>1: Development changes from 8138a8aa to 4c215882 on Mon Jul 29 07:48:57 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index ec1efb80..5c502b6e 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
+  newTag: d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
+  newTag: d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-8138a8aa/development/components/multi-platform-controller/development/kustomize.out.yaml
257c257
<         image: quay.io/konflux-ci/multi-platform-controller:d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
---
>         image: quay.io/konflux-ci/multi-platform-controller:91c2565b7c49012904dd07cfdf293af42c1dc263
299c299
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d180b53f1ffd2ddfcec0b9c8db7bc6e0d709dc25
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:91c2565b7c49012904dd07cfdf293af42c1dc263 
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
<h3>2: Production changes from 42f077f6 to 8138a8aa on Sun Jul 28 07:42:07 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 81869358..ec1efb80 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
+  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
+  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-42f077f6/production/components/multi-platform-controller/production/kustomize.out.yaml
578c578
<         image: quay.io/konflux-ci/multi-platform-controller:91c2565b7c49012904dd07cfdf293af42c1dc263
---
>         image: quay.io/konflux-ci/multi-platform-controller:918893319c9ac344bfd1d2d8ee451694a4ff2172
620c620
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:91c2565b7c49012904dd07cfdf293af42c1dc263
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:918893319c9ac344bfd1d2d8ee451694a4ff2172 
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
<h3>2: Staging changes from 42f077f6 to 8138a8aa on Sun Jul 28 07:42:07 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 81869358..ec1efb80 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
+  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
+  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-42f077f6/staging/components/multi-platform-controller/staging/kustomize.out.yaml
481c481
<         image: quay.io/konflux-ci/multi-platform-controller:91c2565b7c49012904dd07cfdf293af42c1dc263
---
>         image: quay.io/konflux-ci/multi-platform-controller:918893319c9ac344bfd1d2d8ee451694a4ff2172
523c523
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:91c2565b7c49012904dd07cfdf293af42c1dc263
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:918893319c9ac344bfd1d2d8ee451694a4ff2172 
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
<h3>2: Development changes from 42f077f6 to 8138a8aa on Sun Jul 28 07:42:07 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 81869358..ec1efb80 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=91c2565b7c49012904dd07cfdf293af42c1dc263
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
+  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
+  newTag: 91c2565b7c49012904dd07cfdf293af42c1dc263
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-42f077f6/development/components/multi-platform-controller/development/kustomize.out.yaml
257c257
<         image: quay.io/konflux-ci/multi-platform-controller:91c2565b7c49012904dd07cfdf293af42c1dc263
---
>         image: quay.io/konflux-ci/multi-platform-controller:918893319c9ac344bfd1d2d8ee451694a4ff2172
299c299
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:91c2565b7c49012904dd07cfdf293af42c1dc263
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:918893319c9ac344bfd1d2d8ee451694a4ff2172 
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
<h3>3: Production changes from 2acd684d to 42f077f6 on Fri Jul 26 14:16:07 2024 </h3>  
 
<details> 
<summary>Git Diff (680 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index 3f9879e1..b097223c 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index 0e11825a..fa81fa04 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-2415879015-2415879015
+      templateRef: appstudio-admin-1876853981-1876853981
     contributor:
       templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
new file mode 100644
index 00000000..c831d07b
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-1876853981-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1876853981-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index af4b81d4..381f5d08 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index af3b1d1f..76f3bd78 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-2415879015
+      templateRef: appstudiolarge-admin-1884308846-1876853981
     contributor:
       templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
new file mode 100644
index 00000000..5d0eee26
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin 
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
<h3>3: Staging changes from 2acd684d to 42f077f6 on Fri Jul 26 14:16:07 2024 </h3>  
 
<details> 
<summary>Git Diff (680 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index 3f9879e1..b097223c 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index 0e11825a..fa81fa04 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-2415879015-2415879015
+      templateRef: appstudio-admin-1876853981-1876853981
     contributor:
       templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
new file mode 100644
index 00000000..c831d07b
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-1876853981-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1876853981-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index af4b81d4..381f5d08 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index af3b1d1f..76f3bd78 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-2415879015
+      templateRef: appstudiolarge-admin-1884308846-1876853981
     contributor:
       templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
new file mode 100644
index 00000000..5d0eee26
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin 
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
<h3>3: Development changes from 2acd684d to 42f077f6 on Fri Jul 26 14:16:07 2024 </h3>  
 
<details> 
<summary>Git Diff (680 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index 3f9879e1..b097223c 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index 0e11825a..fa81fa04 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-2415879015-2415879015
+      templateRef: appstudio-admin-1876853981-1876853981
     contributor:
       templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
new file mode 100644
index 00000000..c831d07b
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-1876853981-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1876853981-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index af4b81d4..381f5d08 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index af3b1d1f..76f3bd78 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-2415879015
+      templateRef: appstudiolarge-admin-1884308846-1876853981
     contributor:
       templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
new file mode 100644
index 00000000..5d0eee26
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin 
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
<h3>4: Production changes from 3eeb1ba4 to 2acd684d on Fri Jul 26 14:13:30 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 72e0a6c8..b76dd106 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -18,9 +18,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 8435c549..e97be925 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -19,9 +19,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index f9319fbd..f1a8e2c3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -19,9 +19,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (50 lines)</summary>  

``` 
./commit-3eeb1ba4/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1269,1271c1269,1271
<   FINALLY_TIMEOUT: 2h
<   PIPELINE_TIMEOUT: 6h
<   TASKS_TIMEOUT: 4h
---
>   FINALLY_TIMEOUT: 1h
>   PIPELINE_TIMEOUT: 3h
>   TASKS_TIMEOUT: 2h
1274c1274
<   name: pipelinerun-options-g6875ct7d8
---
>   name: pipelinerun-options-494m66dgdm
1381c1381
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1387c1387
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1393c1393
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
./commit-3eeb1ba4/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1269,1271c1269,1271
<   FINALLY_TIMEOUT: 2h
<   PIPELINE_TIMEOUT: 6h
<   TASKS_TIMEOUT: 4h
---
>   FINALLY_TIMEOUT: 1h
>   PIPELINE_TIMEOUT: 3h
>   TASKS_TIMEOUT: 2h
1274c1274
<   name: pipelinerun-options-g6875ct7d8
---
>   name: pipelinerun-options-494m66dgdm
1381c1381
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1387c1387
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1393c1393
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm 
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
<h3>4: Staging changes from 3eeb1ba4 to 2acd684d on Fri Jul 26 14:13:30 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 72e0a6c8..b76dd106 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -18,9 +18,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 8435c549..e97be925 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -19,9 +19,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index f9319fbd..f1a8e2c3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -19,9 +19,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-3eeb1ba4/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1269,1271c1269,1271
<   FINALLY_TIMEOUT: 2h
<   PIPELINE_TIMEOUT: 6h
<   TASKS_TIMEOUT: 4h
---
>   FINALLY_TIMEOUT: 1h
>   PIPELINE_TIMEOUT: 3h
>   TASKS_TIMEOUT: 2h
1274c1274
<   name: pipelinerun-options-g6875ct7d8
---
>   name: pipelinerun-options-494m66dgdm
1381c1381
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1387c1387
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1393c1393
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm 
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
<h3>4: Development changes from 3eeb1ba4 to 2acd684d on Fri Jul 26 14:13:30 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 72e0a6c8..b76dd106 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -18,9 +18,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 8435c549..e97be925 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -19,9 +19,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index f9319fbd..f1a8e2c3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -19,9 +19,9 @@ configMapGenerator:
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
-    - PIPELINE_TIMEOUT="3h"
-    - TASKS_TIMEOUT="2h"
-    - FINALLY_TIMEOUT="1h"
+    - PIPELINE_TIMEOUT="6h"
+    - TASKS_TIMEOUT="4h"
+    - FINALLY_TIMEOUT="2h"
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-3eeb1ba4/development/components/integration/development/kustomize.out.yaml
1267,1269c1267,1269
<   FINALLY_TIMEOUT: 2h
<   PIPELINE_TIMEOUT: 6h
<   TASKS_TIMEOUT: 4h
---
>   FINALLY_TIMEOUT: 1h
>   PIPELINE_TIMEOUT: 3h
>   TASKS_TIMEOUT: 2h
1272c1272
<   name: pipelinerun-options-g6875ct7d8
---
>   name: pipelinerun-options-494m66dgdm
1379c1379
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1385c1385
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm
1391c1391
<               name: pipelinerun-options-g6875ct7d8
---
>               name: pipelinerun-options-494m66dgdm 
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
