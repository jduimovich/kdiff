# kustomize changes tracked by commits 
### This file generated at Wed Nov 13 12:12:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0e51ae79 to 4552d488 on Wed Nov 13 11:46:06 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index c5f7ed17..f5c09df3 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=dc09ce91f871b17322d7cb0aad98ccd879337c5d
+- https://github.com/konflux-ci/project-controller/config/default?ref=1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  newTag: 1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 69307089..46f4e412 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  - https://github.com/konflux-ci/project-controller/config/default?ref=1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  newTag: 1a27894d93961d737d2a9e911d3a9fd8020841c2
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 0e51ae79 to 4552d488 on Wed Nov 13 11:46:06 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index c5f7ed17..f5c09df3 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=dc09ce91f871b17322d7cb0aad98ccd879337c5d
+- https://github.com/konflux-ci/project-controller/config/default?ref=1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  newTag: 1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 69307089..46f4e412 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  - https://github.com/konflux-ci/project-controller/config/default?ref=1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  newTag: 1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-0e51ae79/staging/components/project-controller/staging/kustomize.out.yaml
463,469d462
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< - apiGroups:
734c727
<         image: quay.io/konflux-ci/project-controller:1a27894d93961d737d2a9e911d3a9fd8020841c2
---
>         image: quay.io/konflux-ci/project-controller:dc09ce91f871b17322d7cb0aad98ccd879337c5d 
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
<h3>1: Development changes from 0e51ae79 to 4552d488 on Wed Nov 13 11:46:06 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index c5f7ed17..f5c09df3 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=dc09ce91f871b17322d7cb0aad98ccd879337c5d
+- https://github.com/konflux-ci/project-controller/config/default?ref=1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  newTag: 1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 69307089..46f4e412 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  - https://github.com/konflux-ci/project-controller/config/default?ref=1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: dc09ce91f871b17322d7cb0aad98ccd879337c5d
+  newTag: 1a27894d93961d737d2a9e911d3a9fd8020841c2
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-0e51ae79/development/components/project-controller/development/kustomize.out.yaml
463,469d462
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< - apiGroups:
734c727
<         image: quay.io/konflux-ci/project-controller:1a27894d93961d737d2a9e911d3a9fd8020841c2
---
>         image: quay.io/konflux-ci/project-controller:dc09ce91f871b17322d7cb0aad98ccd879337c5d 
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
<h3>2: Production changes from be2d3b70 to 0e51ae79 on Wed Nov 13 11:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index df08d491..fde15b42 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+    newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 55aa40c3..1580026d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+- https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+  newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from be2d3b70 to 0e51ae79 on Wed Nov 13 11:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index df08d491..fde15b42 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+    newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 55aa40c3..1580026d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+- https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+  newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (86 lines)</summary>  

