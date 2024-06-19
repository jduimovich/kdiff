# kustomize changes tracked by commits 
### This file generated at Wed Jun 19 04:02:32 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 199f0fcf to b1d64430 on Tue Jun 18 15:59:30 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index d07d393d..70e04c89 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=08658b181f665e4ea2cec87f13c9fb6d0cc38bb5
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+    newTag: 08658b181f665e4ea2cec87f13c9fb6d0cc38bb5
 
 namespace: mintmaker
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 199f0fcf to b1d64430 on Tue Jun 18 15:59:30 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index d07d393d..70e04c89 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=08658b181f665e4ea2cec87f13c9fb6d0cc38bb5
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+    newTag: 08658b181f665e4ea2cec87f13c9fb6d0cc38bb5
 
 namespace: mintmaker
  
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
<h3>1: Development changes from 199f0fcf to b1d64430 on Tue Jun 18 15:59:30 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index d07d393d..70e04c89 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=08658b181f665e4ea2cec87f13c9fb6d0cc38bb5
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+    newTag: 08658b181f665e4ea2cec87f13c9fb6d0cc38bb5
 
 namespace: mintmaker
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-199f0fcf/development/components/mintmaker/development/kustomize.out.yaml
494c494
<         image: quay.io/konflux-ci/mintmaker:08658b181f665e4ea2cec87f13c9fb6d0cc38bb5
---
>         image: quay.io/konflux-ci/mintmaker:f6a6a9c25b02d3ca6cd808d5d440529de006d994 
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
<h3>2: Production changes from 9bd3ca64 to 199f0fcf on Tue Jun 18 14:42:18 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 35b0e0e9..af25fa20 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -51,3 +51,4 @@ spec:
         - admin-checker
         - integration-service
         - ci-helper-app
+        - mintmaker 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-9bd3ca64/production/components/cluster-secret-store/production/kustomize.out.yaml
34d33
<     - mintmaker 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 9bd3ca64 to 199f0fcf on Tue Jun 18 14:42:18 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 35b0e0e9..af25fa20 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -51,3 +51,4 @@ spec:
         - admin-checker
         - integration-service
         - ci-helper-app
+        - mintmaker 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-9bd3ca64/staging/components/cluster-secret-store/staging/kustomize.out.yaml
34d33
<     - mintmaker 
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
<h3>2: Development changes from 9bd3ca64 to 199f0fcf on Tue Jun 18 14:42:18 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 35b0e0e9..af25fa20 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -51,3 +51,4 @@ spec:
         - admin-checker
         - integration-service
         - ci-helper-app
+        - mintmaker 
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
<h3>3: Production changes from b93611bb to 9bd3ca64 on Tue Jun 18 13:47:16 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 2656955b..a12caa7e 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -47,3 +47,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-spi'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-mintmaker-team' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-b93611bb/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
564,566d563
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
622,624d618
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
680,682d673
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
./commit-b93611bb/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
564,566d563
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
622,624d618
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
680,682d673
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from b93611bb to 9bd3ca64 on Tue Jun 18 13:47:16 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 2656955b..a12caa7e 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -47,3 +47,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-spi'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-mintmaker-team' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-b93611bb/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
564,566d563
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
622,624d618
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
680,682d673
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team 
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
<h3>3: Development changes from b93611bb to 9bd3ca64 on Tue Jun 18 13:47:16 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 2656955b..a12caa7e 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -47,3 +47,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-spi'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-mintmaker-team' 
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
<h3>4: Production changes from a173fabc to b93611bb on Tue Jun 18 13:41:45 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 7be026e8..eb5677f9 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/mintmaker
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
new file mode 100644
index 00000000..f2119dab
--- /dev/null
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- ../../base/external-secrets
+- https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
+images:
+- name: quay.io/konflux-ci/mintmaker
+  newName: quay.io/konflux-ci/mintmaker
+  newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/staging/kustomization.yaml b/components/mintmaker/staging/kustomization.yaml
deleted file mode 100644
index 80ff4384..00000000
--- a/components/mintmaker/staging/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-components:
-  - ../k-components/manager-resources-patch
-
-images:
-  - name: quay.io/konflux-ci/mintmaker
-    newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-namespace: mintmaker
-
diff --git a/components/mintmaker/staging/stone-stage-p01/kustomization.yaml b/components/mintmaker/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..1d08d28a
--- /dev/null
+++ b/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/build/stone-stage-p01/github-app 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a173fabc to b93611bb on Tue Jun 18 13:41:45 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 7be026e8..eb5677f9 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/mintmaker
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
new file mode 100644
index 00000000..f2119dab
--- /dev/null
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- ../../base/external-secrets
+- https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
+images:
+- name: quay.io/konflux-ci/mintmaker
+  newName: quay.io/konflux-ci/mintmaker
+  newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/staging/kustomization.yaml b/components/mintmaker/staging/kustomization.yaml
deleted file mode 100644
index 80ff4384..00000000
--- a/components/mintmaker/staging/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-components:
-  - ../k-components/manager-resources-patch
-
-images:
-  - name: quay.io/konflux-ci/mintmaker
-    newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-namespace: mintmaker
-
diff --git a/components/mintmaker/staging/stone-stage-p01/kustomization.yaml b/components/mintmaker/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..1d08d28a
--- /dev/null
+++ b/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/build/stone-stage-p01/github-app 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2 lines)</summary>  

``` 
./commit-a173fabc/staging/components/mintmaker/staging: kustomize.out.yaml
./commit-b93611bb/staging/components/mintmaker/staging: stone-stage-p01 
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
<h3>4: Development changes from a173fabc to b93611bb on Tue Jun 18 13:41:45 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 7be026e8..eb5677f9 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/mintmaker
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
new file mode 100644
index 00000000..f2119dab
--- /dev/null
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- ../../base/external-secrets
+- https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+namespace: mintmaker
+
+images:
+- name: quay.io/konflux-ci/mintmaker
+  newName: quay.io/konflux-ci/mintmaker
+  newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/staging/kustomization.yaml b/components/mintmaker/staging/kustomization.yaml
deleted file mode 100644
index 80ff4384..00000000
--- a/components/mintmaker/staging/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-components:
-  - ../k-components/manager-resources-patch
-
-images:
-  - name: quay.io/konflux-ci/mintmaker
-    newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-namespace: mintmaker
-
diff --git a/components/mintmaker/staging/stone-stage-p01/kustomization.yaml b/components/mintmaker/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..1d08d28a
--- /dev/null
+++ b/components/mintmaker/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/build/stone-stage-p01/github-app 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-a173fabc/development/app-of-apps-development.yaml
714,716c714
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: [] 
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
