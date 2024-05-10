# kustomize changes tracked by commits 
### This file generated at Fri May 10 20:04:42 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 74a2ec37 to 48d8441c on Fri May 10 18:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1f57f06a..1af3fac9 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5d73f027..ac89a765 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2e4e4321..e8ce9614 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-74a2ec37/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
221,237d220
<   name: build-service-build-pipeline-config-read-only
<   namespace: build-service
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - build-pipeline-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
711c694
<         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
---
>         image: quay.io/redhat-appstudio/build-service:b19e3a30aa621ed898d64488e4c8785420b87f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 74a2ec37 to 48d8441c on Fri May 10 18:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1f57f06a..1af3fac9 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5d73f027..ac89a765 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2e4e4321..e8ce9614 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-74a2ec37/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
221,237d220
<   name: build-service-build-pipeline-config-read-only
<   namespace: build-service
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - build-pipeline-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
711c694
<         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
---
>         image: quay.io/redhat-appstudio/build-service:b19e3a30aa621ed898d64488e4c8785420b87f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 74a2ec37 to 48d8441c on Fri May 10 18:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1f57f06a..1af3fac9 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5d73f027..ac89a765 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2e4e4321..e8ce9614 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-74a2ec37/development/components/build-service/development/kustomize.out.yaml
221,237d220
<   name: build-service-build-pipeline-config-read-only
<   namespace: build-service
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - build-pipeline-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
706c689
<         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
---
>         image: quay.io/redhat-appstudio/build-service:b19e3a30aa621ed898d64488e4c8785420b87f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ef0f9dac to 74a2ec37 on Fri May 10 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
index 99bc07eb..2b2f0e1f 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 03a0a14
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: acd4a91
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: d5e862c
+    newTag: a8ca051
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-ef0f9dac/production/components/ui/production/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:03a0a14
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:a8ca051
---
>       - image: quay.io/cloudservices/hac-dev-frontend:d5e862c
585c585
<         image: quay.io/cloudservices/chrome-service:6f08f67
---
>         image: quay.io/cloudservices/chrome-service:acd4a91 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ef0f9dac to 74a2ec37 on Fri May 10 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
index 99bc07eb..2b2f0e1f 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 03a0a14
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: acd4a91
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: d5e862c
+    newTag: a8ca051
 
 configMapGenerator:
   - name: fed-modules 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from ef0f9dac to 74a2ec37 on Fri May 10 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
index 99bc07eb..2b2f0e1f 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 03a0a14
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: acd4a91
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: d5e862c
+    newTag: a8ca051
 
 configMapGenerator:
   - name: fed-modules 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-e3286dd8/production/components/tekton-ci/production/kustomize.out.yaml
272a273,281
>   name: build-service
> spec:
>   url: https://github.com/konflux-ci/build-service
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-e3286dd8/staging/components/tekton-ci/staging/kustomize.out.yaml
232a233,241
>   name: build-service
> spec:
>   url: https://github.com/konflux-ci/build-service
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
 spec: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 49b4da5b to e3286dd8 on Fri May 10 13:26:54 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index dc4db592..1af783ab 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - delete-snapshots.yaml
+- manage-integrationtestscenarios.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/integration/base/manage-integrationtestscenarios.yaml b/components/integration/base/manage-integrationtestscenarios.yaml
new file mode 100644
index 00000000..6026efc2
--- /dev/null
+++ b/components/integration/base/manage-integrationtestscenarios.yaml
@@ -0,0 +1,31 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "integrationtestscenarios"
+    verbs:
+      - "create"
+      - "get"
+      - "list"
+      - "patch"
+      - "update"
+      - "watch"
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-integration
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manage-integrationtestscenarios 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-49b4da5b/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1133,1151d1132
< kind: ClusterRole
< metadata:
<   name: manage-integrationtestscenarios
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
<   - delete
<   - deletecollection
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1283,1295d1263
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: manage-integrationtestscenarios
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: manage-integrationtestscenarios
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 49b4da5b to e3286dd8 on Fri May 10 13:26:54 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index dc4db592..1af783ab 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - delete-snapshots.yaml
+- manage-integrationtestscenarios.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/integration/base/manage-integrationtestscenarios.yaml b/components/integration/base/manage-integrationtestscenarios.yaml
new file mode 100644
index 00000000..6026efc2
--- /dev/null
+++ b/components/integration/base/manage-integrationtestscenarios.yaml
@@ -0,0 +1,31 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "integrationtestscenarios"
+    verbs:
+      - "create"
+      - "get"
+      - "list"
+      - "patch"
+      - "update"
+      - "watch"
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-integration
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manage-integrationtestscenarios 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-49b4da5b/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1133,1151d1132
< kind: ClusterRole
< metadata:
<   name: manage-integrationtestscenarios
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
<   - delete
<   - deletecollection
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1283,1295d1263
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: manage-integrationtestscenarios
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: manage-integrationtestscenarios
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 49b4da5b to e3286dd8 on Fri May 10 13:26:54 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index dc4db592..1af783ab 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - delete-snapshots.yaml
+- manage-integrationtestscenarios.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/integration/base/manage-integrationtestscenarios.yaml b/components/integration/base/manage-integrationtestscenarios.yaml
new file mode 100644
index 00000000..6026efc2
--- /dev/null
+++ b/components/integration/base/manage-integrationtestscenarios.yaml
@@ -0,0 +1,31 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "integrationtestscenarios"
+    verbs:
+      - "create"
+      - "get"
+      - "list"
+      - "patch"
+      - "update"
+      - "watch"
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-integration
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manage-integrationtestscenarios 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-49b4da5b/development/components/integration/development/kustomize.out.yaml
1133,1151d1132
< kind: ClusterRole
< metadata:
<   name: manage-integrationtestscenarios
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
<   - delete
<   - deletecollection
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1283,1295d1263
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: manage-integrationtestscenarios
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: manage-integrationtestscenarios
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration 
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
```
 
</details> 
<br> 


</div>