``` 
./commit-be2d3b70/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
457c457
<       "platformCommit": "enabled",
---
>       "platformCommit": true,
492,501c492
<         "tflint-plugin",
<         "pep621",
<         "pip-compile",
<         "pip_requirements",
<         "pip_setup",
<         "pipenv",
<         "poetry",
<         "pyenv",
<         "runtime-version",
<         "setup-cfg"
---
>         "tflint-plugin"
546c537
<       "rpm": {
---
>       "git-submodules": {
548,555d538
<         "packageRules": [
<           {
<             "groupName": "RPM updates",
<             "commitMessageAction": "",
<             "commitMessageTopic": "RPM updates",
<             "matchManagers": ["rpm"]
<           }
<         ],
559c542
<       "git-submodules": {
---
>       "lockFileMaintenance": {
561,562c544,549
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "recreateWhen": "always",
>         "rebaseWhen": "behind-base-branch",
>         "branchTopic": "lock-file-maintenance",
>         "schedule": [
>           "at any time"
>         ]
666,701d652
<       "pep621": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pip-compile": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pip_requirements": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pip_setup": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pipenv": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "poetry": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pyenv": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "runtime-version": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "setup-cfg": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
783c734
<         image: quay.io/konflux-ci/mintmaker:645166dfaf1871be6501cbd2c176fa1f65e04863
---
>         image: quay.io/konflux-ci/mintmaker:74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844 
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
<h3>2: Development changes from be2d3b70 to 0e51ae79 on Wed Nov 13 11:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index df08d491..fde15b42 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+    newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 55aa40c3..1580026d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+- https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844
+  newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (86 lines)</summary>  

``` 
./commit-be2d3b70/development/components/mintmaker/development/kustomize.out.yaml
457c457
<       "platformCommit": "enabled",
---
>       "platformCommit": true,
492,501c492
<         "tflint-plugin",
<         "pep621",
<         "pip-compile",
<         "pip_requirements",
<         "pip_setup",
<         "pipenv",
<         "poetry",
<         "pyenv",
<         "runtime-version",
<         "setup-cfg"
---
>         "tflint-plugin"
546c537
<       "rpm": {
---
>       "git-submodules": {
548,555d538
<         "packageRules": [
<           {
<             "groupName": "RPM updates",
<             "commitMessageAction": "",
<             "commitMessageTopic": "RPM updates",
<             "matchManagers": ["rpm"]
<           }
<         ],
559c542
<       "git-submodules": {
---
>       "lockFileMaintenance": {
561,562c544,549
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "recreateWhen": "always",
>         "rebaseWhen": "behind-base-branch",
>         "branchTopic": "lock-file-maintenance",
>         "schedule": [
>           "at any time"
>         ]
666,701d652
<       "pep621": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pip-compile": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pip_requirements": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pip_setup": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pipenv": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "poetry": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pyenv": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "runtime-version": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "setup-cfg": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
782c733
<         image: quay.io/konflux-ci/mintmaker:645166dfaf1871be6501cbd2c176fa1f65e04863
---
>         image: quay.io/konflux-ci/mintmaker:74cbd1816e7a6e333c3d0f1088bc1af1eb8b5844 
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
<h3>3: Production changes from fc020131 to be2d3b70 on Wed Nov 13 10:45:31 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index f1fafc77..e9e640ef 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -64,10 +64,10 @@ spec:
               resources:
                 limits:
                   cpu: 200m
-                  memory: 300Mi
+                  memory: 1024Mi
                 requests:
                   cpu: 100m
-                  memory: 200Mi
+                  memory: 1024Mi
               securityContext:
                 allowPrivilegeEscalation: false
                 capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fc020131/production/components/release/production/kustomize.out.yaml
2099c2099
<                 memory: 1024Mi
---
>                 memory: 300Mi
2102c2102
<                 memory: 1024Mi
---
>                 memory: 200Mi 
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
<h3>3: Staging changes from fc020131 to be2d3b70 on Wed Nov 13 10:45:31 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index f1fafc77..e9e640ef 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -64,10 +64,10 @@ spec:
               resources:
                 limits:
                   cpu: 200m
-                  memory: 300Mi
+                  memory: 1024Mi
                 requests:
                   cpu: 100m
-                  memory: 200Mi
+                  memory: 1024Mi
               securityContext:
                 allowPrivilegeEscalation: false
                 capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fc020131/staging/components/release/staging/kustomize.out.yaml
2293c2293
<                 memory: 1024Mi
---
>                 memory: 300Mi
2296c2296
<                 memory: 1024Mi
---
>                 memory: 200Mi 
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
<h3>3: Development changes from fc020131 to be2d3b70 on Wed Nov 13 10:45:31 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index f1fafc77..e9e640ef 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -64,10 +64,10 @@ spec:
               resources:
                 limits:
                   cpu: 200m
-                  memory: 300Mi
+                  memory: 1024Mi
                 requests:
                   cpu: 100m
-                  memory: 200Mi
+                  memory: 1024Mi
               securityContext:
                 allowPrivilegeEscalation: false
                 capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fc020131/development/components/release/development/kustomize.out.yaml
2293c2293
<                 memory: 1024Mi
---
>                 memory: 300Mi
2296c2296
<                 memory: 1024Mi
---
>                 memory: 200Mi 
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
<h3>4: Production changes from ffd6180c to fc020131 on Wed Nov 13 10:04:26 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 3eeb44f3..4168a808 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 4096Mi
+            memory: 8192Mi
           requests:
             cpu: 100m
-            memory: 3072Mi
+            memory: 8192Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ffd6180c/production/components/release/production/kustomize.out.yaml
1899c1899
<             memory: 8192Mi
---
>             memory: 4096Mi
1902c1902
<             memory: 8192Mi
---
>             memory: 3072Mi 
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
<h3>4: Staging changes from ffd6180c to fc020131 on Wed Nov 13 10:04:26 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 3eeb44f3..4168a808 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 4096Mi
+            memory: 8192Mi
           requests:
             cpu: 100m
-            memory: 3072Mi
+            memory: 8192Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ffd6180c/staging/components/release/staging/kustomize.out.yaml
2093c2093
<             memory: 8192Mi
---
>             memory: 4096Mi
2096c2096
<             memory: 8192Mi
---
>             memory: 3072Mi 
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
<h3>4: Development changes from ffd6180c to fc020131 on Wed Nov 13 10:04:26 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 3eeb44f3..4168a808 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 4096Mi
+            memory: 8192Mi
           requests:
             cpu: 100m
-            memory: 3072Mi
+            memory: 8192Mi 
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
