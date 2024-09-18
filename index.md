# kustomize changes tracked by commits 
### This file generated at Wed Sep 18 16:08:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5a8f2419 to 1257b394 on Wed Sep 18 16:01:01 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 83607291..72f609ce 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-5a8f2419/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71
./commit-5a8f2419/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 5a8f2419 to 1257b394 on Wed Sep 18 16:01:01 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 83607291..72f609ce 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 5a8f2419 to 1257b394 on Wed Sep 18 16:01:01 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 83607291..72f609ce 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from c0aea272 to 5a8f2419 on Wed Sep 18 14:57:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 2eec04e8..51a5bee5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index dfa3ef8c..57de23f2 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c0aea272 to 5a8f2419 on Wed Sep 18 14:57:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 2eec04e8..51a5bee5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index dfa3ef8c..57de23f2 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c0aea272/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c0aea272 to 5a8f2419 on Wed Sep 18 14:57:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 2eec04e8..51a5bee5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index dfa3ef8c..57de23f2 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c0aea272/development/components/build-service/development/kustomize.out.yaml
547c547
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71 
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
<h3>3: Production changes from 8ca44887 to c0aea272 on Wed Sep 18 14:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 28360442..a77d7682 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
-    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9bd6c54b..7d31b046 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
-    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 64a698ca..49b25d32 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
-    custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://console.redhat.com/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7d070931..83e8d587 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0f6aea93..9c64a4fa 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index c3248029..669d31a9 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1620,10 +1620,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1692cfa3..dce10120 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2124,10 +2124,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index ad85dabd..96c9f491 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
+      registrationServiceURL: https://console.redhat.com/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
@@ -70,4 +70,4 @@ spec:
       memberStatus:
         gitHubSecret:
           ref: member-operator-secret
-          accessTokenKey: github.access.token
\ No newline at end of file
+          accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index b9638bfe..f8e84fe0 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -43,7 +43,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-8ca44887/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2131,2132c2131,2132
<           custom-console-url: https://console.redhat.com/application-pipeline
<           custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url: https://console.redhat.com/preview/application-pipeline
>           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
2134c2134
<           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
./commit-8ca44887/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2131,2132c2131,2132
<           custom-console-url: https://console.redhat.com/application-pipeline
<           custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url: https://console.redhat.com/preview/application-pipeline
>           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
2134c2134
<           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 8ca44887 to c0aea272 on Wed Sep 18 14:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 28360442..a77d7682 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
-    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9bd6c54b..7d31b046 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
-    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 64a698ca..49b25d32 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
-    custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://console.redhat.com/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7d070931..83e8d587 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0f6aea93..9c64a4fa 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index c3248029..669d31a9 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1620,10 +1620,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1692cfa3..dce10120 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2124,10 +2124,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index ad85dabd..96c9f491 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
+      registrationServiceURL: https://console.redhat.com/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
@@ -70,4 +70,4 @@ spec:
       memberStatus:
         gitHubSecret:
           ref: member-operator-secret
-          accessTokenKey: github.access.token
\ No newline at end of file
+          accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index b9638bfe..f8e84fe0 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -43,7 +43,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-8ca44887/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2127,2128c2127,2128
<           custom-console-url: https://console.dev.redhat.com/application-pipeline
<           custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
2130c2130
<           custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 8ca44887 to c0aea272 on Wed Sep 18 14:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 28360442..a77d7682 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
-    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9bd6c54b..7d31b046 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
-    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 64a698ca..49b25d32 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
-    custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://console.redhat.com/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7d070931..83e8d587 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0f6aea93..9c64a4fa 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index c3248029..669d31a9 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1620,10 +1620,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1692cfa3..dce10120 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2124,10 +2124,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index ad85dabd..96c9f491 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
+      registrationServiceURL: https://console.redhat.com/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
@@ -70,4 +70,4 @@ spec:
       memberStatus:
         gitHubSecret:
           ref: member-operator-secret
-          accessTokenKey: github.access.token
\ No newline at end of file
+          accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index b9638bfe..f8e84fe0 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -43,7 +43,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
<h3>4: Production changes from c93fc64a to 8ca44887 on Wed Sep 18 12:21:02 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index a277dcae..799a47f7 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
+    newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 0d264a78..cfdd7414 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+- https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
+  newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c93fc64a to 8ca44887 on Wed Sep 18 12:21:02 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index a277dcae..799a47f7 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
+    newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 0d264a78..cfdd7414 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+- https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
+  newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-c93fc64a/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
592d591
<       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
672c671
<         image: quay.io/konflux-ci/mintmaker:1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
---
>         image: quay.io/konflux-ci/mintmaker:e88dfd086908441c221d5e42a65c46f99fb24dfd 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from c93fc64a to 8ca44887 on Wed Sep 18 12:21:02 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index a277dcae..799a47f7 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
+    newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 0d264a78..cfdd7414 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+- https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
+  newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-c93fc64a/development/components/mintmaker/development/kustomize.out.yaml
592d591
<       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
671c670
<         image: quay.io/konflux-ci/mintmaker:1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
---
>         image: quay.io/konflux-ci/mintmaker:e88dfd086908441c221d5e42a65c46f99fb24dfd 
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
