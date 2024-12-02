# kustomize changes tracked by commits 
### This file generated at Mon Dec  2 04:05:34 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ea056546 to 36561f97 on Sun Dec 1 09:38:15 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a35a4d02..7ee4bceb 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+- https://github.com/konflux-ci/project-controller/config/default?ref=2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  newTag: 2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 21945df7..eb2c47cf 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  - https://github.com/konflux-ci/project-controller/config/default?ref=2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  newTag: 2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from ea056546 to 36561f97 on Sun Dec 1 09:38:15 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a35a4d02..7ee4bceb 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+- https://github.com/konflux-ci/project-controller/config/default?ref=2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  newTag: 2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 21945df7..eb2c47cf 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  - https://github.com/konflux-ci/project-controller/config/default?ref=2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  newTag: 2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-ea056546/staging/components/project-controller/staging/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
---
>         image: quay.io/konflux-ci/project-controller:bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from ea056546 to 36561f97 on Sun Dec 1 09:38:15 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a35a4d02..7ee4bceb 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+- https://github.com/konflux-ci/project-controller/config/default?ref=2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  newTag: 2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 21945df7..eb2c47cf 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  - https://github.com/konflux-ci/project-controller/config/default?ref=2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
+  newTag: 2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-ea056546/development/components/project-controller/development/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:2828a083f4cd97f8fea03d15ae3bd7f3c12e0122
---
>         image: quay.io/konflux-ci/project-controller:bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8 
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
<h3>2: Production changes from 7a8af8e2 to ea056546 on Sun Dec 1 08:46:01 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 5763b5c1..219eabde 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,9 +5,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index bb90c164..282f8bbb 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -8,7 +8,6 @@ resources:
   - ../../base/keycloak
   - ../../base/repository-validator
   - ../../base/cluster-secret-store-rh
-  - ../../base/member/infra-deployments/proactive-scaler
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd 
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
<h3>2: Staging changes from 7a8af8e2 to ea056546 on Sun Dec 1 08:46:01 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 5763b5c1..219eabde 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,9 +5,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index bb90c164..282f8bbb 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -8,7 +8,6 @@ resources:
   - ../../base/keycloak
   - ../../base/repository-validator
   - ../../base/cluster-secret-store-rh
-  - ../../base/member/infra-deployments/proactive-scaler
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 7a8af8e2 to ea056546 on Sun Dec 1 08:46:01 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 5763b5c1..219eabde 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,9 +5,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index bb90c164..282f8bbb 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -8,7 +8,6 @@ resources:
   - ../../base/keycloak
   - ../../base/repository-validator
   - ../../base/cluster-secret-store-rh
-  - ../../base/member/infra-deployments/proactive-scaler
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd 
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
<h3>3: Production changes from 16d95f5e to 7a8af8e2 on Sat Nov 30 14:01:15 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 3186d643..ea7ca0e0 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1106,17 +1106,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1126,7 +1126,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b43acb30..3b60a3c2 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1096,17 +1096,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1116,7 +1116,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index be1dcc98..296289cd 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1482,17 +1482,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1502,7 +1502,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7e9fee97..bcd5638e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1482,17 +1482,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1502,7 +1502,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint 
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
<h3>3: Staging changes from 16d95f5e to 7a8af8e2 on Sat Nov 30 14:01:15 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 3186d643..ea7ca0e0 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1106,17 +1106,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1126,7 +1126,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b43acb30..3b60a3c2 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1096,17 +1096,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1116,7 +1116,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index be1dcc98..296289cd 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1482,17 +1482,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1502,7 +1502,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7e9fee97..bcd5638e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1482,17 +1482,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1502,7 +1502,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-16d95f5e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1484c1484
<         - name: AWS_ACCESS_KEY_ID
---
>         - name: S3_ACCESS_KEY_ID
1489c1489
<         - name: AWS_SECRET_ACCESS_KEY
---
>         - name: S3_SECRET_ACCESS_KEY
1494c1494
<         - name: AWS_REGION
---
>         - name: S3_REGION
1504c1504
<         - name: AWS_ENDPOINT_URL
---
>         - name: S3_ENDPOINT
./commit-16d95f5e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1484c1484
<         - name: AWS_ACCESS_KEY_ID
---
>         - name: S3_ACCESS_KEY_ID
1489c1489
<         - name: AWS_SECRET_ACCESS_KEY
---
>         - name: S3_SECRET_ACCESS_KEY
1494c1494
<         - name: AWS_REGION
---
>         - name: S3_REGION
1504c1504
<         - name: AWS_ENDPOINT_URL
---
>         - name: S3_ENDPOINT 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 16d95f5e to 7a8af8e2 on Sat Nov 30 14:01:15 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 3186d643..ea7ca0e0 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1106,17 +1106,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1126,7 +1126,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b43acb30..3b60a3c2 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1096,17 +1096,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1116,7 +1116,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index be1dcc98..296289cd 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1482,17 +1482,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1502,7 +1502,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7e9fee97..bcd5638e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1482,17 +1482,17 @@ spec:
           value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
