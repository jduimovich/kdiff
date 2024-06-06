# kustomize changes tracked by commits 
### This file generated at Thu Jun  6 04:02:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 662f5aec to f6bf6a69 on Wed Jun 5 20:33:41 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
index d1c4429b..a6ec9803 100644
--- a/components/build-service/production/stone-prod-p02/webhook-config.json
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -1,4 +1,4 @@
 {
-    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
-    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
 } 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-662f5aec/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
677,678c677,678
<         "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
<         "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
---
>         "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
>         "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
682c682
<   name: webhook-config-t2f4hgm7t6
---
>   name: webhook-config-gc7c8mfbcf
816c816
<           name: webhook-config-t2f4hgm7t6
---
>           name: webhook-config-gc7c8mfbcf 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 662f5aec to f6bf6a69 on Wed Jun 5 20:33:41 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
index d1c4429b..a6ec9803 100644
--- a/components/build-service/production/stone-prod-p02/webhook-config.json
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -1,4 +1,4 @@
 {
-    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
-    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
 } 
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
<h3>1: Development changes from 662f5aec to f6bf6a69 on Wed Jun 5 20:33:41 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
index d1c4429b..a6ec9803 100644
--- a/components/build-service/production/stone-prod-p02/webhook-config.json
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -1,4 +1,4 @@
 {
-    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
-    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
 } 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 81dbfbcf to 662f5aec on Wed Jun 5 15:58:28 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3f684729..4f222296 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: efb1d778b69d5111c6dee7b5dde6d69b4cb21d17
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 81dbfbcf to 662f5aec on Wed Jun 5 15:58:28 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3f684729..4f222296 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: efb1d778b69d5111c6dee7b5dde6d69b4cb21d17
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 81dbfbcf to 662f5aec on Wed Jun 5 15:58:28 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3f684729..4f222296 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: efb1d778b69d5111c6dee7b5dde6d69b4cb21d17
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81dbfbcf/development/components/release/development/kustomize.out.yaml
1772c1772
<         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
---
>         image: quay.io/redhat-appstudio/release-service:efb1d778b69d5111c6dee7b5dde6d69b4cb21d17 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 9872ba8a to 81dbfbcf on Wed Jun 5 14:55:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 87df0c4d..bcb17f20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 53827125..04e3fe5b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 9872ba8a to 81dbfbcf on Wed Jun 5 14:55:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 87df0c4d..bcb17f20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 53827125..04e3fe5b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9872ba8a/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109 
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
<h3>3: Development changes from 9872ba8a to 81dbfbcf on Wed Jun 5 14:55:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 87df0c4d..bcb17f20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 53827125..04e3fe5b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9872ba8a/development/components/integration/development/kustomize.out.yaml
1454c1454
<         image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 59a6d2e4 to 9872ba8a on Wed Jun 5 13:27:14 2024 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 0f455dcb..ddac6d9e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
     - name: docker-build
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index acd4adcd..8bae9912 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7be48df7..ec2e4158 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -19,7 +19,7 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -40,7 +40,7 @@ spec:
         include:
           - '*'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -63,7 +63,7 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -84,7 +84,7 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -106,7 +106,7 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index b4a8f983..2ad0a9ad 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 28c422d0..fcf97172 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5381b1cf..2a431d27 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6704a8c1..98dd6d74 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1628,7 +1628,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 28de3bd0..9197bb5f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5f54a0d7..0500342f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 54fce7e1..0d0f1cf4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (91 lines)</summary>  

``` 
./commit-59a6d2e4/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
634c634
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
636c636
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
834c834
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
846c846
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
858c858
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:13ecd03ec9f7de811f837a5460c41105231c911a
870c870
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:13ecd03ec9f7de811f837a5460c41105231c911a
./commit-59a6d2e4/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
634c634
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
636c636
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
834c834
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
846c846
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
858c858
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:13ecd03ec9f7de811f837a5460c41105231c911a
870c870
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:13ecd03ec9f7de811f837a5460c41105231c911a
./commit-59a6d2e4/production/components/enterprise-contract/kustomize.out.yaml
608c608
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
633c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
657c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
684c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
729c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
./commit-59a6d2e4/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1637c1637
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
./commit-59a6d2e4/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1637c1637
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
./commit-59a6d2e4/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1637c1637
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
./commit-59a6d2e4/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1631c1631
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 59a6d2e4 to 9872ba8a on Wed Jun 5 13:27:14 2024 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 0f455dcb..ddac6d9e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
     - name: docker-build
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index acd4adcd..8bae9912 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7be48df7..ec2e4158 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -19,7 +19,7 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -40,7 +40,7 @@ spec:
         include:
           - '*'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -63,7 +63,7 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -84,7 +84,7 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -106,7 +106,7 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index b4a8f983..2ad0a9ad 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 28c422d0..fcf97172 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5381b1cf..2a431d27 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6704a8c1..98dd6d74 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1628,7 +1628,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 28de3bd0..9197bb5f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5f54a0d7..0500342f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 54fce7e1..0d0f1cf4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (61 lines)</summary>  

``` 
./commit-59a6d2e4/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
634c634
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
636c636
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
834c834
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
846c846
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
858c858
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:13ecd03ec9f7de811f837a5460c41105231c911a
870c870
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:13ecd03ec9f7de811f837a5460c41105231c911a
./commit-59a6d2e4/staging/components/enterprise-contract/kustomize.out.yaml
608c608
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
633c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
657c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
684c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
729c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
./commit-59a6d2e4/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1638c1638
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
./commit-59a6d2e4/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1638c1638
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
./commit-59a6d2e4/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1638c1638
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057 
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
<h3>4: Development changes from 59a6d2e4 to 9872ba8a on Wed Jun 5 13:27:14 2024 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 0f455dcb..ddac6d9e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
     - name: docker-build
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index acd4adcd..8bae9912 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:13ecd03ec9f7de811f837a5460c41105231c911a
+          value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
         - name: kind
           value: pipeline
       when:
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7be48df7..ec2e4158 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -19,7 +19,7 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -40,7 +40,7 @@ spec:
         include:
           - '*'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -63,7 +63,7 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -84,7 +84,7 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
@@ -106,7 +106,7 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index b4a8f983..2ad0a9ad 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 28c422d0..fcf97172 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5381b1cf..2a431d27 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1634,7 +1634,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6704a8c1..98dd6d74 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1628,7 +1628,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 28de3bd0..9197bb5f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5f54a0d7..0500342f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 54fce7e1..0d0f1cf4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1635,7 +1635,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (46 lines)</summary>  

``` 
./commit-59a6d2e4/development/components/build-service/development/kustomize.out.yaml
634c634
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
636c636
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
820c820
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
832c832
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a
844c844
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:13ecd03ec9f7de811f837a5460c41105231c911a
856c856
<         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:13ecd03ec9f7de811f837a5460c41105231c911a
./commit-59a6d2e4/development/components/enterprise-contract/kustomize.out.yaml
608c608
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
633c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
657c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
684c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
729c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest 
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
```
 
</details> 
<br> 


</div>
