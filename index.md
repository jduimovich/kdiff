# kustomize changes tracked by commits 
### This file generated at Wed Apr 17 16:11:52 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a5164d91 to 6e36cc71 on Wed Apr 17 14:12:34 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index ff794f8d..d6313ff7 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 84a78472781814a2827af663659f2672a07f0f8f
+    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a5164d91/production/components/release/production/kustomize.out.yaml
1765c1765
<         image: quay.io/redhat-appstudio/release-service:ec5cca73ee273dcfa4b49aa5bde471f824171405
---
>         image: quay.io/redhat-appstudio/release-service:84a78472781814a2827af663659f2672a07f0f8f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a5164d91 to 6e36cc71 on Wed Apr 17 14:12:34 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index ff794f8d..d6313ff7 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 84a78472781814a2827af663659f2672a07f0f8f
+    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from a5164d91 to 6e36cc71 on Wed Apr 17 14:12:34 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index ff794f8d..d6313ff7 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 84a78472781814a2827af663659f2672a07f0f8f
+    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 416769ca to a5164d91 on Wed Apr 17 14:12:27 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4591e7d0..d6133dd2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=f0373664133c8e208c416eab55beebc1382ab6f2
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f0373664133c8e208c416eab55beebc1382ab6f2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f0373664133c8e208c416eab55beebc1382ab6f2
+  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 437a8e05..e857d6b3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=f0373664133c8e208c416eab55beebc1382ab6f2
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f0373664133c8e208c416eab55beebc1382ab6f2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f0373664133c8e208c416eab55beebc1382ab6f2
+  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 416769ca to a5164d91 on Wed Apr 17 14:12:27 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4591e7d0..d6133dd2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=f0373664133c8e208c416eab55beebc1382ab6f2
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f0373664133c8e208c416eab55beebc1382ab6f2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f0373664133c8e208c416eab55beebc1382ab6f2
+  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 437a8e05..e857d6b3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=f0373664133c8e208c416eab55beebc1382ab6f2
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f0373664133c8e208c416eab55beebc1382ab6f2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f0373664133c8e208c416eab55beebc1382ab6f2
+  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-416769ca/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
---
>         image: quay.io/redhat-appstudio/integration-service:f0373664133c8e208c416eab55beebc1382ab6f2
1298c1298
<             image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
---
>             image: quay.io/redhat-appstudio/integration-service:f0373664133c8e208c416eab55beebc1382ab6f2 
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
<h3>2: Development changes from 416769ca to a5164d91 on Wed Apr 17 14:12:27 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4591e7d0..d6133dd2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=f0373664133c8e208c416eab55beebc1382ab6f2
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f0373664133c8e208c416eab55beebc1382ab6f2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f0373664133c8e208c416eab55beebc1382ab6f2
+  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 437a8e05..e857d6b3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=f0373664133c8e208c416eab55beebc1382ab6f2
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f0373664133c8e208c416eab55beebc1382ab6f2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f0373664133c8e208c416eab55beebc1382ab6f2
+  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-416769ca/development/components/integration/development/kustomize.out.yaml
1205c1205
<         image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
---
>         image: quay.io/redhat-appstudio/integration-service:f0373664133c8e208c416eab55beebc1382ab6f2
1299c1299
<             image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
---
>             image: quay.io/redhat-appstudio/integration-service:f0373664133c8e208c416eab55beebc1382ab6f2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 37dd5354 to 416769ca on Wed Apr 17 14:12:20 2024 </h3>  
 
