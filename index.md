# kustomize changes tracked by commits 
### This file generated at Wed Oct  2 16:15:44 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e7d77c86 to da59e1ce on Wed Oct 2 15:34:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/project-controller/production/kustomization.yaml b/components/project-controller/production/kustomization.yaml
index 96fb6f31..0912c9f0 100644
--- a/components/project-controller/production/kustomization.yaml
+++ b/components/project-controller/production/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=e4e9706085bd9f121acbaf70a6e4899d4d490353
+- https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: e4e9706085bd9f121acbaf70a6e4899d4d490353
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e7d77c86/production/components/project-controller/production/kustomize.out.yaml
727c727
<         image: quay.io/konflux-ci/project-controller:de7482473d739d0037f42ef0c81504920fa1f286
---
>         image: quay.io/redhat-appstudio/project-controller:e4e9706085bd9f121acbaf70a6e4899d4d490353 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e7d77c86 to da59e1ce on Wed Oct 2 15:34:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/project-controller/production/kustomization.yaml b/components/project-controller/production/kustomization.yaml
index 96fb6f31..0912c9f0 100644
--- a/components/project-controller/production/kustomization.yaml
+++ b/components/project-controller/production/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=e4e9706085bd9f121acbaf70a6e4899d4d490353
+- https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: e4e9706085bd9f121acbaf70a6e4899d4d490353
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from e7d77c86 to da59e1ce on Wed Oct 2 15:34:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/project-controller/production/kustomization.yaml b/components/project-controller/production/kustomization.yaml
index 96fb6f31..0912c9f0 100644
--- a/components/project-controller/production/kustomization.yaml
+++ b/components/project-controller/production/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=e4e9706085bd9f121acbaf70a6e4899d4d490353
+- https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: e4e9706085bd9f121acbaf70a6e4899d4d490353
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 9d768b32 to e7d77c86 on Wed Oct 2 15:03:28 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 5dc73bd9..0912c9f0 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
+- https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: 6773b77f353cc019166754ecd4d563035968019c
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 9e2091b5..32bd581f 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
+  - https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: 6773b77f353cc019166754ecd4d563035968019c
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 9d768b32 to e7d77c86 on Wed Oct 2 15:03:28 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 5dc73bd9..0912c9f0 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
+- https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: 6773b77f353cc019166754ecd4d563035968019c
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 9e2091b5..32bd581f 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
+  - https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: 6773b77f353cc019166754ecd4d563035968019c
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9d768b32/staging/components/project-controller/staging/kustomize.out.yaml
727c727
<         image: quay.io/konflux-ci/project-controller:de7482473d739d0037f42ef0c81504920fa1f286
---
>         image: quay.io/redhat-appstudio/project-controller:6773b77f353cc019166754ecd4d563035968019c 
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
<h3>2: Development changes from 9d768b32 to e7d77c86 on Wed Oct 2 15:03:28 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 5dc73bd9..0912c9f0 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
+- https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: 6773b77f353cc019166754ecd4d563035968019c
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 9e2091b5..32bd581f 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
+  - https://github.com/konflux-ci/project-controller/config/default?ref=de7482473d739d0037f42ef0c81504920fa1f286
 
 images:
 - name: konflux-project-controller
