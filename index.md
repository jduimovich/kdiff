# kustomize changes tracked by commits 
### This file generated at Fri Oct 25 12:10:24 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from de2ea069 to 0aacb13b on Fri Oct 25 09:05:15 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index cac0d9ca..a9dc17db 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -5,7 +5,7 @@ metadata:
   name: m6a-4xlarge
   namespace: proactive-scaler
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       run: m6a-4xlarge 
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
<h3>1: Staging changes from de2ea069 to 0aacb13b on Fri Oct 25 09:05:15 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index cac0d9ca..a9dc17db 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -5,7 +5,7 @@ metadata:
   name: m6a-4xlarge
   namespace: proactive-scaler
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       run: m6a-4xlarge 
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
<h3>1: Development changes from de2ea069 to 0aacb13b on Fri Oct 25 09:05:15 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index cac0d9ca..a9dc17db 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -5,7 +5,7 @@ metadata:
   name: m6a-4xlarge
   namespace: proactive-scaler
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       run: m6a-4xlarge 
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

<div>
<h3>2: Production changes from 704c0600 to de2ea069 on Fri Oct 25 08:26:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 3caaa430..7134a939 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-704c0600/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
554c554
<         image: quay.io/konflux-ci/build-service:52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
---
>         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890
./commit-704c0600/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
554c554
<         image: quay.io/konflux-ci/build-service:52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
---
>         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890 
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
<h3>2: Staging changes from 704c0600 to de2ea069 on Fri Oct 25 08:26:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 3caaa430..7134a939 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 704c0600 to de2ea069 on Fri Oct 25 08:26:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 3caaa430..7134a939 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from dc167438 to 704c0600 on Fri Oct 25 08:22:03 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 8af46282..e9fb4258 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -452,17 +452,65 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.address: "169.63.187.167"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
   host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
+  host.sysz-rhtap-prod-1.concurrency: "1"
 
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.address: "169.63.183.95"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
   host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.sysz-rhtap-prod-2.concurrency: "1"
+
+  host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  host.sysz-rhtap-prod-3.user: "root"
+  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-3.concurrency: "1"
+
+  host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  host.sysz-rhtap-prod-4.user: "root"
+  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-4.concurrency: "1"
+
+  host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  host.sysz-rhtap-prod-5.user: "root"
+  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-5.concurrency: "1"
+
+  host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  host.sysz-rhtap-prod-6.user: "root"
+  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-6.concurrency: "1"
+
+  host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  host.sysz-rhtap-prod-7.user: "root"
+  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-7.concurrency: "1"
+
+  host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  host.sysz-rhtap-prod-8.user: "root"
+  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-8.concurrency: "1"
+
+  host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  host.sysz-rhtap-prod-9.user: "root"
+  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-9.concurrency: "2"
+
+  host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  host.sysz-rhtap-prod-10.user: "root"
+  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-10.concurrency: "2"
 
   # dynamic.linux-s390x.type: ibmz
   # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (108 lines)</summary>  

