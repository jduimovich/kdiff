# kustomize changes tracked by commits 
### This file generated at Fri Nov 22 08:05:41 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f3abc83e to 469f337c on Thu Nov 21 19:44:44 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
index abf9a71b..864e999b 100644
--- a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - crossplane-control-plane.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator 
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
<h3>1: Staging changes from f3abc83e to 469f337c on Thu Nov 21 19:44:44 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
index abf9a71b..864e999b 100644
--- a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - crossplane-control-plane.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator 
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
<h3>1: Development changes from f3abc83e to 469f337c on Thu Nov 21 19:44:44 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
index abf9a71b..864e999b 100644
--- a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - crossplane-control-plane.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f3abc83e/development/app-of-apps-development.yaml
219,221d218
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true" 
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
<h3>2: Production changes from 4cb5969a to f3abc83e on Thu Nov 21 17:27:13 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 903c7984..7da1382c 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/production
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,6 +11,6 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4cb5969a/production/components/release/production/kustomize.out.yaml
2071c2071
<         image: quay.io/konflux-ci/release-service:00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
---
>         image: quay.io/konflux-ci/release-service:e94df330de52919fd7d77cf41df2f5cca0adb4f5 
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
<h3>2: Staging changes from 4cb5969a to f3abc83e on Thu Nov 21 17:27:13 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 903c7984..7da1382c 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/production
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,6 +11,6 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 4cb5969a to f3abc83e on Thu Nov 21 17:27:13 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 903c7984..7da1382c 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/production
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,6 +11,6 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 83c2541c to 4cb5969a on Thu Nov 21 17:16:16 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b1a00933..7331456c 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
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
<h3>3: Staging changes from 83c2541c to 4cb5969a on Thu Nov 21 17:16:16 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b1a00933..7331456c 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-83c2541c/staging/components/release/staging/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
---
>         image: quay.io/konflux-ci/release-service:e94df330de52919fd7d77cf41df2f5cca0adb4f5 
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
<h3>3: Development changes from 83c2541c to 4cb5969a on Thu Nov 21 17:16:16 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b1a00933..7331456c 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 54c02155 to 83c2541c on Thu Nov 21 16:29:30 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml
new file mode 100644
index 00000000..8389b73b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: crossplane-control-plane
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/crossplane-control-plane
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: crossplane-control-plane-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: crossplane-system
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
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
new file mode 100644
index 00000000..abf9a71b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- crossplane-control-plane.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index c4de07ba..e602a10d 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -25,5 +25,6 @@ resources:
   - workspaces
   - proactive-scaler
   - knative-eventing
+  - crossplane-control-plane
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 4752cffc..ab2a83c0 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -179,3 +179,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: knative-eventing
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index e19c6a33..92a6cae8 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -176,3 +176,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: proactive-scaler
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index a11afbec..bb90c164 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -192,3 +192,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: proactive-scaler
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/components/crossplane-control-plane/OWNERS b/components/crossplane-control-plane/OWNERS
new file mode 100644
index 00000000..c48b4305
--- /dev/null
+++ b/components/crossplane-control-plane/OWNERS
@@ -0,0 +1,9 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
+- hmariset
diff --git a/components/crossplane-control-plane/base/kustomization.yaml b/components/crossplane-control-plane/base/kustomization.yaml
new file mode 100644
index 00000000..6bd18091
--- /dev/null
+++ b/components/crossplane-control-plane/base/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- https://github.com/konflux-ci/crossplane-control-plane/config/ocp?ref=c01ece341987d863e3b28bd3c8c0a670a50fe16f
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/development/kustomization.yaml b/components/crossplane-control-plane/development/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/development/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/production/kustomization.yaml b/components/crossplane-control-plane/production/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/production/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/staging/kustomization.yaml b/components/crossplane-control-plane/staging/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index 138efe56..429259d6 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -10,6 +10,7 @@ main() {
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
+    set_kustomize_build_options
     print_url
 }
 
@@ -99,6 +100,11 @@ spec:
 ' --type=merge
 }
 
