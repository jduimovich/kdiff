# kustomize changes tracked by commits 
### This file generated at Thu Jun 20 20:11:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f9dc790e to ee6b7a79 on Thu Jun 20 18:55:17 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c4164ff9..3176c575 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index af77c344..0f443548 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f9dc790e to ee6b7a79 on Thu Jun 20 18:55:17 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c4164ff9..3176c575 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index af77c344..0f443548 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-f9dc790e/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>         image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>             image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f 
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
<h3>1: Development changes from f9dc790e to ee6b7a79 on Thu Jun 20 18:55:17 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c4164ff9..3176c575 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index af77c344..0f443548 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ca06752fdc38bbc67f105f6550d6087cd7913d9f
+- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca06752fdc38bbc67f105f6550d6087cd7913d9f
+  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-f9dc790e/development/components/integration/development/kustomize.out.yaml
1454c1454
<         image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>         image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
---
>             image: quay.io/redhat-appstudio/integration-service:ca06752fdc38bbc67f105f6550d6087cd7913d9f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 69854ed4 to f9dc790e on Thu Jun 20 18:00:37 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e680bc2e..363485fc 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=758a1d48d0020e8d9356c63924507d970411ebea
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3c44246100c3b14191d2571b49e310e0c8f35550
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 27ca5d85..cc198b92 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
+  - https://github.com/konflux-ci/release-service/config/default?ref=3c44246100c3b14191d2571b49e310e0c8f35550
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
+    newTag: 3c44246100c3b14191d2571b49e310e0c8f35550
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 69854ed4 to f9dc790e on Thu Jun 20 18:00:37 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e680bc2e..363485fc 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=758a1d48d0020e8d9356c63924507d970411ebea
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3c44246100c3b14191d2571b49e310e0c8f35550
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 27ca5d85..cc198b92 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
+  - https://github.com/konflux-ci/release-service/config/default?ref=3c44246100c3b14191d2571b49e310e0c8f35550
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
+    newTag: 3c44246100c3b14191d2571b49e310e0c8f35550
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 69854ed4 to f9dc790e on Thu Jun 20 18:00:37 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e680bc2e..363485fc 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=758a1d48d0020e8d9356c63924507d970411ebea
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3c44246100c3b14191d2571b49e310e0c8f35550
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 27ca5d85..cc198b92 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
+  - https://github.com/konflux-ci/release-service/config/default?ref=3c44246100c3b14191d2571b49e310e0c8f35550
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
+    newTag: 3c44246100c3b14191d2571b49e310e0c8f35550
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-69854ed4/development/components/release/development/kustomize.out.yaml
112c112
<                     description: ServiceAccountName is the ServiceAccount to use during
---
>                     description: ServiceAccount is the ServiceAccount to use during
355c355
<                     description: ServiceAccountName is the ServiceAccount to use during
---
>                     description: ServiceAccount is the ServiceAccount to use during
1815c1815
<         image: quay.io/konflux-ci/release-service:3c44246100c3b14191d2571b49e310e0c8f35550
---
>         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 578ed13a to 69854ed4 on Thu Jun 20 18:00:30 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjob.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
similarity index 100%
rename from components/mintmaker/base/cronjob.yaml
rename to components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
diff --git a/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml b/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml
new file mode 100644
index 00000000..4be394dc
--- /dev/null
+++ b/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml
@@ -0,0 +1,68 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: delete-dependencyupdatechecks
+  namespace: mintmaker
+spec:
+  schedule: "0 1,13 * * *"
+  successfulJobsHistoryLimit: 7
+  failedJobsHistoryLimit: 7
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: mintmaker-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+
+                  # Deletes processed DependencyUpdateCheck CRs that are older than 48 hours.
+                  NAMESPACE="mintmaker"
+                  CUTOFF_DATE=$(date -u -d '48 hours ago' +"%Y-%m-%dT%H:%M:%SZ")
+                  CRS=$(oc get DependencyUpdateCheck -n $NAMESPACE \
+                    --sort-by=.metadata.creationTimestamp \
+                    -o custom-columns=NAME:.metadata.name,CREATION_TIMESTAMP:.metadata.creationTimestamp,PROCESSED:.metadata.annotations.mintmaker\\.appstudio\\.redhat\\.com/processed \
+                    --no-headers=true)
+
+                  # Loop through each CR and check the criteria
+                  while IFS= read -r CR; do
+                    NAME=$(echo $CR | awk '{print $1}')
+                    CREATION_TIMESTAMP=$(echo $CR | awk '{print $2}')
+                    PROCESSED=$(echo $CR | awk '{print $3}')
+
+                    # Check if the creationTimestamp is older than 48 hours and processed annotation is true
+                    if [[ "$CREATION_TIMESTAMP" < "$CUTOFF_DATE" && "$PROCESSED" == "true" ]]; then
+                      oc delete DependencyUpdateCheck "$NAME" -n $NAMESPACE
+                      echo "Deleted DependencyUpdateCheck: $NAME"
+                    fi
+                  done <<< "$CRS"
+              imagePullPolicy: IfNotPresent
+              image: quay.io/openshift/origin-cli:4.14
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 100m
+                  memory: 300Mi
+                requests:
+                  cpu: 50m
+                  memory: 200Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault
diff --git a/components/mintmaker/base/cronjobs/kustomization.yaml b/components/mintmaker/base/cronjobs/kustomization.yaml
new file mode 100644
index 00000000..94fb1374
--- /dev/null
+++ b/components/mintmaker/base/cronjobs/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- create-dependency-update-check.yaml
+- delete-dependency-update-checks.yaml
+namespace: mintmaker
diff --git a/components/mintmaker/base/kustomization.yaml b/components/mintmaker/base/kustomization.yaml
index 44a3aabe..6d48fef3 100644
--- a/components/mintmaker/base/kustomization.yaml
+++ b/components/mintmaker/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
-- cronjob.yaml
 - mintmaker-team.yaml
 - renovate-config.yaml
