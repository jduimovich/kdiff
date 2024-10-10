# kustomize changes tracked by commits 
### This file generated at Thu Oct 10 12:08:57 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from acddef05 to 7667c968 on Thu Oct 10 11:38:40 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 58e33796..114bc220 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-acddef05/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0
---
>         image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0
---
>             image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
./commit-acddef05/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0
---
>         image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0
---
>             image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from acddef05 to 7667c968 on Thu Oct 10 11:38:40 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 58e33796..114bc220 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from acddef05 to 7667c968 on Thu Oct 10 11:38:40 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 58e33796..114bc220 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 20b4b8b1 to acddef05 on Thu Oct 10 10:34:02 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 85227e68..83da5c1e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/default?ref=7328a24b292980ee906e58fc1b7239751a3c5793
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7328a24b292980ee906e58fc1b7239751a3c5793
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 370d046093ce66e174d63a563373fcebb83713f9
+  newTag: 7328a24b292980ee906e58fc1b7239751a3c5793
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0369bb0a..8f841752 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/default?ref=7328a24b292980ee906e58fc1b7239751a3c5793
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7328a24b292980ee906e58fc1b7239751a3c5793
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 370d046093ce66e174d63a563373fcebb83713f9
+  newTag: 7328a24b292980ee906e58fc1b7239751a3c5793
 
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
<h3>2: Staging changes from 20b4b8b1 to acddef05 on Thu Oct 10 10:34:02 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 85227e68..83da5c1e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/default?ref=7328a24b292980ee906e58fc1b7239751a3c5793
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7328a24b292980ee906e58fc1b7239751a3c5793
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 370d046093ce66e174d63a563373fcebb83713f9
+  newTag: 7328a24b292980ee906e58fc1b7239751a3c5793
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0369bb0a..8f841752 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/default?ref=7328a24b292980ee906e58fc1b7239751a3c5793
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7328a24b292980ee906e58fc1b7239751a3c5793
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 370d046093ce66e174d63a563373fcebb83713f9
+  newTag: 7328a24b292980ee906e58fc1b7239751a3c5793
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-20b4b8b1/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:7328a24b292980ee906e58fc1b7239751a3c5793
---
>         image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:7328a24b292980ee906e58fc1b7239751a3c5793
---
>             image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9 
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
<h3>2: Development changes from 20b4b8b1 to acddef05 on Thu Oct 10 10:34:02 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 85227e68..83da5c1e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/default?ref=7328a24b292980ee906e58fc1b7239751a3c5793
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7328a24b292980ee906e58fc1b7239751a3c5793
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 370d046093ce66e174d63a563373fcebb83713f9
+  newTag: 7328a24b292980ee906e58fc1b7239751a3c5793
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0369bb0a..8f841752 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/default?ref=7328a24b292980ee906e58fc1b7239751a3c5793
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7328a24b292980ee906e58fc1b7239751a3c5793
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 370d046093ce66e174d63a563373fcebb83713f9
+  newTag: 7328a24b292980ee906e58fc1b7239751a3c5793
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-20b4b8b1/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:7328a24b292980ee906e58fc1b7239751a3c5793
---
>         image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:7328a24b292980ee906e58fc1b7239751a3c5793
---
>             image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9 
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
<h3>3: Production changes from 553efcdd to 20b4b8b1 on Thu Oct 10 09:52:46 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/insights-secret-store.yaml b/components/cluster-secret-store/base/insights-secret-store.yaml
new file mode 100644
index 00000000..d79b7858
--- /dev/null
+++ b/components/cluster-secret-store/base/insights-secret-store.yaml
@@ -0,0 +1,30 @@
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ClusterSecretStore
+metadata:
+  name: insights-appsre-vault
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  provider:
+    vault:
+      server: "https://vault.ci.ext.devshift.net"
+      path: insights
+      version: v1
+      auth:
+        # VaultAppRole authenticates with Vault using the
+        # App Role auth mechanism
+        # https://www.vaultproject.io/docs/auth/approle
+        appRole:
+          # Path where the App Role authentication backend is mounted
+          path: approle
+          # RoleID configured in the App Role authentication backend
+          roleId: 
+          # Reference to a key in a K8 Secret that contains the App Role SecretId
+          secretRef:
+            name: insights-appsre-vault
+            key: secret-id
+            namespace: appsre-vault
+  conditions:
+    - namespaces:
+        - insights-management
diff --git a/components/cluster-secret-store/base/kustomization.yaml b/components/cluster-secret-store/base/kustomization.yaml
index e00e631b..cf4b10d4 100644
--- a/components/cluster-secret-store/base/kustomization.yaml
+++ b/components/cluster-secret-store/base/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - appsre-stonesoup-vault-secret-store.yaml
   - appsre-vault-secret-store.yml
