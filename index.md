# kustomize changes tracked by commits 
### This file generated at Sun Jul  7 08:02:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from af7cb2b3 to 5d76ea3a on Sat Jul 6 05:41:12 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a5125113..33feb46f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 13d463ff..b160e0ab 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from af7cb2b3 to 5d76ea3a on Sat Jul 6 05:41:12 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a5125113..33feb46f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 13d463ff..b160e0ab 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-af7cb2b3/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
---
>         image: quay.io/redhat-appstudio/project-controller:644947ed8578cada1eaf876c876c4e752056b778 
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
<h3>1: Development changes from af7cb2b3 to 5d76ea3a on Sat Jul 6 05:41:12 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a5125113..33feb46f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 13d463ff..b160e0ab 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-af7cb2b3/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
---
>         image: quay.io/redhat-appstudio/project-controller:644947ed8578cada1eaf876c876c4e752056b778 
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
<h3>2: Production changes from b1be1b1f to af7cb2b3 on Fri Jul 5 16:42:59 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/.gitignore b/.gitignore
index 0d0404fc..55196a59 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,5 +1,6 @@
 hack/preview.env
 hack/monitoring.env
+hack/seanconroy2021-stonesoup-pac.2024-07-05.private-key.pem
 cosign.pub
 components/spi/base/config.yaml
 .tmp/
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 70d6f60b..34b5544b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
+  - https://github.com/konflux-ci/release-service/config/default?ref=73612c0b60658392c6786b563a810fa122585fa6
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
+    newTag: 73612c0b60658392c6786b563a810fa122585fa6
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from b1be1b1f to af7cb2b3 on Fri Jul 5 16:42:59 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/.gitignore b/.gitignore
index 0d0404fc..55196a59 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,5 +1,6 @@
 hack/preview.env
 hack/monitoring.env
+hack/seanconroy2021-stonesoup-pac.2024-07-05.private-key.pem
 cosign.pub
 components/spi/base/config.yaml
 .tmp/
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 70d6f60b..34b5544b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
+  - https://github.com/konflux-ci/release-service/config/default?ref=73612c0b60658392c6786b563a810fa122585fa6
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
+    newTag: 73612c0b60658392c6786b563a810fa122585fa6
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-b1be1b1f/staging/components/release/staging/kustomize.out.yaml
112c112
<                     description: ServiceAccountName is the ServiceAccount to use during
---
>                     description: ServiceAccount is the ServiceAccount to use during
355c355
<                     description: ServiceAccountName is the ServiceAccount to use during
---
>                     description: ServiceAccount is the ServiceAccount to use during
1815c1815
<         image: quay.io/konflux-ci/release-service:73612c0b60658392c6786b563a810fa122585fa6
---
>         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba 
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
<h3>2: Development changes from b1be1b1f to af7cb2b3 on Fri Jul 5 16:42:59 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/.gitignore b/.gitignore
index 0d0404fc..55196a59 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,5 +1,6 @@
 hack/preview.env
 hack/monitoring.env
+hack/seanconroy2021-stonesoup-pac.2024-07-05.private-key.pem
 cosign.pub
 components/spi/base/config.yaml
 .tmp/
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 70d6f60b..34b5544b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
+  - https://github.com/konflux-ci/release-service/config/default?ref=73612c0b60658392c6786b563a810fa122585fa6
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
+    newTag: 73612c0b60658392c6786b563a810fa122585fa6
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from a33de09c to b1be1b1f on Fri Jul 5 14:14:30 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 5ab00813..e097122d 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=34ae088dc064be78744886fff32e956cfd475591
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 8acd6815..d63f5cb3 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 70b9347c..2d807b23 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,23 +2,16 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/development/oauth-service-config-patch.json b/components/spi/overlays/development/oauth-service-config-patch.json
deleted file mode 100644
index ff9d13e7..00000000
--- a/components/spi/overlays/development/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.appstudio-stage.x99m.p1.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
index 64449d32..ed36b2cf 100644
--- a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
deleted file mode 100644
index 775a859c..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
deleted file mode 100644
index 836f3fd4..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
deleted file mode 100644
index 836f3fd4..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
-  }
-]
diff --git a/hack/preview.sh b/hack/preview.sh
index 276e6d7b..95d7c903 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -156,9 +156,6 @@ if [ -n "$DEPLOY_ONLY" ]; then
   done
 fi
 