+- cronjobs/
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (70 lines)</summary>  

``` 
./commit-578ed13a/production/components/mintmaker/production/kustomize.out.yaml
550,617d549
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: delete-dependencyupdatechecks
<   namespace: mintmaker
< spec:
<   failedJobsHistoryLimit: 7
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - |
<               set -o pipefail
< 
<               # Deletes processed DependencyUpdateCheck CRs that are older than 48 hours.
<               NAMESPACE="mintmaker"
<               CUTOFF_DATE=$(date -u -d '48 hours ago' +"%Y-%m-%dT%H:%M:%SZ")
<               CRS=$(oc get DependencyUpdateCheck -n $NAMESPACE \
<                 --sort-by=.metadata.creationTimestamp \
<                 -o custom-columns=NAME:.metadata.name,CREATION_TIMESTAMP:.metadata.creationTimestamp,PROCESSED:.metadata.annotations.mintmaker\\.appstudio\\.redhat\\.com/processed \
<                 --no-headers=true)
< 
<               # Loop through each CR and check the criteria
<               while IFS= read -r CR; do
<                 NAME=$(echo $CR | awk '{print $1}')
<                 CREATION_TIMESTAMP=$(echo $CR | awk '{print $2}')
<                 PROCESSED=$(echo $CR | awk '{print $3}')
< 
<                 # Check if the creationTimestamp is older than 48 hours and processed annotation is true
<                 if [[ "$CREATION_TIMESTAMP" < "$CUTOFF_DATE" && "$PROCESSED" == "true" ]]; then
<                   oc delete DependencyUpdateCheck "$NAME" -n $NAMESPACE
<                   echo "Deleted DependencyUpdateCheck: $NAME"
<                 fi
<               done <<< "$CRS"
<             image: quay.io/openshift/origin-cli:4.14
<             imagePullPolicy: IfNotPresent
<             name: cleanup
<             resources:
<               limits:
<                 cpu: 100m
<                 memory: 300Mi
<               requests:
<                 cpu: 50m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: mintmaker-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 0 1,13 * * *
<   successfulJobsHistoryLimit: 7 
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
<h3>3: Staging changes from 578ed13a to 69854ed4 on Thu Jun 20 18:00:30 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjob.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
similarity index 100%
rename from components/mintmaker/base/cronjob.yaml
rename to components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
diff --git a/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml b/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml
new file mode 100644
index 00000000..4be394dc
--- /dev/null
+++ b/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml
@@ -0,0 +1,68 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: delete-dependencyupdatechecks
+  namespace: mintmaker
+spec:
+  schedule: "0 1,13 * * *"
+  successfulJobsHistoryLimit: 7
+  failedJobsHistoryLimit: 7
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: mintmaker-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+
+                  # Deletes processed DependencyUpdateCheck CRs that are older than 48 hours.
+                  NAMESPACE="mintmaker"
+                  CUTOFF_DATE=$(date -u -d '48 hours ago' +"%Y-%m-%dT%H:%M:%SZ")
+                  CRS=$(oc get DependencyUpdateCheck -n $NAMESPACE \
+                    --sort-by=.metadata.creationTimestamp \
+                    -o custom-columns=NAME:.metadata.name,CREATION_TIMESTAMP:.metadata.creationTimestamp,PROCESSED:.metadata.annotations.mintmaker\\.appstudio\\.redhat\\.com/processed \
+                    --no-headers=true)
+
+                  # Loop through each CR and check the criteria
+                  while IFS= read -r CR; do
+                    NAME=$(echo $CR | awk '{print $1}')
+                    CREATION_TIMESTAMP=$(echo $CR | awk '{print $2}')
+                    PROCESSED=$(echo $CR | awk '{print $3}')
+
+                    # Check if the creationTimestamp is older than 48 hours and processed annotation is true
+                    if [[ "$CREATION_TIMESTAMP" < "$CUTOFF_DATE" && "$PROCESSED" == "true" ]]; then
+                      oc delete DependencyUpdateCheck "$NAME" -n $NAMESPACE
+                      echo "Deleted DependencyUpdateCheck: $NAME"
+                    fi
+                  done <<< "$CRS"
+              imagePullPolicy: IfNotPresent
+              image: quay.io/openshift/origin-cli:4.14
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 100m
+                  memory: 300Mi
+                requests:
+                  cpu: 50m
+                  memory: 200Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault
diff --git a/components/mintmaker/base/cronjobs/kustomization.yaml b/components/mintmaker/base/cronjobs/kustomization.yaml
new file mode 100644
index 00000000..94fb1374
--- /dev/null
+++ b/components/mintmaker/base/cronjobs/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- create-dependency-update-check.yaml
+- delete-dependency-update-checks.yaml
+namespace: mintmaker
diff --git a/components/mintmaker/base/kustomization.yaml b/components/mintmaker/base/kustomization.yaml
index 44a3aabe..6d48fef3 100644
--- a/components/mintmaker/base/kustomization.yaml
+++ b/components/mintmaker/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
-- cronjob.yaml
 - mintmaker-team.yaml
 - renovate-config.yaml
+- cronjobs/
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (78 lines)</summary>  

``` 
./commit-578ed13a/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
610,685d609
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: delete-dependencyupdatechecks
<   namespace: mintmaker
< spec:
<   failedJobsHistoryLimit: 7
<   jobTemplate:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       template:
<         metadata:
<           annotations:
<             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - |
<               set -o pipefail
< 
<               # Deletes processed DependencyUpdateCheck CRs that are older than 48 hours.
<               NAMESPACE="mintmaker"
<               CUTOFF_DATE=$(date -u -d '48 hours ago' +"%Y-%m-%dT%H:%M:%SZ")
<               CRS=$(oc get DependencyUpdateCheck -n $NAMESPACE \
<                 --sort-by=.metadata.creationTimestamp \
<                 -o custom-columns=NAME:.metadata.name,CREATION_TIMESTAMP:.metadata.creationTimestamp,PROCESSED:.metadata.annotations.mintmaker\\.appstudio\\.redhat\\.com/processed \
<                 --no-headers=true)
< 
<               # Loop through each CR and check the criteria
<               while IFS= read -r CR; do
<                 NAME=$(echo $CR | awk '{print $1}')
<                 CREATION_TIMESTAMP=$(echo $CR | awk '{print $2}')
<                 PROCESSED=$(echo $CR | awk '{print $3}')
< 
<                 # Check if the creationTimestamp is older than 48 hours and processed annotation is true
<                 if [[ "$CREATION_TIMESTAMP" < "$CUTOFF_DATE" && "$PROCESSED" == "true" ]]; then
<                   oc delete DependencyUpdateCheck "$NAME" -n $NAMESPACE
<                   echo "Deleted DependencyUpdateCheck: $NAME"
<                 fi
<               done <<< "$CRS"
<             image: quay.io/openshift/origin-cli:4.14
<             imagePullPolicy: IfNotPresent
<             name: cleanup
<             resources:
<               limits:
<                 cpu: 100m
<                 memory: 300Mi
<               requests:
<                 cpu: 50m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: mintmaker-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 0 1,13 * * *
<   successfulJobsHistoryLimit: 7
< --- 
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
<h3>3: Development changes from 578ed13a to 69854ed4 on Thu Jun 20 18:00:30 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjob.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
similarity index 100%
rename from components/mintmaker/base/cronjob.yaml
rename to components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
diff --git a/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml b/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml
new file mode 100644
index 00000000..4be394dc
--- /dev/null
+++ b/components/mintmaker/base/cronjobs/delete-dependency-update-checks.yaml
@@ -0,0 +1,68 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: delete-dependencyupdatechecks
+  namespace: mintmaker
+spec:
+  schedule: "0 1,13 * * *"
+  successfulJobsHistoryLimit: 7
+  failedJobsHistoryLimit: 7
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: mintmaker-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+
+                  # Deletes processed DependencyUpdateCheck CRs that are older than 48 hours.
+                  NAMESPACE="mintmaker"
+                  CUTOFF_DATE=$(date -u -d '48 hours ago' +"%Y-%m-%dT%H:%M:%SZ")
+                  CRS=$(oc get DependencyUpdateCheck -n $NAMESPACE \
+                    --sort-by=.metadata.creationTimestamp \
+                    -o custom-columns=NAME:.metadata.name,CREATION_TIMESTAMP:.metadata.creationTimestamp,PROCESSED:.metadata.annotations.mintmaker\\.appstudio\\.redhat\\.com/processed \
+                    --no-headers=true)
+
+                  # Loop through each CR and check the criteria
+                  while IFS= read -r CR; do
+                    NAME=$(echo $CR | awk '{print $1}')
+                    CREATION_TIMESTAMP=$(echo $CR | awk '{print $2}')
+                    PROCESSED=$(echo $CR | awk '{print $3}')
+
+                    # Check if the creationTimestamp is older than 48 hours and processed annotation is true
+                    if [[ "$CREATION_TIMESTAMP" < "$CUTOFF_DATE" && "$PROCESSED" == "true" ]]; then
+                      oc delete DependencyUpdateCheck "$NAME" -n $NAMESPACE
+                      echo "Deleted DependencyUpdateCheck: $NAME"
+                    fi
+                  done <<< "$CRS"
+              imagePullPolicy: IfNotPresent
+              image: quay.io/openshift/origin-cli:4.14
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 100m
+                  memory: 300Mi
+                requests:
+                  cpu: 50m
+                  memory: 200Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault
diff --git a/components/mintmaker/base/cronjobs/kustomization.yaml b/components/mintmaker/base/cronjobs/kustomization.yaml
new file mode 100644
index 00000000..94fb1374
--- /dev/null
+++ b/components/mintmaker/base/cronjobs/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- create-dependency-update-check.yaml
+- delete-dependency-update-checks.yaml
+namespace: mintmaker
diff --git a/components/mintmaker/base/kustomization.yaml b/components/mintmaker/base/kustomization.yaml
index 44a3aabe..6d48fef3 100644
--- a/components/mintmaker/base/kustomization.yaml
+++ b/components/mintmaker/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
-- cronjob.yaml
 - mintmaker-team.yaml
 - renovate-config.yaml