+  - insights-secret-store.yaml
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
new file mode 100644
index 00000000..d28dca19
--- /dev/null
+++ b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/provider/vault/auth/appRole/roleId
+  value: 573e6024-0c58-7e95-365b-d2ad6127e838
diff --git a/components/cluster-secret-store/production/kustomization.yaml b/components/cluster-secret-store/production/kustomization.yaml
index b5337323..aeeca68a 100644
--- a/components/cluster-secret-store/production/kustomization.yaml
+++ b/components/cluster-secret-store/production/kustomization.yaml
@@ -15,3 +15,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
new file mode 100644
index 00000000..d28dca19
--- /dev/null
+++ b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/provider/vault/auth/appRole/roleId
+  value: 573e6024-0c58-7e95-365b-d2ad6127e838
diff --git a/components/cluster-secret-store/staging/kustomization.yaml b/components/cluster-secret-store/staging/kustomization.yaml
index 1498797b..52edd004 100644
--- a/components/cluster-secret-store/staging/kustomization.yaml
+++ b/components/cluster-secret-store/staging/kustomization.yaml
@@ -9,3 +9,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-553efcdd/production/components/cluster-secret-store/production/kustomize.out.yaml
83,106d82
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ClusterSecretStore
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: insights-appsre-vault
< spec:
<   conditions:
<   - namespaces:
<     - insights-management
<   provider:
<     vault:
<       auth:
<         appRole:
<           path: approle
<           roleId: 573e6024-0c58-7e95-365b-d2ad6127e838
<           secretRef:
<             key: secret-id
<             name: insights-appsre-vault
<             namespace: appsre-vault
<       path: insights
<       server: https://vault.ci.ext.devshift.net
<       version: v1 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 553efcdd to 20b4b8b1 on Thu Oct 10 09:52:46 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/insights-secret-store.yaml b/components/cluster-secret-store/base/insights-secret-store.yaml
new file mode 100644
index 00000000..d79b7858
--- /dev/null
+++ b/components/cluster-secret-store/base/insights-secret-store.yaml
@@ -0,0 +1,30 @@
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ClusterSecretStore
+metadata:
+  name: insights-appsre-vault
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  provider:
+    vault:
+      server: "https://vault.ci.ext.devshift.net"
+      path: insights
+      version: v1
+      auth:
+        # VaultAppRole authenticates with Vault using the
+        # App Role auth mechanism
+        # https://www.vaultproject.io/docs/auth/approle
+        appRole:
+          # Path where the App Role authentication backend is mounted
+          path: approle
+          # RoleID configured in the App Role authentication backend
+          roleId: 
+          # Reference to a key in a K8 Secret that contains the App Role SecretId
+          secretRef:
+            name: insights-appsre-vault
+            key: secret-id
+            namespace: appsre-vault
+  conditions:
+    - namespaces:
+        - insights-management
diff --git a/components/cluster-secret-store/base/kustomization.yaml b/components/cluster-secret-store/base/kustomization.yaml
index e00e631b..cf4b10d4 100644
--- a/components/cluster-secret-store/base/kustomization.yaml
+++ b/components/cluster-secret-store/base/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - appsre-stonesoup-vault-secret-store.yaml
   - appsre-vault-secret-store.yml