-# set the API server which SPI uses to authenticate users to empty string (by default) so that multi-cluster
-# setup is not needed
-yq -i e ".0.value=\"$SPI_API_SERVER\"" $ROOT/components/spi/overlays/development/oauth-service-config-patch.json
 # patch the SPI configuration with the Vault host configuration to provided VAULT_HOST variable or to current cluster
 # and the base URL set to the SPI_BASE_URL variable or the URL of the  route to the SPI OAuth service in the current cluster
 # This script also sets up the Vault client to accept insecure TLS connections so that the custom vault host doesn't have 
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
<h3>3: Staging changes from a33de09c to b1be1b1f on Fri Jul 5 14:14:30 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 5ab00813..e097122d 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=34ae088dc064be78744886fff32e956cfd475591
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 8acd6815..d63f5cb3 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 70b9347c..2d807b23 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,23 +2,16 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/development/oauth-service-config-patch.json b/components/spi/overlays/development/oauth-service-config-patch.json
deleted file mode 100644
index ff9d13e7..00000000
--- a/components/spi/overlays/development/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.appstudio-stage.x99m.p1.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
index 64449d32..ed36b2cf 100644
--- a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
deleted file mode 100644
index 775a859c..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
deleted file mode 100644
index 836f3fd4..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
deleted file mode 100644
index 836f3fd4..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
-  }
-]
diff --git a/hack/preview.sh b/hack/preview.sh
index 276e6d7b..95d7c903 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -156,9 +156,6 @@ if [ -n "$DEPLOY_ONLY" ]; then
   done
 fi
 
-# set the API server which SPI uses to authenticate users to empty string (by default) so that multi-cluster
-# setup is not needed
-yq -i e ".0.value=\"$SPI_API_SERVER\"" $ROOT/components/spi/overlays/development/oauth-service-config-patch.json
 # patch the SPI configuration with the Vault host configuration to provided VAULT_HOST variable or to current cluster
 # and the base URL set to the SPI_BASE_URL variable or the URL of the  route to the SPI OAuth service in the current cluster
 # This script also sets up the Vault client to accept insecure TLS connections so that the custom vault host doesn't have 
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
<h3>3: Development changes from a33de09c to b1be1b1f on Fri Jul 5 14:14:30 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 5ab00813..e097122d 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=34ae088dc064be78744886fff32e956cfd475591
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 8acd6815..d63f5cb3 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 70b9347c..2d807b23 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,23 +2,16 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/development/oauth-service-config-patch.json b/components/spi/overlays/development/oauth-service-config-patch.json
deleted file mode 100644
index ff9d13e7..00000000
--- a/components/spi/overlays/development/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.appstudio-stage.x99m.p1.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
index 64449d32..ed36b2cf 100644
--- a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
deleted file mode 100644
index 775a859c..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
deleted file mode 100644
index 836f3fd4..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
deleted file mode 100644
index 836f3fd4..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
-  }
-]
diff --git a/hack/preview.sh b/hack/preview.sh
index 276e6d7b..95d7c903 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -156,9 +156,6 @@ if [ -n "$DEPLOY_ONLY" ]; then
   done
 fi
 
-# set the API server which SPI uses to authenticate users to empty string (by default) so that multi-cluster
-# setup is not needed
-yq -i e ".0.value=\"$SPI_API_SERVER\"" $ROOT/components/spi/overlays/development/oauth-service-config-patch.json
 # patch the SPI configuration with the Vault host configuration to provided VAULT_HOST variable or to current cluster
 # and the base URL set to the SPI_BASE_URL variable or the URL of the  route to the SPI OAuth service in the current cluster
 # This script also sets up the Vault client to accept insecure TLS connections so that the custom vault host doesn't have 
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
<h3>4: Production changes from 407f739e to a33de09c on Fri Jul 5 09:01:00 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 336f52af..e03f7cc2 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,35 +7,210 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  #root
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
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
<h3>4: Staging changes from 407f739e to a33de09c on Fri Jul 5 09:01:00 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 336f52af..e03f7cc2 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,35 +7,210 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  #root
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (174 lines)</summary>  

