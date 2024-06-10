# kustomize changes tracked by commits 
### This file generated at Mon Jun 10 16:08:52 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5be80df0 to eebe5484 on Mon Jun 10 14:50:19 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 6fa9abd0..ee111d41 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-5be80df0/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
./commit-5be80df0/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 5be80df0 to eebe5484 on Mon Jun 10 14:50:19 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 6fa9abd0..ee111d41 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
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
<h3>1: Development changes from 5be80df0 to eebe5484 on Mon Jun 10 14:50:19 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 6fa9abd0..ee111d41 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from d9264e95 to 5be80df0 on Mon Jun 10 13:57:34 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 4f222296..0e8aa0ad 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
 
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
<h3>2: Staging changes from d9264e95 to 5be80df0 on Mon Jun 10 13:57:34 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 4f222296..0e8aa0ad 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
 
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
<h3>2: Development changes from d9264e95 to 5be80df0 on Mon Jun 10 13:57:34 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 4f222296..0e8aa0ad 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d9264e95/development/components/release/development/kustomize.out.yaml
1772c1772
<         image: quay.io/redhat-appstudio/release-service:758a1d48d0020e8d9356c63924507d970411ebea
---
>         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62 
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
<h3>3: Production changes from d5c943a9 to d9264e95 on Mon Jun 10 12:04:45 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index b5af12d2..92356b87 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
+- https://github.com/konflux-ci/project-controller/config/default?ref=e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  newTag: e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 7195885a..344df687 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  - https://github.com/konflux-ci/project-controller/config/default?ref=e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  newTag: e4380a1afc624ed66d180cb897d4b11cd32b2317
 
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
<h3>3: Staging changes from d5c943a9 to d9264e95 on Mon Jun 10 12:04:45 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index b5af12d2..92356b87 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
+- https://github.com/konflux-ci/project-controller/config/default?ref=e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  newTag: e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 7195885a..344df687 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  - https://github.com/konflux-ci/project-controller/config/default?ref=e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  newTag: e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d5c943a9/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:e4380a1afc624ed66d180cb897d4b11cd32b2317
---
>         image: quay.io/redhat-appstudio/project-controller:7e89e50c4c27d8048221e9ac1cb42c82281384cf 
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
<h3>3: Development changes from d5c943a9 to d9264e95 on Mon Jun 10 12:04:45 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index b5af12d2..92356b87 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
+- https://github.com/konflux-ci/project-controller/config/default?ref=e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  newTag: e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 7195885a..344df687 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  - https://github.com/konflux-ci/project-controller/config/default?ref=e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
+  newTag: e4380a1afc624ed66d180cb897d4b11cd32b2317
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d5c943a9/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:e4380a1afc624ed66d180cb897d4b11cd32b2317
---
>         image: quay.io/redhat-appstudio/project-controller:7e89e50c4c27d8048221e9ac1cb42c82281384cf 
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
<h3>4: Production changes from a552003d to d5c943a9 on Mon Jun 10 09:23:41 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 603fc299..d2db4940 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e3d7d54d..2356dd62 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a552003d to d5c943a9 on Mon Jun 10 09:23:41 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 603fc299..d2db4940 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e3d7d54d..2356dd62 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (179 lines)</summary>  

