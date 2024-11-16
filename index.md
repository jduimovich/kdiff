# kustomize changes tracked by commits 
### This file generated at Sat Nov 16 00:11:22 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e3280189 to ffb2a467 on Fri Nov 15 22:19:46 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b7081580..07d2a9b4 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-e3280189/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
556c556
<         image: quay.io/konflux-ci/build-service:20bdd94a95ee2d033c4343e503b883fb39fd7277
---
>         image: quay.io/konflux-ci/build-service:d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
./commit-e3280189/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
556c556
<         image: quay.io/konflux-ci/build-service:20bdd94a95ee2d033c4343e503b883fb39fd7277
---
>         image: quay.io/konflux-ci/build-service:d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7 
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
<h3>1: Staging changes from e3280189 to ffb2a467 on Fri Nov 15 22:19:46 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b7081580..07d2a9b4 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from e3280189 to ffb2a467 on Fri Nov 15 22:19:46 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b7081580..07d2a9b4 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 8475b04d to e3280189 on Fri Nov 15 22:14:19 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 3bbb15f2..61d0fbd1 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 16f1d5ce..52c3fc70 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 8475b04d to e3280189 on Fri Nov 15 22:14:19 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 3bbb15f2..61d0fbd1 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 16f1d5ce..52c3fc70 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8475b04d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
556c556
<         image: quay.io/konflux-ci/build-service:20bdd94a95ee2d033c4343e503b883fb39fd7277
---
>         image: quay.io/konflux-ci/build-service:d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7 
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
<h3>2: Development changes from 8475b04d to e3280189 on Fri Nov 15 22:14:19 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 3bbb15f2..61d0fbd1 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 16f1d5ce..52c3fc70 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+- https://github.com/konflux-ci/build-service/config/default?ref=20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7
+  newTag: 20bdd94a95ee2d033c4343e503b883fb39fd7277
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8475b04d/development/components/build-service/development/kustomize.out.yaml
549c549
<         image: quay.io/konflux-ci/build-service:20bdd94a95ee2d033c4343e503b883fb39fd7277
---
>         image: quay.io/konflux-ci/build-service:d35c4dc1cf8dc1d323b4d4dac94eccef10c274d7 
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
<h3>3: Production changes from 10f96276 to 8475b04d on Fri Nov 15 13:53:47 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 8a98a81b..b7081580 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -25,3 +25,6 @@ patches:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/production/base/manager_resources_patch.yaml b/components/build-service/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9f39caaa..16f1d5ce 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -17,3 +17,6 @@ commonAnnotations:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/staging/base/manager_resources_patch.yaml b/components/build-service/staging/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/staging/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/image-controller/production/base/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/production/base/manager_resources_patch.yaml
+++ b/components/image-controller/production/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
 
diff --git a/components/image-controller/staging/base/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/staging/base/manager_resources_patch.yaml
+++ b/components/image-controller/staging/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-10f96276/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
573c573
<             memory: 2Gi
---
>             memory: 1024Mi
575,576c575,576
<             cpu: 250m
<             memory: 768Mi
---
>             cpu: 10m
>             memory: 64Mi
./commit-10f96276/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
573c573
<             memory: 2Gi
---
>             memory: 1024Mi
575,576c575,576
<             cpu: 250m
<             memory: 768Mi
---
>             cpu: 10m
>             memory: 64Mi
./commit-10f96276/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
1014,1015c1014,1015
<             cpu: 250m
<             memory: 1Gi
---
>             cpu: 100m
>             memory: 20Mi 
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
<h3>3: Staging changes from 10f96276 to 8475b04d on Fri Nov 15 13:53:47 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 8a98a81b..b7081580 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -25,3 +25,6 @@ patches:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/production/base/manager_resources_patch.yaml b/components/build-service/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9f39caaa..16f1d5ce 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -17,3 +17,6 @@ commonAnnotations:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/staging/base/manager_resources_patch.yaml b/components/build-service/staging/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/staging/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/image-controller/production/base/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/production/base/manager_resources_patch.yaml
+++ b/components/image-controller/production/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
 
diff --git a/components/image-controller/staging/base/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/staging/base/manager_resources_patch.yaml
+++ b/components/image-controller/staging/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-10f96276/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
573c573
<             memory: 2Gi
---
>             memory: 1024Mi
575,576c575,576
<             cpu: 250m
<             memory: 768Mi
---
>             cpu: 10m
>             memory: 64Mi 
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
<h3>3: Development changes from 10f96276 to 8475b04d on Fri Nov 15 13:53:47 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 8a98a81b..b7081580 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -25,3 +25,6 @@ patches:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/production/base/manager_resources_patch.yaml b/components/build-service/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9f39caaa..16f1d5ce 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -17,3 +17,6 @@ commonAnnotations:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/staging/base/manager_resources_patch.yaml b/components/build-service/staging/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/staging/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/image-controller/production/base/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/production/base/manager_resources_patch.yaml
+++ b/components/image-controller/production/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
 
diff --git a/components/image-controller/staging/base/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/staging/base/manager_resources_patch.yaml
+++ b/components/image-controller/staging/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
  
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
<h3>4: Production changes from 988f3bf6 to 10f96276 on Fri Nov 15 13:23:30 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 49fc8a86..925f6041 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -114,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"controller.tektonresolverframework.bundleresolver..*"}'
         - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}' 
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
<h3>4: Staging changes from 988f3bf6 to 10f96276 on Fri Nov 15 13:23:30 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 49fc8a86..925f6041 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -114,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"controller.tektonresolverframework.bundleresolver..*"}'
         - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}' 
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
<h3>4: Development changes from 988f3bf6 to 10f96276 on Fri Nov 15 13:23:30 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 49fc8a86..925f6041 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -114,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"controller.tektonresolverframework.bundleresolver..*"}'
         - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}' 
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