+set_kustomize_build_options() {
+    echo "Setting kustomize build options"
+    kubectl patch argocd/openshift-gitops -n openshift-gitops -p '{"spec":{"kustomizeBuildOptions":"--enable-helm"}}' --type=merge
+}
+
 print_url() {
     local argo_cd_route argo_cd_url
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-83c2541c/production/components: crossplane-control-plane 
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
<h3>4: Staging changes from 54c02155 to 83c2541c on Thu Nov 21 16:29:30 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml
new file mode 100644
index 00000000..8389b73b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: crossplane-control-plane
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/crossplane-control-plane
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: crossplane-control-plane-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: crossplane-system
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
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
new file mode 100644
index 00000000..abf9a71b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- crossplane-control-plane.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index c4de07ba..e602a10d 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -25,5 +25,6 @@ resources:
   - workspaces
   - proactive-scaler
   - knative-eventing
+  - crossplane-control-plane
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 4752cffc..ab2a83c0 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -179,3 +179,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: knative-eventing
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index e19c6a33..92a6cae8 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -176,3 +176,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: proactive-scaler
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index a11afbec..bb90c164 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -192,3 +192,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: proactive-scaler
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/components/crossplane-control-plane/OWNERS b/components/crossplane-control-plane/OWNERS
new file mode 100644
index 00000000..c48b4305
--- /dev/null
+++ b/components/crossplane-control-plane/OWNERS
@@ -0,0 +1,9 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
+- hmariset
diff --git a/components/crossplane-control-plane/base/kustomization.yaml b/components/crossplane-control-plane/base/kustomization.yaml
new file mode 100644
index 00000000..6bd18091
--- /dev/null
+++ b/components/crossplane-control-plane/base/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- https://github.com/konflux-ci/crossplane-control-plane/config/ocp?ref=c01ece341987d863e3b28bd3c8c0a670a50fe16f
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/development/kustomization.yaml b/components/crossplane-control-plane/development/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/development/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/production/kustomization.yaml b/components/crossplane-control-plane/production/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/production/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/staging/kustomization.yaml b/components/crossplane-control-plane/staging/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index 138efe56..429259d6 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -10,6 +10,7 @@ main() {
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
+    set_kustomize_build_options
     print_url
 }
 
@@ -99,6 +100,11 @@ spec:
 ' --type=merge
 }
 
+set_kustomize_build_options() {
+    echo "Setting kustomize build options"
+    kubectl patch argocd/openshift-gitops -n openshift-gitops -p '{"spec":{"kustomizeBuildOptions":"--enable-helm"}}' --type=merge
+}
+
 print_url() {
     local argo_cd_route argo_cd_url
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-83c2541c/staging/components: crossplane-control-plane 
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
<h3>4: Development changes from 54c02155 to 83c2541c on Thu Nov 21 16:29:30 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml
new file mode 100644
index 00000000..8389b73b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/crossplane-control-plane.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: crossplane-control-plane
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/crossplane-control-plane
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: crossplane-control-plane-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: crossplane-system
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
diff --git a/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
new file mode 100644
index 00000000..abf9a71b
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/crossplane-control-plane/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- crossplane-control-plane.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index c4de07ba..e602a10d 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -25,5 +25,6 @@ resources:
   - workspaces
   - proactive-scaler
   - knative-eventing
+  - crossplane-control-plane
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 4752cffc..ab2a83c0 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -179,3 +179,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: knative-eventing
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index e19c6a33..92a6cae8 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -176,3 +176,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: proactive-scaler
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index a11afbec..bb90c164 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -192,3 +192,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: proactive-scaler
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: crossplane-control-plane
diff --git a/components/crossplane-control-plane/OWNERS b/components/crossplane-control-plane/OWNERS
new file mode 100644
index 00000000..c48b4305
--- /dev/null
+++ b/components/crossplane-control-plane/OWNERS
@@ -0,0 +1,9 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
+- hmariset
diff --git a/components/crossplane-control-plane/base/kustomization.yaml b/components/crossplane-control-plane/base/kustomization.yaml
new file mode 100644
index 00000000..6bd18091
--- /dev/null
+++ b/components/crossplane-control-plane/base/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- https://github.com/konflux-ci/crossplane-control-plane/config/ocp?ref=c01ece341987d863e3b28bd3c8c0a670a50fe16f
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/development/kustomization.yaml b/components/crossplane-control-plane/development/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/development/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/production/kustomization.yaml b/components/crossplane-control-plane/production/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/production/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/crossplane-control-plane/staging/kustomization.yaml b/components/crossplane-control-plane/staging/kustomization.yaml
new file mode 100644
index 00000000..5da221fe
--- /dev/null
+++ b/components/crossplane-control-plane/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- ../base
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index 138efe56..429259d6 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -10,6 +10,7 @@ main() {
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
+    set_kustomize_build_options
     print_url
 }
 
@@ -99,6 +100,11 @@ spec:
 ' --type=merge
 }
 
+set_kustomize_build_options() {
+    echo "Setting kustomize build options"
+    kubectl patch argocd/openshift-gitops -n openshift-gitops -p '{"spec":{"kustomizeBuildOptions":"--enable-helm"}}' --type=merge
+}
+
 print_url() {
     local argo_cd_route argo_cd_url
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (46 lines)</summary>  

``` 
./commit-54c02155/development/app-of-apps-development.yaml
212,254d211
<   name: crossplane-control-plane
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/crossplane-control-plane
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: crossplane-control-plane-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: crossplane-system
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
./commit-83c2541c/development/components: crossplane-control-plane 
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