-  newName: quay.io/redhat-appstudio/project-controller
-  newTag: 6773b77f353cc019166754ecd4d563035968019c
+  newName: quay.io/konflux-ci/project-controller
+  newTag: de7482473d739d0037f42ef0c81504920fa1f286
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9d768b32/development/components/project-controller/development/kustomize.out.yaml
727c727
<         image: quay.io/konflux-ci/project-controller:de7482473d739d0037f42ef0c81504920fa1f286
---
>         image: quay.io/redhat-appstudio/project-controller:6773b77f353cc019166754ecd4d563035968019c 
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
<h3>3: Production changes from 1a441c5d to 9d768b32 on Wed Oct 2 13:14:51 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index c6a50f3a..00734e46 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3a431ecc9b8b30b9b277e45849f965981d8ecba2
+    newTag: 834533c353e170c5ab13e4e1634f33a9837042b1
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index b1457333..7669d015 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:2b2655d"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:cdbc220" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-1a441c5d/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
671,672c671,672
<           value: quay.io/konflux-ci/mintmaker-renovate-image:cdbc220
<         image: quay.io/konflux-ci/mintmaker:834533c353e170c5ab13e4e1634f33a9837042b1
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:2b2655d
>         image: quay.io/konflux-ci/mintmaker:3a431ecc9b8b30b9b277e45849f965981d8ecba2
./commit-1a441c5d/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
671,672c671,672
<           value: quay.io/konflux-ci/mintmaker-renovate-image:cdbc220
<         image: quay.io/konflux-ci/mintmaker:834533c353e170c5ab13e4e1634f33a9837042b1
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:2b2655d
>         image: quay.io/konflux-ci/mintmaker:3a431ecc9b8b30b9b277e45849f965981d8ecba2 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 1a441c5d to 9d768b32 on Wed Oct 2 13:14:51 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index c6a50f3a..00734e46 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3a431ecc9b8b30b9b277e45849f965981d8ecba2
+    newTag: 834533c353e170c5ab13e4e1634f33a9837042b1
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index b1457333..7669d015 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:2b2655d"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:cdbc220" 
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
<h3>3: Development changes from 1a441c5d to 9d768b32 on Wed Oct 2 13:14:51 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index c6a50f3a..00734e46 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3a431ecc9b8b30b9b277e45849f965981d8ecba2
+    newTag: 834533c353e170c5ab13e4e1634f33a9837042b1
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index b1457333..7669d015 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:2b2655d"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:cdbc220" 
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
<h3>4: Production changes from 8cf611ee to 1a441c5d on Wed Oct 2 13:00:57 2024 </h3>  
 
<details> 
<summary>Git Diff (160 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index d1553496..dc8c1b53 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1578,6 +1578,13 @@ spec:
                         cpu: "1"
                       limits:
                         memory: 8Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1615,11 +1622,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 612d7a82..145db9c3 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1431d9ce..135182e1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c8399059..86ebf7f1 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 53b99bb1..0df0c5fc 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (68 lines)</summary>  

``` 
./commit-8cf611ee/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2058,2064d2057
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2129c2122
<       buckets: 8
---
>       buckets: 4
2133c2126
<       replicas: 4
---
>       replicas: 2
./commit-8cf611ee/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2058,2064d2057
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2129c2122
<       buckets: 8
---
>       buckets: 4
2133c2126
<       replicas: 4
---
>       replicas: 2
./commit-8cf611ee/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2058,2064d2057
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2129c2122
<       buckets: 8
---
>       buckets: 4
2133c2126
<       replicas: 4
---
>       replicas: 2
./commit-8cf611ee/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2058,2064d2057
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2129c2122
<       buckets: 8
---
>       buckets: 4
2133c2126
<       replicas: 4
---
>       replicas: 2 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 8cf611ee to 1a441c5d on Wed Oct 2 13:00:57 2024 </h3>  
 
<details> 
<summary>Git Diff (160 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index d1553496..dc8c1b53 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1578,6 +1578,13 @@ spec:
                         cpu: "1"
                       limits:
                         memory: 8Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1615,11 +1622,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 612d7a82..145db9c3 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1431d9ce..135182e1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c8399059..86ebf7f1 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 53b99bb1..0df0c5fc 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
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
<h3>4: Development changes from 8cf611ee to 1a441c5d on Wed Oct 2 13:00:57 2024 </h3>  
 
<details> 
<summary>Git Diff (160 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index d1553496..dc8c1b53 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1578,6 +1578,13 @@ spec:
                         cpu: "1"
                       limits:
                         memory: 8Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1615,11 +1622,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 612d7a82..145db9c3 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1431d9ce..135182e1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c8399059..86ebf7f1 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 53b99bb1..0df0c5fc 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2055,6 +2055,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
@@ -2119,11 +2126,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
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