``` 
./commit-407f739e/staging/components/multi-platform-controller/staging/kustomize.out.yaml
177c177
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
180c180
<   dynamic.linux-amd64.instance-type: m6a.large
---
>   dynamic.linux-amd64.instance-type: m5.large
190c190
<   dynamic.linux-arm64.instance-type: m6g.large
---
>   dynamic.linux-arm64.instance-type: t4g.small
198,357d197
<   dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
<   dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c2xlarge-amd64.max-instances: "10"
<   dynamic.linux-c2xlarge-amd64.region: us-east-1
<   dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c2xlarge-amd64.type: aws
<   dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
<   dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c2xlarge-arm64.max-instances: "10"
<   dynamic.linux-c2xlarge-arm64.region: us-east-1
<   dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c2xlarge-arm64.type: aws
<   dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
<   dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c4xlarge-amd64.max-instances: "10"
<   dynamic.linux-c4xlarge-amd64.region: us-east-1
<   dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c4xlarge-amd64.type: aws
<   dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
<   dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c4xlarge-arm64.max-instances: "10"
<   dynamic.linux-c4xlarge-arm64.region: us-east-1
<   dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c4xlarge-arm64.type: aws
<   dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
<   dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c8xlarge-amd64.max-instances: "10"
<   dynamic.linux-c8xlarge-amd64.region: us-east-1
<   dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c8xlarge-amd64.type: aws
<   dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
<   dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c8xlarge-arm64.max-instances: "10"
<   dynamic.linux-c8xlarge-arm64.region: us-east-1
<   dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c8xlarge-arm64.type: aws
<   dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
<   dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-cxlarge-amd64.max-instances: "10"
<   dynamic.linux-cxlarge-amd64.region: us-east-1
<   dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-cxlarge-amd64.type: aws
<   dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
<   dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-cxlarge-arm64.max-instances: "10"
<   dynamic.linux-cxlarge-arm64.region: us-east-1
<   dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-cxlarge-arm64.type: aws
<   dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
<   dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m2xlarge-amd64.max-instances: "10"
<   dynamic.linux-m2xlarge-amd64.region: us-east-1
<   dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m2xlarge-amd64.type: aws
<   dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
<   dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m2xlarge-arm64.max-instances: "10"
<   dynamic.linux-m2xlarge-arm64.region: us-east-1
<   dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m2xlarge-arm64.type: aws
<   dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
<   dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m4xlarge-amd64.max-instances: "10"
<   dynamic.linux-m4xlarge-amd64.region: us-east-1
<   dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m4xlarge-amd64.type: aws
<   dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
<   dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m4xlarge-arm64.max-instances: "10"
<   dynamic.linux-m4xlarge-arm64.region: us-east-1
<   dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m4xlarge-arm64.type: aws
<   dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
<   dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m8xlarge-amd64.max-instances: "10"
<   dynamic.linux-m8xlarge-amd64.region: us-east-1
<   dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m8xlarge-amd64.type: aws
<   dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
<   dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m8xlarge-arm64.max-instances: "10"
<   dynamic.linux-m8xlarge-arm64.region: us-east-1
<   dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m8xlarge-arm64.type: aws
<   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
<   dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-mxlarge-amd64.max-instances: "10"
<   dynamic.linux-mxlarge-amd64.region: us-east-1
<   dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-mxlarge-amd64.type: aws
<   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
<   dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-mxlarge-arm64.max-instances: "10"
<   dynamic.linux-mxlarge-arm64.region: us-east-1
<   dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-mxlarge-arm64.type: aws 
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
<h3>4: Development changes from 407f739e to a33de09c on Fri Jul 5 09:01:00 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 336f52af..e03f7cc2 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,35 +7,210 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  #root
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
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