+- cronjobs/
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (78 lines)</summary>  

``` 
./commit-578ed13a/development/components/mintmaker/development/kustomize.out.yaml
611,686d610
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: delete-dependencyupdatechecks
<   namespace: mintmaker
< spec:
<   failedJobsHistoryLimit: 7
<   jobTemplate:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       template:
<         metadata:
<           annotations:
<             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - |
<               set -o pipefail
< 
<               # Deletes processed DependencyUpdateCheck CRs that are older than 48 hours.
<               NAMESPACE="mintmaker"
<               CUTOFF_DATE=$(date -u -d '48 hours ago' +"%Y-%m-%dT%H:%M:%SZ")
<               CRS=$(oc get DependencyUpdateCheck -n $NAMESPACE \
<                 --sort-by=.metadata.creationTimestamp \
<                 -o custom-columns=NAME:.metadata.name,CREATION_TIMESTAMP:.metadata.creationTimestamp,PROCESSED:.metadata.annotations.mintmaker\\.appstudio\\.redhat\\.com/processed \
<                 --no-headers=true)
< 
<               # Loop through each CR and check the criteria
<               while IFS= read -r CR; do
<                 NAME=$(echo $CR | awk '{print $1}')
<                 CREATION_TIMESTAMP=$(echo $CR | awk '{print $2}')
<                 PROCESSED=$(echo $CR | awk '{print $3}')
< 
<                 # Check if the creationTimestamp is older than 48 hours and processed annotation is true
<                 if [[ "$CREATION_TIMESTAMP" < "$CUTOFF_DATE" && "$PROCESSED" == "true" ]]; then
<                   oc delete DependencyUpdateCheck "$NAME" -n $NAMESPACE
<                   echo "Deleted DependencyUpdateCheck: $NAME"
<                 fi
<               done <<< "$CRS"
<             image: quay.io/openshift/origin-cli:4.14
<             imagePullPolicy: IfNotPresent
<             name: cleanup
<             resources:
<               limits:
<                 cpu: 100m
<                 memory: 300Mi
<               requests:
<                 cpu: 50m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: mintmaker-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 0 1,13 * * *
<   successfulJobsHistoryLimit: 7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 000cae50 to 578ed13a on Thu Jun 20 16:54:15 2024 </h3>  
 
<details> 
<summary>Git Diff (56 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 086b1209..8e3af301 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -26,3 +26,10 @@ metadata:
   name: e2e-tests
 spec:
   url: "https://github.com/konflux-ci/e2e-tests"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: quality-dashboard
+spec:
+  url: "https://github.com/konflux-ci/quality-dashboard"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index c224bede..be2d9806 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -75,10 +75,3 @@ metadata:
   name: infra-deployments
 spec:
   url: "https://github.com/redhat-appstudio/infra-deployments"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
-metadata:
-  name: quality-dashboard
-spec:
-  url: "https://github.com/redhat-appstudio/quality-dashboard"
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
index 91d86bc3..e814f952 100644
--- a/docs/misc/quality-dashboard.md
+++ b/docs/misc/quality-dashboard.md
@@ -3,7 +3,7 @@ title: Quality Dashboard
 ---
 
 The purpose of the Quality Dashboard is to provide information that indicates the quality
-of the different Konflux services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
+of the different Konflux services. More details can be found here https://github.com/konflux-ci/quality-dashboard
 
 The manifests can be found [here](../../components/quality-dashboard/)
 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index d8ab635d..b2f3d464 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -135,7 +135,7 @@ export QD_JIRA_TOKEN=
 export QD_SLACK_TOKEN=
 ## Dex issuer specific secrets
 export QD_GITHUB_ORG=
-### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
+### Client ID/Secret for OAuth app - see https://github.com/konflux-ci/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
 export QD_OAUTH_CLIENT_ID=
 export QD_OAUTH_CLIENT_SECRET=
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-000cae50/production/components/konflux-ci/production/kustomize.out.yaml
307,315d306
<   name: quality-dashboard
< spec:
<   url: https://github.com/konflux-ci/quality-dashboard
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-000cae50/production/components/tekton-ci/production/kustomize.out.yaml
376a377,385
>   name: quality-dashboard
> spec:
>   url: https://github.com/redhat-appstudio/quality-dashboard
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 000cae50 to 578ed13a on Thu Jun 20 16:54:15 2024 </h3>  
 
<details> 
<summary>Git Diff (56 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 086b1209..8e3af301 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -26,3 +26,10 @@ metadata:
   name: e2e-tests
 spec:
   url: "https://github.com/konflux-ci/e2e-tests"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: quality-dashboard
+spec:
+  url: "https://github.com/konflux-ci/quality-dashboard"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index c224bede..be2d9806 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -75,10 +75,3 @@ metadata:
   name: infra-deployments
 spec:
   url: "https://github.com/redhat-appstudio/infra-deployments"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
-metadata:
-  name: quality-dashboard
-spec:
-  url: "https://github.com/redhat-appstudio/quality-dashboard"
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
index 91d86bc3..e814f952 100644
--- a/docs/misc/quality-dashboard.md
+++ b/docs/misc/quality-dashboard.md
@@ -3,7 +3,7 @@ title: Quality Dashboard
 ---
 
 The purpose of the Quality Dashboard is to provide information that indicates the quality
-of the different Konflux services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
+of the different Konflux services. More details can be found here https://github.com/konflux-ci/quality-dashboard
 
 The manifests can be found [here](../../components/quality-dashboard/)
 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index d8ab635d..b2f3d464 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -135,7 +135,7 @@ export QD_JIRA_TOKEN=
 export QD_SLACK_TOKEN=
 ## Dex issuer specific secrets
 export QD_GITHUB_ORG=
-### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
+### Client ID/Secret for OAuth app - see https://github.com/konflux-ci/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
 export QD_OAUTH_CLIENT_ID=
 export QD_OAUTH_CLIENT_SECRET=
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-000cae50/staging/components/konflux-ci/staging/kustomize.out.yaml
242,250d241
<   name: quality-dashboard
< spec:
<   url: https://github.com/konflux-ci/quality-dashboard
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-000cae50/staging/components/tekton-ci/staging/kustomize.out.yaml
304a305,313
>   name: quality-dashboard
> spec:
>   url: https://github.com/redhat-appstudio/quality-dashboard
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
<h3>4: Development changes from 000cae50 to 578ed13a on Thu Jun 20 16:54:15 2024 </h3>  
 
<details> 
<summary>Git Diff (56 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 086b1209..8e3af301 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -26,3 +26,10 @@ metadata:
   name: e2e-tests
 spec:
   url: "https://github.com/konflux-ci/e2e-tests"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: quality-dashboard
+spec:
+  url: "https://github.com/konflux-ci/quality-dashboard"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index c224bede..be2d9806 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -75,10 +75,3 @@ metadata:
   name: infra-deployments
 spec:
   url: "https://github.com/redhat-appstudio/infra-deployments"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
-metadata:
-  name: quality-dashboard
-spec:
-  url: "https://github.com/redhat-appstudio/quality-dashboard"
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
index 91d86bc3..e814f952 100644
--- a/docs/misc/quality-dashboard.md
+++ b/docs/misc/quality-dashboard.md
@@ -3,7 +3,7 @@ title: Quality Dashboard
 ---
 
 The purpose of the Quality Dashboard is to provide information that indicates the quality
-of the different Konflux services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
+of the different Konflux services. More details can be found here https://github.com/konflux-ci/quality-dashboard
 
 The manifests can be found [here](../../components/quality-dashboard/)
 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index d8ab635d..b2f3d464 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -135,7 +135,7 @@ export QD_JIRA_TOKEN=
 export QD_SLACK_TOKEN=
 ## Dex issuer specific secrets
 export QD_GITHUB_ORG=
-### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
+### Client ID/Secret for OAuth app - see https://github.com/konflux-ci/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
 export QD_OAUTH_CLIENT_ID=
 export QD_OAUTH_CLIENT_SECRET=
  
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
```
 
</details> 
<br> 


</div>