+  - insights-secret-store.yaml
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
new file mode 100644
index 00000000..d28dca19
--- /dev/null
+++ b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/provider/vault/auth/appRole/roleId
+  value: 573e6024-0c58-7e95-365b-d2ad6127e838
diff --git a/components/cluster-secret-store/production/kustomization.yaml b/components/cluster-secret-store/production/kustomization.yaml
index b5337323..aeeca68a 100644
--- a/components/cluster-secret-store/production/kustomization.yaml
+++ b/components/cluster-secret-store/production/kustomization.yaml
@@ -15,3 +15,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
new file mode 100644
index 00000000..d28dca19
--- /dev/null
+++ b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/provider/vault/auth/appRole/roleId
+  value: 573e6024-0c58-7e95-365b-d2ad6127e838
diff --git a/components/cluster-secret-store/staging/kustomization.yaml b/components/cluster-secret-store/staging/kustomization.yaml
index 1498797b..52edd004 100644
--- a/components/cluster-secret-store/staging/kustomization.yaml
+++ b/components/cluster-secret-store/staging/kustomization.yaml
@@ -9,3 +9,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-553efcdd/staging/components/cluster-secret-store/staging/kustomize.out.yaml
84,107d83
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ClusterSecretStore
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: insights-appsre-vault
< spec:
<   conditions:
<   - namespaces:
<     - insights-management
<   provider:
<     vault:
<       auth:
<         appRole:
<           path: approle
<           roleId: 573e6024-0c58-7e95-365b-d2ad6127e838
<           secretRef:
<             key: secret-id
<             name: insights-appsre-vault
<             namespace: appsre-vault
<       path: insights
<       server: https://vault.ci.ext.devshift.net
<       version: v1 
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
<h3>3: Development changes from 553efcdd to 20b4b8b1 on Thu Oct 10 09:52:46 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/insights-secret-store.yaml b/components/cluster-secret-store/base/insights-secret-store.yaml
new file mode 100644
index 00000000..d79b7858
--- /dev/null
+++ b/components/cluster-secret-store/base/insights-secret-store.yaml
@@ -0,0 +1,30 @@
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ClusterSecretStore
+metadata:
+  name: insights-appsre-vault
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  provider:
+    vault:
+      server: "https://vault.ci.ext.devshift.net"
+      path: insights
+      version: v1
+      auth:
+        # VaultAppRole authenticates with Vault using the
+        # App Role auth mechanism
+        # https://www.vaultproject.io/docs/auth/approle
+        appRole:
+          # Path where the App Role authentication backend is mounted
+          path: approle
+          # RoleID configured in the App Role authentication backend
+          roleId: 
+          # Reference to a key in a K8 Secret that contains the App Role SecretId
+          secretRef:
+            name: insights-appsre-vault
+            key: secret-id
+            namespace: appsre-vault
+  conditions:
+    - namespaces:
+        - insights-management
diff --git a/components/cluster-secret-store/base/kustomization.yaml b/components/cluster-secret-store/base/kustomization.yaml
index e00e631b..cf4b10d4 100644
--- a/components/cluster-secret-store/base/kustomization.yaml
+++ b/components/cluster-secret-store/base/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - appsre-stonesoup-vault-secret-store.yaml
   - appsre-vault-secret-store.yml
+  - insights-secret-store.yaml
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
new file mode 100644
index 00000000..d28dca19
--- /dev/null
+++ b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/provider/vault/auth/appRole/roleId
+  value: 573e6024-0c58-7e95-365b-d2ad6127e838
diff --git a/components/cluster-secret-store/production/kustomization.yaml b/components/cluster-secret-store/production/kustomization.yaml
index b5337323..aeeca68a 100644
--- a/components/cluster-secret-store/production/kustomization.yaml
+++ b/components/cluster-secret-store/production/kustomization.yaml
@@ -15,3 +15,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
new file mode 100644
index 00000000..d28dca19
--- /dev/null
+++ b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/provider/vault/auth/appRole/roleId
+  value: 573e6024-0c58-7e95-365b-d2ad6127e838
diff --git a/components/cluster-secret-store/staging/kustomization.yaml b/components/cluster-secret-store/staging/kustomization.yaml
index 1498797b..52edd004 100644
--- a/components/cluster-secret-store/staging/kustomization.yaml
+++ b/components/cluster-secret-store/staging/kustomization.yaml
@@ -9,3 +9,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1 
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
<h3>4: Production changes from 603b3615 to 553efcdd on Thu Oct 10 05:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a0b3148b..85227e68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
+  newTag: 370d046093ce66e174d63a563373fcebb83713f9
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index efd1428a..0369bb0a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
+  newTag: 370d046093ce66e174d63a563373fcebb83713f9
 
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
<h3>4: Staging changes from 603b3615 to 553efcdd on Thu Oct 10 05:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a0b3148b..85227e68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
+  newTag: 370d046093ce66e174d63a563373fcebb83713f9
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index efd1428a..0369bb0a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
+  newTag: 370d046093ce66e174d63a563373fcebb83713f9
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-603b3615/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9
---
>         image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9
---
>             image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392 
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
<h3>4: Development changes from 603b3615 to 553efcdd on Thu Oct 10 05:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a0b3148b..85227e68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
+  newTag: 370d046093ce66e174d63a563373fcebb83713f9
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index efd1428a..0369bb0a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/default?ref=370d046093ce66e174d63a563373fcebb83713f9
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=370d046093ce66e174d63a563373fcebb83713f9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
+  newTag: 370d046093ce66e174d63a563373fcebb83713f9
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-603b3615/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9
---
>         image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:370d046093ce66e174d63a563373fcebb83713f9
---
>             image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392 
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