``` 
./commit-a552003d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
9a10,170
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: buildpipelineselectors.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: BuildPipelineSelector
>     listKind: BuildPipelineSelectorList
>     plural: buildpipelineselectors
>     singular: buildpipelineselector
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: BuildPipelineSelector is the Schema for the BuildPipelineSelectors
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: BuildPipelineSelectorSpec defines the desired state of BuildPipelineSelector
>             properties:
>               selectors:
>                 description: Defines chain of pipeline selectors. The first matching
>                   item is used.
>                 items:
>                   description: PipelineSelector defines allowed build pipeline and
>                     conditions when it should be used.
>                   properties:
>                     name:
>                       description: Name of the selector item. Optional.
>                       type: string
>                     pipelineParams:
>                       description: Extra arguments to add to the specified pipeline
>                         run.
>                       items:
>                         description: PipelineParam is a type to describe pipeline
>                           parameters. tektonapi.Param type is not used due to validation
>                           issues.
>                         properties:
>                           name:
>                             type: string
>                           value:
>                             type: string
>                         required:
>                         - name
>                         - value
>                         type: object
>                       type: array
>                       x-kubernetes-list-type: atomic
>                     pipelineRef:
>                       description: Build Pipeline to use if the selector conditions
>                         are met.
>                       properties:
>                         apiVersion:
>                           description: API version of the referent
>                           type: string
>                         name:
>                           description: 'Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names'
>                           type: string
>                         params:
>                           description: Params contains the parameters used to identify
>                             the referenced Tekton resource. Example entries might
>                             include "repo" or "path" but the set of params ultimately
>                             depends on the chosen resolver.
>                           items:
>                             description: Param declares an ParamValues to use for
>                               the parameter called name.
>                             properties:
>                               name:
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-type: atomic
>                         resolver:
>                           description: Resolver is the name of the resolver that should
>                             perform resolution of the referenced Tekton resource,
>                             such as "git".
>                           type: string
>                       type: object
>                     when:
>                       description: Defines the selector conditions when given build
>                         pipeline should be used. All conditions are connected via
>                         AND, whereas cases within any condition connected via OR.
>                         If the section is omitted, then the condition is considered
>                         true (usually used for fallback condition).
>                       properties:
>                         annotations:
>                           additionalProperties:
>                             type: string
>                           description: Defines annotations to match. The values to
>                             compare with are taken from component.metadata.annotations
>                             field.
>                           type: object
>                         componentName:
>                           description: Defines list of allowed component names to
>                             match, e.g. 'my-component'. The value to compare with
>                             is taken from component.metadata.name field.
>                           type: string
>                         dockerfile:
>                           description: Defines if a Dockerfile should be present in
>                             the component. Note, unset (nil) value is not the same
>                             as false (unset means skip the dockerfile check). The
>                             value to compare with is taken from devfile components
>                             of image type.
>                           type: boolean
>                         labels:
>                           additionalProperties:
>                             type: string
>                           description: Defines labels to match. The values to compare
>                             with are taken from component.metadata.labels field.
>                           type: object
>                         language:
>                           description: Defines component language to match, e.g. 'java'.
>                             The value to compare with is taken from devfile.metadata.language
>                             field.
>                           type: string
>                         projectType:
>                           description: Defines type of project of the component to
>                             match, e.g. 'quarkus'. The value to compare with is taken
>                             from devfile.metadata.projectType field.
>                           type: string
>                       type: object
>                   required:
>                   - pipelineRef
>                   type: object
>                 type: array
>             required:
>             - selectors
>             type: object
>         type: object
>     served: true
>     storage: true
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
192a354,364
>   - buildpipelineselectors
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
571c743
<         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa
---
>         image: quay.io/konflux-ci/build-service:632b0096f304baf3949cf58f066814d0dc19ae6c 
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
<h3>4: Development changes from a552003d to d5c943a9 on Mon Jun 10 09:23:41 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 603fc299..d2db4940 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e3d7d54d..2356dd62 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (179 lines)</summary>  

``` 
./commit-a552003d/development/components/build-service/development/kustomize.out.yaml
9a10,170
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: buildpipelineselectors.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: BuildPipelineSelector
>     listKind: BuildPipelineSelectorList
>     plural: buildpipelineselectors
>     singular: buildpipelineselector
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: BuildPipelineSelector is the Schema for the BuildPipelineSelectors
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: BuildPipelineSelectorSpec defines the desired state of BuildPipelineSelector
>             properties:
>               selectors:
>                 description: Defines chain of pipeline selectors. The first matching
>                   item is used.
>                 items:
>                   description: PipelineSelector defines allowed build pipeline and
>                     conditions when it should be used.
>                   properties:
>                     name:
>                       description: Name of the selector item. Optional.
>                       type: string
>                     pipelineParams:
>                       description: Extra arguments to add to the specified pipeline
>                         run.
>                       items:
>                         description: PipelineParam is a type to describe pipeline
>                           parameters. tektonapi.Param type is not used due to validation
>                           issues.
>                         properties:
>                           name:
>                             type: string
>                           value:
>                             type: string
>                         required:
>                         - name
>                         - value
>                         type: object
>                       type: array
>                       x-kubernetes-list-type: atomic
>                     pipelineRef:
>                       description: Build Pipeline to use if the selector conditions
>                         are met.
>                       properties:
>                         apiVersion:
>                           description: API version of the referent
>                           type: string
>                         name:
>                           description: 'Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names'
>                           type: string
>                         params:
>                           description: Params contains the parameters used to identify
>                             the referenced Tekton resource. Example entries might
>                             include "repo" or "path" but the set of params ultimately
>                             depends on the chosen resolver.
>                           items:
>                             description: Param declares an ParamValues to use for
>                               the parameter called name.
>                             properties:
>                               name:
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-type: atomic
>                         resolver:
>                           description: Resolver is the name of the resolver that should
>                             perform resolution of the referenced Tekton resource,
>                             such as "git".
>                           type: string
>                       type: object
>                     when:
>                       description: Defines the selector conditions when given build
>                         pipeline should be used. All conditions are connected via
>                         AND, whereas cases within any condition connected via OR.
>                         If the section is omitted, then the condition is considered
>                         true (usually used for fallback condition).
>                       properties:
>                         annotations:
>                           additionalProperties:
>                             type: string
>                           description: Defines annotations to match. The values to
>                             compare with are taken from component.metadata.annotations
>                             field.
>                           type: object
>                         componentName:
>                           description: Defines list of allowed component names to
>                             match, e.g. 'my-component'. The value to compare with
>                             is taken from component.metadata.name field.
>                           type: string
>                         dockerfile:
>                           description: Defines if a Dockerfile should be present in
>                             the component. Note, unset (nil) value is not the same
>                             as false (unset means skip the dockerfile check). The
>                             value to compare with is taken from devfile components
>                             of image type.
>                           type: boolean
>                         labels:
>                           additionalProperties:
>                             type: string
>                           description: Defines labels to match. The values to compare
>                             with are taken from component.metadata.labels field.
>                           type: object
>                         language:
>                           description: Defines component language to match, e.g. 'java'.
>                             The value to compare with is taken from devfile.metadata.language
>                             field.
>                           type: string
>                         projectType:
>                           description: Defines type of project of the component to
>                             match, e.g. 'quarkus'. The value to compare with is taken
>                             from devfile.metadata.projectType field.
>                           type: string
>                       type: object
>                   required:
>                   - pipelineRef
>                   type: object
>                 type: array
>             required:
>             - selectors
>             type: object
>         type: object
>     served: true
>     storage: true
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
192a354,364
>   - buildpipelineselectors
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
566c738
<         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa
---
>         image: quay.io/konflux-ci/build-service:632b0096f304baf3949cf58f066814d0dc19ae6c 
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