-        - name: S3_ACCESS_KEY_ID
+        - name: AWS_ACCESS_KEY_ID
           valueFrom:
             secretKeyRef:
               key: aws_access_key_id
               name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
+        - name: AWS_SECRET_ACCESS_KEY
           valueFrom:
             secretKeyRef:
               key: aws_secret_access_key
               name: tekton-results-s3
-        - name: S3_REGION
+        - name: AWS_REGION
           valueFrom:
             secretKeyRef:
               key: aws_region
@@ -1502,7 +1502,7 @@ spec:
             secretKeyRef:
               key: bucket
               name: tekton-results-s3
-        - name: S3_ENDPOINT
+        - name: AWS_ENDPOINT_URL
           valueFrom:
             secretKeyRef:
               key: endpoint 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-16d95f5e/development/components/pipeline-service/development/kustomize.out.yaml
1313c1313
<         - name: AWS_ACCESS_KEY_ID
---
>         - name: S3_ACCESS_KEY_ID
1318c1318
<         - name: AWS_SECRET_ACCESS_KEY
---
>         - name: S3_SECRET_ACCESS_KEY
1323c1323
<         - name: AWS_REGION
---
>         - name: S3_REGION
1333c1333
<         - name: AWS_ENDPOINT_URL
---
>         - name: S3_ENDPOINT 
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
<h3>4: Production changes from feb0e1ee to 16d95f5e on Fri Nov 29 14:52:34 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/konflux-ui/staging/base/kustomization.yaml b/components/konflux-ui/staging/base/kustomization.yaml
index 4f3077f3..97ac9252 100644
--- a/components/konflux-ui/staging/base/kustomization.yaml
+++ b/components/konflux-ui/staging/base/kustomization.yaml
@@ -10,6 +10,6 @@ images:
     digest: sha256:0b32c063d9fbce1af4f851d7cf1f8bc0ad1eda06dafaa4ad2bd4a0d5fbba62c7
 
   - name: quay.io/konflux-ci/konflux-ui
-    newTag: 06ab0bbdc45d66c0f33fbc8ac61c9af003b3888d
+    newTag: ed4ee3e5e7ae016ad235acc3f9d1a4cb373cedba
 
 namespace: konflux-ui 
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
<h3>4: Staging changes from feb0e1ee to 16d95f5e on Fri Nov 29 14:52:34 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/konflux-ui/staging/base/kustomization.yaml b/components/konflux-ui/staging/base/kustomization.yaml
index 4f3077f3..97ac9252 100644
--- a/components/konflux-ui/staging/base/kustomization.yaml
+++ b/components/konflux-ui/staging/base/kustomization.yaml
@@ -10,6 +10,6 @@ images:
     digest: sha256:0b32c063d9fbce1af4f851d7cf1f8bc0ad1eda06dafaa4ad2bd4a0d5fbba62c7
 
   - name: quay.io/konflux-ci/konflux-ui
-    newTag: 06ab0bbdc45d66c0f33fbc8ac61c9af003b3888d
+    newTag: ed4ee3e5e7ae016ad235acc3f9d1a4cb373cedba
 
 namespace: konflux-ui 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-feb0e1ee/staging/components/konflux-ui/staging/stone-stg-rh01/kustomize.out.yaml
546c546
<         image: quay.io/konflux-ci/konflux-ui:ed4ee3e5e7ae016ad235acc3f9d1a4cb373cedba
---
>         image: quay.io/konflux-ci/konflux-ui:06ab0bbdc45d66c0f33fbc8ac61c9af003b3888d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from feb0e1ee to 16d95f5e on Fri Nov 29 14:52:34 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/konflux-ui/staging/base/kustomization.yaml b/components/konflux-ui/staging/base/kustomization.yaml
index 4f3077f3..97ac9252 100644
--- a/components/konflux-ui/staging/base/kustomization.yaml
+++ b/components/konflux-ui/staging/base/kustomization.yaml
@@ -10,6 +10,6 @@ images:
     digest: sha256:0b32c063d9fbce1af4f851d7cf1f8bc0ad1eda06dafaa4ad2bd4a0d5fbba62c7
 
   - name: quay.io/konflux-ci/konflux-ui
-    newTag: 06ab0bbdc45d66c0f33fbc8ac61c9af003b3888d
+    newTag: ed4ee3e5e7ae016ad235acc3f9d1a4cb373cedba
 
 namespace: konflux-ui 
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
