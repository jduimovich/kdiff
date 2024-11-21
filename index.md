# kustomize changes tracked by commits 
### This file generated at Thu Nov 21 16:07:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2fac1d49 to 54c02155 on Thu Nov 21 15:28:59 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 14016ae0..7db68bb7 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=615a33197cb90e3c08390b2bec80596928290de8
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index c3096396..41ac8aeb 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=615a33197cb90e3c08390b2bec80596928290de8
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 615a33197cb90e3c08390b2bec80596928290de8
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
<h3>1: Staging changes from 2fac1d49 to 54c02155 on Thu Nov 21 15:28:59 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 14016ae0..7db68bb7 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=615a33197cb90e3c08390b2bec80596928290de8
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index c3096396..41ac8aeb 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=615a33197cb90e3c08390b2bec80596928290de8
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 615a33197cb90e3c08390b2bec80596928290de8
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
<h3>1: Development changes from 2fac1d49 to 54c02155 on Thu Nov 21 15:28:59 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 14016ae0..7db68bb7 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=615a33197cb90e3c08390b2bec80596928290de8
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index c3096396..41ac8aeb 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=615a33197cb90e3c08390b2bec80596928290de8
+  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 615a33197cb90e3c08390b2bec80596928290de8
+    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2fac1d49/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
---
>         image: quay.io/konflux-ci/release-service:615a33197cb90e3c08390b2bec80596928290de8 
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
<h3>2: Production changes from 7eeb81c3 to 2fac1d49 on Thu Nov 21 14:06:30 2024 </h3>  
 
<details> 
<summary>Git Diff (0 lines)</summary>  

``` 
 
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
<h3>2: Staging changes from 7eeb81c3 to 2fac1d49 on Thu Nov 21 14:06:30 2024 </h3>  
 
<details> 
<summary>Git Diff (0 lines)</summary>  

``` 
 
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
<h3>2: Development changes from 7eeb81c3 to 2fac1d49 on Thu Nov 21 14:06:30 2024 </h3>  
 
<details> 
<summary>Git Diff (0 lines)</summary>  