``` 
./commit-dc167438/production/components/multi-platform-controller/production/kustomize.out.yaml
665,666c665,666
<   host.sysz-rhtap-prod-1.address: 169.63.187.167
<   host.sysz-rhtap-prod-1.concurrency: "1"
---
>   host.sysz-rhtap-prod-1.address: 169.63.184.30
>   host.sysz-rhtap-prod-1.concurrency: "4"
670,671c670,671
<   host.sysz-rhtap-prod-2.address: 169.63.183.95
<   host.sysz-rhtap-prod-2.concurrency: "1"
---
>   host.sysz-rhtap-prod-2.address: 169.59.164.141
>   host.sysz-rhtap-prod-2.concurrency: "4"
675,714d674
<   host.sysz-rhtap-prod-3.address: 169.63.183.96
<   host.sysz-rhtap-prod-3.concurrency: "1"
<   host.sysz-rhtap-prod-3.platform: linux/s390x
<   host.sysz-rhtap-prod-3.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-3.user: root
<   host.sysz-rhtap-prod-4.address: 169.59.188.187
<   host.sysz-rhtap-prod-4.concurrency: "1"
<   host.sysz-rhtap-prod-4.platform: linux/s390x
<   host.sysz-rhtap-prod-4.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-4.user: root
<   host.sysz-rhtap-prod-5.address: 169.59.164.137
<   host.sysz-rhtap-prod-5.concurrency: "1"
<   host.sysz-rhtap-prod-5.platform: linux/s390x
<   host.sysz-rhtap-prod-5.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-5.user: root
<   host.sysz-rhtap-prod-6.address: 150.240.2.156
<   host.sysz-rhtap-prod-6.concurrency: "1"
<   host.sysz-rhtap-prod-6.platform: linux/s390x
<   host.sysz-rhtap-prod-6.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-6.user: root
<   host.sysz-rhtap-prod-7.address: 169.59.164.134
<   host.sysz-rhtap-prod-7.concurrency: "1"
<   host.sysz-rhtap-prod-7.platform: linux/s390x
<   host.sysz-rhtap-prod-7.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-7.user: root
<   host.sysz-rhtap-prod-8.address: 150.240.0.18
<   host.sysz-rhtap-prod-8.concurrency: "1"
<   host.sysz-rhtap-prod-8.platform: linux/s390x
<   host.sysz-rhtap-prod-8.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-8.user: root
<   host.sysz-rhtap-prod-9.address: 169.63.184.30
<   host.sysz-rhtap-prod-9.concurrency: "2"
<   host.sysz-rhtap-prod-9.platform: linux/s390x
<   host.sysz-rhtap-prod-9.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-9.user: root
<   host.sysz-rhtap-prod-10.address: 169.59.164.141
<   host.sysz-rhtap-prod-10.concurrency: "2"
<   host.sysz-rhtap-prod-10.platform: linux/s390x
<   host.sysz-rhtap-prod-10.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-10.user: root
./commit-dc167438/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
665,666c665,666
<   host.sysz-rhtap-prod-1.address: 169.63.187.167
<   host.sysz-rhtap-prod-1.concurrency: "1"
---
>   host.sysz-rhtap-prod-1.address: 169.63.184.30
>   host.sysz-rhtap-prod-1.concurrency: "4"
670,671c670,671
<   host.sysz-rhtap-prod-2.address: 169.63.183.95
<   host.sysz-rhtap-prod-2.concurrency: "1"
---
>   host.sysz-rhtap-prod-2.address: 169.59.164.141
>   host.sysz-rhtap-prod-2.concurrency: "4"
675,714d674
<   host.sysz-rhtap-prod-3.address: 169.63.183.96
<   host.sysz-rhtap-prod-3.concurrency: "1"
<   host.sysz-rhtap-prod-3.platform: linux/s390x
<   host.sysz-rhtap-prod-3.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-3.user: root
<   host.sysz-rhtap-prod-4.address: 169.59.188.187
<   host.sysz-rhtap-prod-4.concurrency: "1"
<   host.sysz-rhtap-prod-4.platform: linux/s390x
<   host.sysz-rhtap-prod-4.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-4.user: root
<   host.sysz-rhtap-prod-5.address: 169.59.164.137
<   host.sysz-rhtap-prod-5.concurrency: "1"
<   host.sysz-rhtap-prod-5.platform: linux/s390x
<   host.sysz-rhtap-prod-5.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-5.user: root
<   host.sysz-rhtap-prod-6.address: 150.240.2.156
<   host.sysz-rhtap-prod-6.concurrency: "1"
<   host.sysz-rhtap-prod-6.platform: linux/s390x
<   host.sysz-rhtap-prod-6.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-6.user: root
<   host.sysz-rhtap-prod-7.address: 169.59.164.134
<   host.sysz-rhtap-prod-7.concurrency: "1"
<   host.sysz-rhtap-prod-7.platform: linux/s390x
<   host.sysz-rhtap-prod-7.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-7.user: root
<   host.sysz-rhtap-prod-8.address: 150.240.0.18
<   host.sysz-rhtap-prod-8.concurrency: "1"
<   host.sysz-rhtap-prod-8.platform: linux/s390x
<   host.sysz-rhtap-prod-8.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-8.user: root
<   host.sysz-rhtap-prod-9.address: 169.63.184.30
<   host.sysz-rhtap-prod-9.concurrency: "2"
<   host.sysz-rhtap-prod-9.platform: linux/s390x
<   host.sysz-rhtap-prod-9.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-9.user: root
<   host.sysz-rhtap-prod-10.address: 169.59.164.141
<   host.sysz-rhtap-prod-10.concurrency: "2"
<   host.sysz-rhtap-prod-10.platform: linux/s390x
<   host.sysz-rhtap-prod-10.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-10.user: root 
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
<h3>3: Staging changes from dc167438 to 704c0600 on Fri Oct 25 08:22:03 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 8af46282..e9fb4258 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -452,17 +452,65 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.address: "169.63.187.167"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
   host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
+  host.sysz-rhtap-prod-1.concurrency: "1"
 
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.address: "169.63.183.95"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
   host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.sysz-rhtap-prod-2.concurrency: "1"
+
+  host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  host.sysz-rhtap-prod-3.user: "root"
+  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-3.concurrency: "1"
+
+  host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  host.sysz-rhtap-prod-4.user: "root"
+  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-4.concurrency: "1"
+
+  host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  host.sysz-rhtap-prod-5.user: "root"
+  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-5.concurrency: "1"
+
+  host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  host.sysz-rhtap-prod-6.user: "root"
+  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-6.concurrency: "1"
+
+  host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  host.sysz-rhtap-prod-7.user: "root"
+  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-7.concurrency: "1"
+
+  host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  host.sysz-rhtap-prod-8.user: "root"
+  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-8.concurrency: "1"
+
+  host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  host.sysz-rhtap-prod-9.user: "root"
+  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-9.concurrency: "2"
+
+  host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  host.sysz-rhtap-prod-10.user: "root"
+  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-10.concurrency: "2"
 
   # dynamic.linux-s390x.type: ibmz
   # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key" 
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
<h3>3: Development changes from dc167438 to 704c0600 on Fri Oct 25 08:22:03 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 8af46282..e9fb4258 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -452,17 +452,65 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.address: "169.63.187.167"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
   host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
+  host.sysz-rhtap-prod-1.concurrency: "1"
 
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.address: "169.63.183.95"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
   host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.sysz-rhtap-prod-2.concurrency: "1"
+
+  host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  host.sysz-rhtap-prod-3.user: "root"
+  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-3.concurrency: "1"
+
+  host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  host.sysz-rhtap-prod-4.user: "root"
+  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-4.concurrency: "1"
+
+  host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  host.sysz-rhtap-prod-5.user: "root"
+  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-5.concurrency: "1"
+
+  host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  host.sysz-rhtap-prod-6.user: "root"
+  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-6.concurrency: "1"
+
+  host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  host.sysz-rhtap-prod-7.user: "root"
+  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-7.concurrency: "1"
+
+  host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  host.sysz-rhtap-prod-8.user: "root"
+  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-8.concurrency: "1"
+
+  host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  host.sysz-rhtap-prod-9.user: "root"
+  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-9.concurrency: "2"
+
+  host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  host.sysz-rhtap-prod-10.user: "root"
+  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-10.concurrency: "2"
 
   # dynamic.linux-s390x.type: ibmz
   # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key" 
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

<div>
<h3>4: Production changes from c4080ba0 to dc167438 on Fri Oct 25 08:15:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 4f011b4b..4099357b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 7909ad90..032ee438 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
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
<h3>4: Staging changes from c4080ba0 to dc167438 on Fri Oct 25 08:15:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 4f011b4b..4099357b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 7909ad90..032ee438 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c4080ba0/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
554c554
<         image: quay.io/konflux-ci/build-service:52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
---
>         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890 
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
<h3>4: Development changes from c4080ba0 to dc167438 on Fri Oct 25 08:15:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 4f011b4b..4099357b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 7909ad90..032ee438 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
+- https://github.com/konflux-ci/build-service/config/default?ref=52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
+  newTag: 52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c4080ba0/development/components/build-service/development/kustomize.out.yaml
547c547
<         image: quay.io/konflux-ci/build-service:52c09f4e6b5d6677cb79de67547cb0ed8e6fc99d
---
>         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890 
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
