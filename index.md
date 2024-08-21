# kustomize changes tracked by commits 
### This file generated at Wed Aug 21 20:07:51 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-a2c134e6/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:6f08f67
./commit-a2c134e6/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:6f08f67 
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
<h3>1: Staging changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-a2c134e6/staging/components/ui/staging/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:94f3475
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:3fcdfde 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a2c134e6/development/components/ui/development/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:e3decf1 
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
<h3>2: Production changes from a99fdeb5 to a2c134e6 on Wed Aug 21 18:01:24 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ecdde719..48bba71a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -13,3 +13,5 @@ data:
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
     - name: docker-build-oci-ta
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
+    - name: docker-build-multi-platform-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-a99fdeb5/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759
./commit-a99fdeb5/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
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
<h3>2: Staging changes from a99fdeb5 to a2c134e6 on Wed Aug 21 18:01:24 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ecdde719..48bba71a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -13,3 +13,5 @@ data:
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
     - name: docker-build-oci-ta
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
+    - name: docker-build-multi-platform-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-a99fdeb5/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a99fdeb5 to a2c134e6 on Wed Aug 21 18:01:24 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ecdde719..48bba71a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -13,3 +13,5 @@ data:
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
     - name: docker-build-oci-ta
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
+    - name: docker-build-multi-platform-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-a99fdeb5/development/components/build-service/development/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
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
<h3>3: Production changes from 6bf8413e to a99fdeb5 on Wed Aug 21 16:22:24 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 8ae7e5d3..d2100ea3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 1024Mi
+            memory: 2048Mi
           requests:
             cpu: 100m
-            memory: 20Mi
+            memory: 1024Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6bf8413e/production/components/release/production/kustomize.out.yaml
1836c1836
<             memory: 2048Mi
---
>             memory: 1024Mi
1839c1839
<             memory: 1024Mi
---
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
<h3>3: Staging changes from 6bf8413e to a99fdeb5 on Wed Aug 21 16:22:24 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 8ae7e5d3..d2100ea3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 1024Mi
+            memory: 2048Mi
           requests:
             cpu: 100m
-            memory: 20Mi
+            memory: 1024Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6bf8413e/staging/components/release/staging/kustomize.out.yaml
1882c1882
<             memory: 2048Mi
---
>             memory: 1024Mi
1885c1885
<             memory: 1024Mi
---
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 6bf8413e to a99fdeb5 on Wed Aug 21 16:22:24 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 8ae7e5d3..d2100ea3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 1024Mi
+            memory: 2048Mi
           requests:
             cpu: 100m
-            memory: 20Mi
+            memory: 1024Mi 
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
<h3>4: Production changes from d53fccf3 to 6bf8413e on Wed Aug 21 13:31:55 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 8fa0e5dc..d1b25de1 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -80,7 +80,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/public-prod-ibm-api-key
+        key: staging/build/multi-platform-controller/public-stage-ibm-api-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -103,7 +103,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+        key: staging/build/multi-platform-controller/ibm-stage-s390x-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore 
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
<h3>4: Staging changes from d53fccf3 to 6bf8413e on Wed Aug 21 13:31:55 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 8fa0e5dc..d1b25de1 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -80,7 +80,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/public-prod-ibm-api-key
+        key: staging/build/multi-platform-controller/public-stage-ibm-api-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -103,7 +103,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+        key: staging/build/multi-platform-controller/ibm-stage-s390x-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-d53fccf3/staging/components/multi-platform-controller/staging/kustomize.out.yaml
670c670
<       key: staging/build/multi-platform-controller/ibm-stage-s390x-ssh-key
---
>       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
693c693
<       key: staging/build/multi-platform-controller/public-stage-ibm-api-key
---
>       key: production/build/multi-platform-controller/public-prod-ibm-api-key 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from d53fccf3 to 6bf8413e on Wed Aug 21 13:31:55 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 8fa0e5dc..d1b25de1 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -80,7 +80,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/public-prod-ibm-api-key
+        key: staging/build/multi-platform-controller/public-stage-ibm-api-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -103,7 +103,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+        key: staging/build/multi-platform-controller/ibm-stage-s390x-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore 
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