``` 
 
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
<h3>3: Production changes from 3586dfc2 to 7eeb81c3 on Thu Nov 21 13:33:27 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 841d3a53..d843e7a8 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
+    newTag: 38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 configMapGenerator:
   - literals:
@@ -26,4 +26,4 @@ configMapGenerator:
     behavior: replace
 
 
-namespace: application-service
\ No newline at end of file
+namespace: application-service
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 95a21944..0fcb2c03 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 components:
   - ../k-components/manager-resources
@@ -14,7 +14,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
+    newTag: 38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 configMapGenerator:
   - literals:
@@ -33,4 +33,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-namespace: application-service
\ No newline at end of file
+namespace: application-service
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 74f7299f..c75ccfc9 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 
 configMapGenerator:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 30a49a9e..504ed094 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-3586dfc2/production/components/has/production/kustomize.out.yaml
763c763
<         image: quay.io/redhat-appstudio/application-service:38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
---
>         image: quay.io/redhat-appstudio/application-service:338ad7f4e3577aa7c9b5be293a97689d84a28442 
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
<h3>3: Staging changes from 3586dfc2 to 7eeb81c3 on Thu Nov 21 13:33:27 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 841d3a53..d843e7a8 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
+    newTag: 38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 configMapGenerator:
   - literals:
@@ -26,4 +26,4 @@ configMapGenerator:
     behavior: replace
 
 
-namespace: application-service
\ No newline at end of file
+namespace: application-service
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 95a21944..0fcb2c03 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 components:
   - ../k-components/manager-resources
@@ -14,7 +14,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
+    newTag: 38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 configMapGenerator:
   - literals:
@@ -33,4 +33,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-namespace: application-service
\ No newline at end of file
+namespace: application-service
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 74f7299f..c75ccfc9 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 
 configMapGenerator:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 30a49a9e..504ed094 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-3586dfc2/staging/components/has/staging/kustomize.out.yaml
790c790
<         image: quay.io/redhat-appstudio/application-service:38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
---
>         image: quay.io/redhat-appstudio/application-service:338ad7f4e3577aa7c9b5be293a97689d84a28442 
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
<h3>3: Development changes from 3586dfc2 to 7eeb81c3 on Thu Nov 21 13:33:27 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 841d3a53..d843e7a8 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
+    newTag: 38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 configMapGenerator:
   - literals:
@@ -26,4 +26,4 @@ configMapGenerator:
     behavior: replace
 
 
-namespace: application-service
\ No newline at end of file
+namespace: application-service
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 95a21944..0fcb2c03 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 components:
   - ../k-components/manager-resources
@@ -14,7 +14,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 338ad7f4e3577aa7c9b5be293a97689d84a28442
+    newTag: 38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 configMapGenerator:
   - literals:
@@ -33,4 +33,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-namespace: application-service
\ No newline at end of file
+namespace: application-service
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 74f7299f..c75ccfc9 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
 
 
 configMapGenerator:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 30a49a9e..504ed094 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-3586dfc2/development/components/has/development/kustomize.out.yaml
735c735
<         image: quay.io/redhat-appstudio/application-service:38f1c98cff769f7ee98fe16bb57ab4ca0f751f49
---
>         image: quay.io/redhat-appstudio/application-service:338ad7f4e3577aa7c9b5be293a97689d84a28442 
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
<h3>4: Production changes from edbb77c9 to 3586dfc2 on Thu Nov 21 12:26:09 2024 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
index 25eb4d0e..35be32b3 100644
--- a/components/kubearchive/base/kustomization.yaml
+++ b/components/kubearchive/base/kustomization.yaml
@@ -2,7 +2,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/kubearchive/kubearchive/releases/download/v0.3.0/kubearchive.yaml?timeout=90
+- https://github.com/kubearchive/kubearchive/releases/download/v0.4.0/kubearchive.yaml?timeout=90
 - rbac.yaml
 # This alternative service is needed because the operator creates the
 # ApiServerSource pointing to <namespace>-sink, and here namespace is
@@ -12,6 +12,7 @@ resources:
 # Failed to update status for "product-kubearchive-a13e": ApiServerSource.sources.knative.dev
 #   "product-kubearchive-a13e" is invalid: namespaces: Invalid value: "null": namespaces in body
 #    must be of type array: "null"
+# This can be removed when this work is merged https://github.com/kubearchive/kubearchive/issues/589
 - alternative-service.yaml
 
 # ROSA does not support namespaces starting with `kube`
@@ -124,13 +125,6 @@ patches:
         spec:
           containers:
             - name: kubearchive-api-server
-              resources:
-                requests:
-                  cpu: 50m
-                  memory: 50Mi
-                limits:
-                  cpu: 100m
-                  memory: 50Mi
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
@@ -165,13 +159,6 @@ patches:
         spec:
           containers:
             - name: kubearchive-sink
-              resources:
-                requests:
-                  cpu: 50m
-                  memory: 50Mi
-                limits:
-                  cpu: 100m
-                  memory: 50Mi
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
diff --git a/components/kubearchive/base/rbac.yaml b/components/kubearchive/base/rbac.yaml
index c78f153e..effb2037 100644
--- a/components/kubearchive/base/rbac.yaml
+++ b/components/kubearchive/base/rbac.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: konflux-kubearchive
+    name: konflux-kubearchive  # rover group
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
index 90927bb3..4a4d6723 100644
--- a/components/kubearchive/development/kustomization.yaml
+++ b/components/kubearchive/development/kustomization.yaml
@@ -1,21 +1,22 @@
+---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- postgresql.yaml
+  - ../base
+  - postgresql.yaml
 
 secretGenerator:
-- behavior: merge
-  literals:
-  - DATABASE_KIND=postgresql
-  - DATABASE_PORT=5432
-  - DATABASE_DB=kubearchive
-  - DATABASE_USER=kubearchive
-  - DATABASE_URL=postgresql.product-kubearchive.svc.cluster.local
-  - DATABASE_PASSWORD=password  # notsecret
-  name: kubearchive-database-credentials
-  namespace: kubearchive
-  type: Opaque
+  - behavior: merge
+    literals:
+      - DATABASE_KIND=postgresql
+      - DATABASE_PORT=5432
+      - DATABASE_DB=kubearchive
+      - DATABASE_USER=kubearchive
+      - DATABASE_URL=postgresql.product-kubearchive.svc.cluster.local
+      - DATABASE_PASSWORD=password  # notsecret
+    name: kubearchive-database-credentials
+    namespace: kubearchive
+    type: Opaque
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/kubearchive/development/postgresql.yaml b/components/kubearchive/development/postgresql.yaml
index fb9cef9e..2dfd14db 100644
--- a/components/kubearchive/development/postgresql.yaml
+++ b/components/kubearchive/development/postgresql.yaml
@@ -4,7 +4,9 @@ kind: Deployment
 metadata:
   name: postgresql
   annotations:
-    ignore-check.kube-linter.io/no-read-only-root-fs: "Postgres requires to write on root fs, ignoring this one as this is only used in development environment"
+    ignore-check.kube-linter.io/no-read-only-root-fs: >
+      "Postgres requires to write on root fs,
+       ignoring this one as this is only used in development environment"
   labels:
     app: postgresql
 spec:
diff --git a/components/kubearchive/staging/database-secret.yaml b/components/kubearchive/staging/database-secret.yaml
index 354471ed..14e9b7c4 100644
--- a/components/kubearchive/staging/database-secret.yaml
+++ b/components/kubearchive/staging/database-secret.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -8,7 +9,8 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
+        key: >
+          integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
index ea568bae..96973dd3 100644
--- a/components/kubearchive/staging/kustomization.yaml
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources: 
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
<h3>4: Staging changes from edbb77c9 to 3586dfc2 on Thu Nov 21 12:26:09 2024 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
index 25eb4d0e..35be32b3 100644
--- a/components/kubearchive/base/kustomization.yaml
+++ b/components/kubearchive/base/kustomization.yaml
@@ -2,7 +2,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/kubearchive/kubearchive/releases/download/v0.3.0/kubearchive.yaml?timeout=90
+- https://github.com/kubearchive/kubearchive/releases/download/v0.4.0/kubearchive.yaml?timeout=90
 - rbac.yaml
 # This alternative service is needed because the operator creates the
 # ApiServerSource pointing to <namespace>-sink, and here namespace is
@@ -12,6 +12,7 @@ resources:
 # Failed to update status for "product-kubearchive-a13e": ApiServerSource.sources.knative.dev
 #   "product-kubearchive-a13e" is invalid: namespaces: Invalid value: "null": namespaces in body
 #    must be of type array: "null"
+# This can be removed when this work is merged https://github.com/kubearchive/kubearchive/issues/589
 - alternative-service.yaml
 
 # ROSA does not support namespaces starting with `kube`
@@ -124,13 +125,6 @@ patches:
         spec:
           containers:
             - name: kubearchive-api-server
-              resources:
-                requests:
-                  cpu: 50m
-                  memory: 50Mi
-                limits:
-                  cpu: 100m
-                  memory: 50Mi
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
@@ -165,13 +159,6 @@ patches:
         spec:
           containers:
             - name: kubearchive-sink
-              resources:
-                requests:
-                  cpu: 50m
-                  memory: 50Mi
-                limits:
-                  cpu: 100m
-                  memory: 50Mi
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
diff --git a/components/kubearchive/base/rbac.yaml b/components/kubearchive/base/rbac.yaml
index c78f153e..effb2037 100644
--- a/components/kubearchive/base/rbac.yaml
+++ b/components/kubearchive/base/rbac.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: konflux-kubearchive
+    name: konflux-kubearchive  # rover group
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
index 90927bb3..4a4d6723 100644
--- a/components/kubearchive/development/kustomization.yaml
+++ b/components/kubearchive/development/kustomization.yaml
@@ -1,21 +1,22 @@
+---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- postgresql.yaml
+  - ../base
+  - postgresql.yaml
 
 secretGenerator:
-- behavior: merge
-  literals:
-  - DATABASE_KIND=postgresql
-  - DATABASE_PORT=5432
-  - DATABASE_DB=kubearchive
-  - DATABASE_USER=kubearchive
-  - DATABASE_URL=postgresql.product-kubearchive.svc.cluster.local
-  - DATABASE_PASSWORD=password  # notsecret
-  name: kubearchive-database-credentials
-  namespace: kubearchive
-  type: Opaque
+  - behavior: merge
+    literals:
+      - DATABASE_KIND=postgresql
+      - DATABASE_PORT=5432
+      - DATABASE_DB=kubearchive
+      - DATABASE_USER=kubearchive
+      - DATABASE_URL=postgresql.product-kubearchive.svc.cluster.local
+      - DATABASE_PASSWORD=password  # notsecret
+    name: kubearchive-database-credentials
+    namespace: kubearchive
+    type: Opaque
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/kubearchive/development/postgresql.yaml b/components/kubearchive/development/postgresql.yaml
index fb9cef9e..2dfd14db 100644
--- a/components/kubearchive/development/postgresql.yaml
+++ b/components/kubearchive/development/postgresql.yaml
@@ -4,7 +4,9 @@ kind: Deployment
 metadata:
   name: postgresql
   annotations:
-    ignore-check.kube-linter.io/no-read-only-root-fs: "Postgres requires to write on root fs, ignoring this one as this is only used in development environment"
+    ignore-check.kube-linter.io/no-read-only-root-fs: >
+      "Postgres requires to write on root fs,
+       ignoring this one as this is only used in development environment"
   labels:
     app: postgresql
 spec:
diff --git a/components/kubearchive/staging/database-secret.yaml b/components/kubearchive/staging/database-secret.yaml
index 354471ed..14e9b7c4 100644
--- a/components/kubearchive/staging/database-secret.yaml
+++ b/components/kubearchive/staging/database-secret.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -8,7 +9,8 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
+        key: >
+          integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
index ea568bae..96973dd3 100644
--- a/components/kubearchive/staging/kustomization.yaml
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (126 lines)</summary>  

``` 
./commit-edbb77c9/staging/components/kubearchive/staging/kustomize.out.yaml
227,243d226
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: kubearchive-sink-watch
<   namespace: product-kubearchive
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
494,509d476
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: kubearchive-sink-watch
<   namespace: product-kubearchive
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: kubearchive-sink-watch
< subjects:
< - kind: ServiceAccount
<   name: kubearchive-sink
<   namespace: product-kubearchive
< ---
< apiVersion: rbac.authorization.k8s.io/v1
709,718d675
<         - name: OTEL_GO_X_DEPRECATED_RUNTIME_METRICS
<           value: "false"
<         - name: GOMEMLIMIT
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.memory
<         - name: GOMAXPROCS
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.cpu
726c683
<         image: quay.io/kubearchive/api:v0.4.0@sha256:bc931be38336048e1c9e4b675ccee2ebb047b320df2fa1eb53479d28205b74af
---
>         image: quay.io/kubearchive/api:v0.3.0@sha256:fe741e0256253abb49c8935b70e26512d6dbf1127a4f2a3788fd39026cddd1a3
740,741c697,698
<             cpu: 200m
<             memory: 256Mi
---
>             cpu: 100m
>             memory: 50Mi
743,744c700,701
<             cpu: 200m
<             memory: 230Mi
---
>             cpu: 50m
>             memory: 50Mi
799,809c756
<         - name: OTEL_GO_X_DEPRECATED_RUNTIME_METRICS
<           value: "false"
<         - name: GOMEMLIMIT
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.memory
<         - name: GOMAXPROCS
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.cpu
<         image: quay.io/kubearchive/operator:v0.4.0@sha256:25eafc00127dc6851976db64c6ac3aefefd42560aa8e342d880888d83000daae
---
>         image: quay.io/kubearchive/operator:v0.3.0@sha256:af6e447e0cde3b72f8cd90f5990ee9bccdc87fbb7be445225e1c9884d02700a1
901a849,850
>         - name: MOUNT_PATH
>           value: /data/sink-filters
906,919d854
<         - name: OTEL_GO_X_DEPRECATED_RUNTIME_METRICS
<           value: "false"
<         - name: GOMEMLIMIT
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.memory
<         - name: GOMAXPROCS
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.cpu
<         - name: KUBEARCHIVE_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
923c858
<         image: quay.io/kubearchive/sink:v0.4.0@sha256:762b2a012e13a1d34901aa552f5b2c44bef0eda5797b665185846f4fdcbe8d1f
---
>         image: quay.io/kubearchive/sink:v0.3.0@sha256:c56000602e9e3a2e38aedb5913c5dc75af60893c6569db25a6ff8fbae52b382f
927,928c862,863
<             cpu: 200m
<             memory: 256Mi
---
>             cpu: 100m
>             memory: 50Mi
930,931c865,866
<             cpu: 200m
<             memory: 230Mi
---
>             cpu: 50m
>             memory: 50Mi
934a870,873
>         volumeMounts:
>         - mountPath: /data/sink-filters
>           name: sink-filters
>           readOnly: true
935a875,878
>       volumes:
>       - configMap:
>           name: sink-filters
>         name: sink-filters
947,948c890
<       key: |
<         integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
---
>       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds 
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
<h3>4: Development changes from edbb77c9 to 3586dfc2 on Thu Nov 21 12:26:09 2024 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
index 25eb4d0e..35be32b3 100644
--- a/components/kubearchive/base/kustomization.yaml
+++ b/components/kubearchive/base/kustomization.yaml
@@ -2,7 +2,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/kubearchive/kubearchive/releases/download/v0.3.0/kubearchive.yaml?timeout=90
+- https://github.com/kubearchive/kubearchive/releases/download/v0.4.0/kubearchive.yaml?timeout=90
 - rbac.yaml
 # This alternative service is needed because the operator creates the
 # ApiServerSource pointing to <namespace>-sink, and here namespace is