<details> 
<summary>Git Diff (212 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/chains-deployment-perf-bump.yaml b/components/pipeline-service/development/chains-deployment-perf-bump.yaml
deleted file mode 100644
index dbb1e522..00000000
--- a/components/pipeline-service/development/chains-deployment-perf-bump.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  chain:
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                  - name: tekton-chains-controller
-                    args:
-                      [
-                        '--threads-per-controller=32',
-                        '--kube-api-qps=50',
-                        '--kube-api-burst=50',
-                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/development/chains-tekton-config-patches.yaml b/components/pipeline-service/development/chains-tekton-config-patches.yaml
new file mode 100644
index 00000000..e7c79e42
--- /dev/null
+++ b/components/pipeline-service/development/chains-tekton-config-patches.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    # Configure TaskRun attestation.
+    # RHTAP does not leverage the TaskRun attestations.
+    # This tells Tekton Chains to not store them in the OCI registry.
+    artifacts.taskrun.format: "in-toto"
+    artifacts.taskrun.storage: ""
+
+    # Configure image signing
+    artifacts.oci.storage: "oci"
+
+    # Configure deep inspection
+    artifacts.pipelinerun.enable-deep-inspection: true
+
+    # Configure PipelineRun attestation
+    artifacts.pipelinerun.format: "in-toto"
+    artifacts.pipelinerun.storage: "oci"
+
+    # Rekor integration is disabled for now. It is planned to be re-introduced in the future.
+    transparency.enabled: "false"
+
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3a7f1e48..4c6f6326 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -13,7 +13,7 @@ resources:
   - ../base/rbac
 
 patches:
-  - path: chains-deployment-perf-bump.yaml
+  - path: chains-tekton-config-patches.yaml
     target:
       kind: TektonConfig
       name: config
diff --git a/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml b/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml
deleted file mode 100644
index dbb1e522..00000000
--- a/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  chain:
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                  - name: tekton-chains-controller
-                    args:
-                      [
-                        '--threads-per-controller=32',
-                        '--kube-api-qps=50',
-                        '--kube-api-burst=50',
-                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml b/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml
new file mode 100644
index 00000000..e7c79e42
--- /dev/null
+++ b/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    # Configure TaskRun attestation.
+    # RHTAP does not leverage the TaskRun attestations.
+    # This tells Tekton Chains to not store them in the OCI registry.
+    artifacts.taskrun.format: "in-toto"
+    artifacts.taskrun.storage: ""
+
+    # Configure image signing
+    artifacts.oci.storage: "oci"
+
+    # Configure deep inspection
+    artifacts.pipelinerun.enable-deep-inspection: true
+
+    # Configure PipelineRun attestation
+    artifacts.pipelinerun.format: "in-toto"
+    artifacts.pipelinerun.storage: "oci"
+
+    # Rekor integration is disabled for now. It is planned to be re-introduced in the future.
+    transparency.enabled: "false"
+
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 27c7aefd..dcbbf3bc 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,7 +15,7 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: chains-deployment-perf-bump.yaml
+  - path: chains-tekton-config-patches.yaml
     target:
       kind: TektonConfig
       name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 94ace71f..3c8b702f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 06316805..40a9f325 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index de75e0f7..79c22315 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 37dd5354 to 416769ca on Wed Apr 17 14:12:20 2024 </h3>  
 
<details> 
<summary>Git Diff (212 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/chains-deployment-perf-bump.yaml b/components/pipeline-service/development/chains-deployment-perf-bump.yaml
deleted file mode 100644
index dbb1e522..00000000
--- a/components/pipeline-service/development/chains-deployment-perf-bump.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  chain:
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                  - name: tekton-chains-controller
-                    args:
-                      [
-                        '--threads-per-controller=32',
-                        '--kube-api-qps=50',
-                        '--kube-api-burst=50',
-                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/development/chains-tekton-config-patches.yaml b/components/pipeline-service/development/chains-tekton-config-patches.yaml
new file mode 100644
index 00000000..e7c79e42
--- /dev/null
+++ b/components/pipeline-service/development/chains-tekton-config-patches.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    # Configure TaskRun attestation.
+    # RHTAP does not leverage the TaskRun attestations.
+    # This tells Tekton Chains to not store them in the OCI registry.
+    artifacts.taskrun.format: "in-toto"
+    artifacts.taskrun.storage: ""
+
+    # Configure image signing
+    artifacts.oci.storage: "oci"
+
+    # Configure deep inspection
+    artifacts.pipelinerun.enable-deep-inspection: true
+
+    # Configure PipelineRun attestation
+    artifacts.pipelinerun.format: "in-toto"
+    artifacts.pipelinerun.storage: "oci"
+
+    # Rekor integration is disabled for now. It is planned to be re-introduced in the future.
+    transparency.enabled: "false"
+
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3a7f1e48..4c6f6326 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -13,7 +13,7 @@ resources:
   - ../base/rbac
 
 patches:
-  - path: chains-deployment-perf-bump.yaml
+  - path: chains-tekton-config-patches.yaml
     target:
       kind: TektonConfig
       name: config
diff --git a/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml b/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml
deleted file mode 100644
index dbb1e522..00000000
--- a/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  chain:
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                  - name: tekton-chains-controller
-                    args:
-                      [
-                        '--threads-per-controller=32',
-                        '--kube-api-qps=50',
-                        '--kube-api-burst=50',
-                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml b/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml
new file mode 100644
index 00000000..e7c79e42
--- /dev/null
+++ b/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    # Configure TaskRun attestation.
+    # RHTAP does not leverage the TaskRun attestations.
+    # This tells Tekton Chains to not store them in the OCI registry.
+    artifacts.taskrun.format: "in-toto"
+    artifacts.taskrun.storage: ""
+
+    # Configure image signing
+    artifacts.oci.storage: "oci"
+
+    # Configure deep inspection
+    artifacts.pipelinerun.enable-deep-inspection: true
+
+    # Configure PipelineRun attestation
+    artifacts.pipelinerun.format: "in-toto"
+    artifacts.pipelinerun.storage: "oci"
+
+    # Rekor integration is disabled for now. It is planned to be re-introduced in the future.
+    transparency.enabled: "false"
+
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 27c7aefd..dcbbf3bc 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,7 +15,7 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: chains-deployment-perf-bump.yaml
+  - path: chains-tekton-config-patches.yaml
     target:
       kind: TektonConfig
       name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 94ace71f..3c8b702f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 06316805..40a9f325 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index de75e0f7..79c22315 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-37dd5354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1852d1851
<     artifacts.pipelinerun.enable-deep-inspection: true
./commit-37dd5354/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1852d1851
<     artifacts.pipelinerun.enable-deep-inspection: true
./commit-37dd5354/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1852d1851
<     artifacts.pipelinerun.enable-deep-inspection: true 
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
<h3>3: Development changes from 37dd5354 to 416769ca on Wed Apr 17 14:12:20 2024 </h3>  
 
<details> 
<summary>Git Diff (212 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/chains-deployment-perf-bump.yaml b/components/pipeline-service/development/chains-deployment-perf-bump.yaml
deleted file mode 100644
index dbb1e522..00000000
--- a/components/pipeline-service/development/chains-deployment-perf-bump.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  chain:
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                  - name: tekton-chains-controller
-                    args:
-                      [
-                        '--threads-per-controller=32',
-                        '--kube-api-qps=50',
-                        '--kube-api-burst=50',
-                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/development/chains-tekton-config-patches.yaml b/components/pipeline-service/development/chains-tekton-config-patches.yaml
new file mode 100644
index 00000000..e7c79e42
--- /dev/null
+++ b/components/pipeline-service/development/chains-tekton-config-patches.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    # Configure TaskRun attestation.
+    # RHTAP does not leverage the TaskRun attestations.
+    # This tells Tekton Chains to not store them in the OCI registry.
+    artifacts.taskrun.format: "in-toto"
+    artifacts.taskrun.storage: ""
+
+    # Configure image signing
+    artifacts.oci.storage: "oci"
+
+    # Configure deep inspection
+    artifacts.pipelinerun.enable-deep-inspection: true
+
+    # Configure PipelineRun attestation
+    artifacts.pipelinerun.format: "in-toto"
+    artifacts.pipelinerun.storage: "oci"
+
+    # Rekor integration is disabled for now. It is planned to be re-introduced in the future.
+    transparency.enabled: "false"
+
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3a7f1e48..4c6f6326 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -13,7 +13,7 @@ resources:
   - ../base/rbac
 
 patches:
-  - path: chains-deployment-perf-bump.yaml
+  - path: chains-tekton-config-patches.yaml
     target:
       kind: TektonConfig
       name: config
diff --git a/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml b/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml
deleted file mode 100644
index dbb1e522..00000000
--- a/components/pipeline-service/staging/base/chains-deployment-perf-bump.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  chain:
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                  - name: tekton-chains-controller
-                    args:
-                      [
-                        '--threads-per-controller=32',
-                        '--kube-api-qps=50',
-                        '--kube-api-burst=50',
-                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml b/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml
new file mode 100644
index 00000000..e7c79e42
--- /dev/null
+++ b/components/pipeline-service/staging/base/chains-tekton-config-patches.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    # Configure TaskRun attestation.
+    # RHTAP does not leverage the TaskRun attestations.
+    # This tells Tekton Chains to not store them in the OCI registry.
+    artifacts.taskrun.format: "in-toto"
+    artifacts.taskrun.storage: ""
+
+    # Configure image signing
+    artifacts.oci.storage: "oci"
+
+    # Configure deep inspection
+    artifacts.pipelinerun.enable-deep-inspection: true
+
+    # Configure PipelineRun attestation
+    artifacts.pipelinerun.format: "in-toto"
+    artifacts.pipelinerun.storage: "oci"
+
+    # Rekor integration is disabled for now. It is planned to be re-introduced in the future.
+    transparency.enabled: "false"
+
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 27c7aefd..dcbbf3bc 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,7 +15,7 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: chains-deployment-perf-bump.yaml
+  - path: chains-tekton-config-patches.yaml
     target:
       kind: TektonConfig
       name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 94ace71f..3c8b702f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 06316805..40a9f325 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index de75e0f7..79c22315 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1849,6 +1849,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-37dd5354/development/components/pipeline-service/development/kustomize.out.yaml
1960d1959
<     artifacts.pipelinerun.enable-deep-inspection: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ab244edc to 37dd5354 on Wed Apr 17 13:25:35 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index fecb5932..b406a17f 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -43,3 +43,6 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
+  value: 6
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6bde15cf..cd595fb1 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e4e560d9..1541bc13 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 6248b2e4..1607fd3a 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-ab244edc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1976c1976
<             minReplicas: 6
---
>             minReplicas: 2
./commit-ab244edc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1976c1976
<             minReplicas: 6
---
>             minReplicas: 2
./commit-ab244edc/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1976c1976
<             minReplicas: 6
---
>             minReplicas: 2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ab244edc to 37dd5354 on Wed Apr 17 13:25:35 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index fecb5932..b406a17f 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -43,3 +43,6 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
+  value: 6
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6bde15cf..cd595fb1 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e4e560d9..1541bc13 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 6248b2e4..1607fd3a 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from ab244edc to 37dd5354 on Wed Apr 17 13:25:35 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index fecb5932..b406a17f 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -43,3 +43,6 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
+  value: 6
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6bde15cf..cd595fb1 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e4e560d9..1541bc13 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 6248b2e4..1607fd3a 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1973,7 +1973,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false 
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
```
 
</details> 
<br> 


</div>
