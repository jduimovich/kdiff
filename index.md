# kustomize changes tracked by commits 
### This file generated at Mon May 27 16:06:23 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4c5c9643 to 6efcbb22 on Mon May 27 15:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
index 6322d595..20e812ed 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p02"
+    "value": "stone-prod-p02/rs-p02"
   }
 ]
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
index 86bbf0d7..3530485a 100644
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p02"
+    "value": "stone-prod-p02/spi-p02"
   }
 ] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 4c5c9643 to 6efcbb22 on Mon May 27 15:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
index 6322d595..20e812ed 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p02"
+    "value": "stone-prod-p02/rs-p02"
   }
 ]
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
index 86bbf0d7..3530485a 100644
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p02"
+    "value": "stone-prod-p02/spi-p02"
   }
 ] 
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
<h3>1: Development changes from 4c5c9643 to 6efcbb22 on Mon May 27 15:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
index 6322d595..20e812ed 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p02"
+    "value": "stone-prod-p02/rs-p02"
   }
 ]
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
index 86bbf0d7..3530485a 100644
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p02"
+    "value": "stone-prod-p02/spi-p02"
   }
 ] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5dc212a6 to 4c5c9643 on Mon May 27 14:25:25 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 984320e7..68432c50 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-5dc212a6/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1457c1457
<         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>         image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>             image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
./commit-5dc212a6/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1457c1457
<         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>         image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>             image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5dc212a6 to 4c5c9643 on Mon May 27 14:25:25 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 984320e7..68432c50 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
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
<h3>2: Development changes from 5dc212a6 to 4c5c9643 on Mon May 27 14:25:25 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 984320e7..68432c50 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from ec3e0812 to 5dc212a6 on Mon May 27 13:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
index 9aaf74ba..b9c52c55 100644
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 16f465bb..bdc1c000 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1703,7 +1703,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1724,7 +1724,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
index 518ba51b..43ad693f 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
index 4f7cd624..49e8f450 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-ec3e0812/production/components/gitops/production/stone-prod-p02/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
./commit-ec3e0812/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1706c1706
<       key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
---
>       key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
1727c1727
<       key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
---
>       key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ec3e0812 to 5dc212a6 on Mon May 27 13:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
index 9aaf74ba..b9c52c55 100644
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 16f465bb..bdc1c000 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1703,7 +1703,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1724,7 +1724,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
index 518ba51b..43ad693f 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
index 4f7cd624..49e8f450 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager 
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
<h3>3: Development changes from ec3e0812 to 5dc212a6 on Mon May 27 13:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
index 9aaf74ba..b9c52c55 100644
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 16f465bb..bdc1c000 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1703,7 +1703,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1724,7 +1724,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
index 518ba51b..43ad693f 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
index 4f7cd624..49e8f450 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 120068d8 to ec3e0812 on Mon May 27 09:36:42 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 4cfe32dd..5012b8c9 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 62e8dde3..ec6252e2 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e1f3da19..a3130667 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 269aa049..47b632ad 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (54 lines)</summary>  

``` 
./commit-120068d8/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1160,1163d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1210,1213c1206,1207
<       - args:
<         - -pprof-address
<         - "6060"
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>       - args: []
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
2059c2053
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
./commit-120068d8/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1160,1163d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1210,1213c1206,1207
<       - args:
<         - -pprof-address
<         - "6060"
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>       - args: []
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
2059c2053
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
./commit-120068d8/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1160,1163d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1210,1213c1206,1207
<       - args:
<         - -pprof-address
<         - "6060"
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>       - args: []
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
2059c2053
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 120068d8 to ec3e0812 on Mon May 27 09:36:42 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 4cfe32dd..5012b8c9 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 62e8dde3..ec6252e2 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e1f3da19..a3130667 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 269aa049..47b632ad 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
<h3>4: Development changes from 120068d8 to ec3e0812 on Mon May 27 09:36:42 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 4cfe32dd..5012b8c9 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 62e8dde3..ec6252e2 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e1f3da19..a3130667 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 269aa049..47b632ad 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1207,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2050,7 +2056,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
```
 
</details> 
<br> 


</div>