@@ -12,6 +12,7 @@ resources:
 # Failed to update status for "product-kubearchive-a13e": ApiServerSource.sources.knative.dev
 #   "product-kubearchive-a13e" is invalid: namespaces: Invalid value: "null": namespaces in body
 #    must be of type array: "null"
+# This can be removed when this work is merged https://github.com/kubearchive/kubearchive/issues/589
 - alternative-service.yaml
 
 # ROSA does not support namespaces starting with `kube`
@@ -124,13 +125,6 @@ patches:
         spec:
           containers:
             - name: kubearchive-api-server
-              resources:
-                requests:
-                  cpu: 50m
-                  memory: 50Mi
-                limits:
-                  cpu: 100m
-                  memory: 50Mi
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
@@ -165,13 +159,6 @@ patches:
         spec:
           containers:
             - name: kubearchive-sink
-              resources:
-                requests:
-                  cpu: 50m
-                  memory: 50Mi
-                limits:
-                  cpu: 100m
-                  memory: 50Mi
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
diff --git a/components/kubearchive/base/rbac.yaml b/components/kubearchive/base/rbac.yaml
index c78f153e..effb2037 100644
--- a/components/kubearchive/base/rbac.yaml
+++ b/components/kubearchive/base/rbac.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: konflux-kubearchive
+    name: konflux-kubearchive  # rover group
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
index 90927bb3..4a4d6723 100644
--- a/components/kubearchive/development/kustomization.yaml
+++ b/components/kubearchive/development/kustomization.yaml
@@ -1,21 +1,22 @@
+---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- postgresql.yaml
+  - ../base
+  - postgresql.yaml
 
 secretGenerator:
-- behavior: merge
-  literals:
-  - DATABASE_KIND=postgresql
-  - DATABASE_PORT=5432
-  - DATABASE_DB=kubearchive
-  - DATABASE_USER=kubearchive
-  - DATABASE_URL=postgresql.product-kubearchive.svc.cluster.local
-  - DATABASE_PASSWORD=password  # notsecret
-  name: kubearchive-database-credentials
-  namespace: kubearchive
-  type: Opaque
+  - behavior: merge
+    literals:
+      - DATABASE_KIND=postgresql
+      - DATABASE_PORT=5432
+      - DATABASE_DB=kubearchive
+      - DATABASE_USER=kubearchive
+      - DATABASE_URL=postgresql.product-kubearchive.svc.cluster.local
+      - DATABASE_PASSWORD=password  # notsecret
+    name: kubearchive-database-credentials
+    namespace: kubearchive
+    type: Opaque
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/kubearchive/development/postgresql.yaml b/components/kubearchive/development/postgresql.yaml
index fb9cef9e..2dfd14db 100644
--- a/components/kubearchive/development/postgresql.yaml
+++ b/components/kubearchive/development/postgresql.yaml
@@ -4,7 +4,9 @@ kind: Deployment
 metadata:
   name: postgresql
   annotations:
-    ignore-check.kube-linter.io/no-read-only-root-fs: "Postgres requires to write on root fs, ignoring this one as this is only used in development environment"
+    ignore-check.kube-linter.io/no-read-only-root-fs: >
+      "Postgres requires to write on root fs,
+       ignoring this one as this is only used in development environment"
   labels:
     app: postgresql
 spec:
diff --git a/components/kubearchive/staging/database-secret.yaml b/components/kubearchive/staging/database-secret.yaml
index 354471ed..14e9b7c4 100644
--- a/components/kubearchive/staging/database-secret.yaml
+++ b/components/kubearchive/staging/database-secret.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -8,7 +9,8 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
+        key: >
+          integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
index ea568bae..96973dd3 100644
--- a/components/kubearchive/staging/kustomization.yaml
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (128 lines)</summary>  

``` 
./commit-edbb77c9/development/components/kubearchive/development/kustomize.out.yaml
227,243d226
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: kubearchive-sink-watch
<   namespace: product-kubearchive
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
494,509d476
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: kubearchive-sink-watch
<   namespace: product-kubearchive
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: kubearchive-sink-watch
< subjects:
< - kind: ServiceAccount
<   name: kubearchive-sink
<   namespace: product-kubearchive
< ---
< apiVersion: rbac.authorization.k8s.io/v1
724,733d690
<         - name: OTEL_GO_X_DEPRECATED_RUNTIME_METRICS
<           value: "false"
<         - name: GOMEMLIMIT
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.memory
<         - name: GOMAXPROCS
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.cpu
741c698
<         image: quay.io/kubearchive/api:v0.4.0@sha256:bc931be38336048e1c9e4b675ccee2ebb047b320df2fa1eb53479d28205b74af
---
>         image: quay.io/kubearchive/api:v0.3.0@sha256:fe741e0256253abb49c8935b70e26512d6dbf1127a4f2a3788fd39026cddd1a3
755,756c712,713
<             cpu: 200m
<             memory: 256Mi
---
>             cpu: 100m
>             memory: 50Mi
758,759c715,716
<             cpu: 200m
<             memory: 230Mi
---
>             cpu: 50m
>             memory: 50Mi
814,824c771
<         - name: OTEL_GO_X_DEPRECATED_RUNTIME_METRICS
<           value: "false"
<         - name: GOMEMLIMIT
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.memory
<         - name: GOMAXPROCS
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.cpu
<         image: quay.io/kubearchive/operator:v0.4.0@sha256:25eafc00127dc6851976db64c6ac3aefefd42560aa8e342d880888d83000daae
---
>         image: quay.io/kubearchive/operator:v0.3.0@sha256:af6e447e0cde3b72f8cd90f5990ee9bccdc87fbb7be445225e1c9884d02700a1
916a864,865
>         - name: MOUNT_PATH
>           value: /data/sink-filters
921,934d869
<         - name: OTEL_GO_X_DEPRECATED_RUNTIME_METRICS
<           value: "false"
<         - name: GOMEMLIMIT
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.memory
<         - name: GOMAXPROCS
<           valueFrom:
<             resourceFieldRef:
<               resource: limits.cpu
<         - name: KUBEARCHIVE_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
938c873
<         image: quay.io/kubearchive/sink:v0.4.0@sha256:762b2a012e13a1d34901aa552f5b2c44bef0eda5797b665185846f4fdcbe8d1f
---
>         image: quay.io/kubearchive/sink:v0.3.0@sha256:c56000602e9e3a2e38aedb5913c5dc75af60893c6569db25a6ff8fbae52b382f
942,943c877,878
<             cpu: 200m
<             memory: 256Mi
---
>             cpu: 100m
>             memory: 50Mi
945,946c880,881
<             cpu: 200m
<             memory: 230Mi
---
>             cpu: 50m
>             memory: 50Mi
949a885,888
>         volumeMounts:
>         - mountPath: /data/sink-filters
>           name: sink-filters
>           readOnly: true
950a890,893
>       volumes:
>       - configMap:
>           name: sink-filters
>         name: sink-filters
957,959c900,901
<     ignore-check.kube-linter.io/no-read-only-root-fs: |
<       "Postgres requires to write on root fs,
<        ignoring this one as this is only used in development environment"
---
>     ignore-check.kube-linter.io/no-read-only-root-fs: Postgres requires to write on
>       root fs, ignoring this one as this is only used in development environment 
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
