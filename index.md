# kustomize changes tracked by commits 
### This file generated at Fri Mar  1 00:06:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 064f26ba to 885d53b7 on Thu Feb 29 17:08:32 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 80b437d6..82f63386 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4c8a173..960b8a40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 064f26ba to 885d53b7 on Thu Feb 29 17:08:32 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 80b437d6..82f63386 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4c8a173..960b8a40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 064f26ba to 885d53b7 on Thu Feb 29 17:08:32 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 80b437d6..82f63386 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4c8a173..960b8a40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-064f26ba/development/components/release/development/kustomize.out.yaml
1790c1790
<         image: quay.io/redhat-appstudio/release-service:3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
---
>         image: quay.io/redhat-appstudio/release-service:94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 03152bfd to 064f26ba on Thu Feb 29 14:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index bf817c3e..d9be3fcc 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-03152bfd/production/components/release/production/kustomize.out.yaml
1790c1790
<         image: quay.io/redhat-appstudio/release-service:94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
---
>         image: quay.io/redhat-appstudio/release-service:4a125b85f681fbecde7113e3a5765be8388ba459 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 03152bfd to 064f26ba on Thu Feb 29 14:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index bf817c3e..d9be3fcc 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 03152bfd to 064f26ba on Thu Feb 29 14:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index bf817c3e..d9be3fcc 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 64366834 to 03152bfd on Thu Feb 29 13:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index 4bde7f10..3313e531 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - release-pipeline-resources-clusterrole.yaml
+- release-service-config-rbac.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
 - cronjobs/
diff --git a/components/release/base/release-service-config-rbac.yaml b/components/release/base/release-service-config-rbac.yaml
new file mode 100644
index 00000000..3837427b
--- /dev/null
+++ b/components/release/base/release-service-config-rbac.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: releaseserviceconfig-role
+rules:
+- apiGroups:
+  - appstudio.redhat.com
+  resources:
+  - releaseserviceconfigs
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: releaseserviceconfigs-rolebinding
+  namespace: release-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: releaseserviceconfig-role
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:serviceaccounts 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-64366834/production/components/release/production/kustomize.out.yaml
1420,1433d1419
< kind: ClusterRole
< metadata:
<   name: releaseserviceconfig-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseserviceconfigs
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1488,1501d1473
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: releaseserviceconfigs-rolebinding
<   namespace: release-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: releaseserviceconfig-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 64366834 to 03152bfd on Thu Feb 29 13:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index 4bde7f10..3313e531 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - release-pipeline-resources-clusterrole.yaml
+- release-service-config-rbac.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
 - cronjobs/
diff --git a/components/release/base/release-service-config-rbac.yaml b/components/release/base/release-service-config-rbac.yaml
new file mode 100644
index 00000000..3837427b
--- /dev/null
+++ b/components/release/base/release-service-config-rbac.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: releaseserviceconfig-role
+rules:
+- apiGroups:
+  - appstudio.redhat.com
+  resources:
+  - releaseserviceconfigs
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: releaseserviceconfigs-rolebinding
+  namespace: release-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: releaseserviceconfig-role
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:serviceaccounts 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-64366834/staging/components/release/staging/kustomize.out.yaml
1420,1433d1419
< kind: ClusterRole
< metadata:
<   name: releaseserviceconfig-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseserviceconfigs
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1488,1501d1473
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: releaseserviceconfigs-rolebinding
<   namespace: release-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: releaseserviceconfig-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 64366834 to 03152bfd on Thu Feb 29 13:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index 4bde7f10..3313e531 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - release-pipeline-resources-clusterrole.yaml
+- release-service-config-rbac.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
 - cronjobs/
diff --git a/components/release/base/release-service-config-rbac.yaml b/components/release/base/release-service-config-rbac.yaml
new file mode 100644
index 00000000..3837427b
--- /dev/null
+++ b/components/release/base/release-service-config-rbac.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: releaseserviceconfig-role
+rules:
+- apiGroups:
+  - appstudio.redhat.com
+  resources:
+  - releaseserviceconfigs
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: releaseserviceconfigs-rolebinding
+  namespace: release-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: releaseserviceconfig-role
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:serviceaccounts 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-64366834/development/components/release/development/kustomize.out.yaml
1420,1433d1419
< kind: ClusterRole
< metadata:
<   name: releaseserviceconfig-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseserviceconfigs
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1488,1501d1473
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: releaseserviceconfigs-rolebinding
<   namespace: release-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: releaseserviceconfig-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from a8e0f437 to 64366834 on Thu Feb 29 12:24:20 2024 </h3>  
 
<details> 
<summary>Git Diff (107 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
new file mode 100644
index 00000000..2aaaf106
--- /dev/null
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1                                                                             
+kind: Kustomization 
+
+resources:
+- remove-expired-releases.yaml
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
new file mode 100644
index 00000000..f87c8fea
--- /dev/null
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -0,0 +1,78 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: remove-expired-releases
+  namespace: release-service
+spec:
+  schedule: "10 03 * * *"
+  successfulJobsHistoryLimit: 7
+  failedJobsHistoryLimit: 7
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: release-service-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: release-cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+                  PATH="/bin:/usr/bin:/usr/local/bin"
+                  MAX_PROCS=5
+                  EXPIRED_RELEASES_FILE="/var/tmp/releases-to-be-deleted"
+                  NOW=$(date +%s)
+                  kubectl get release --all-namespaces \
+                  --sort-by=.status.expirationTime \
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > /tmp/kubectl-out
+                  awk -v now=${NOW} '{
+                       # parsing the expirationTime and converting it to epoch
+                       # so we can calculate easier the expired Releases
+                       gsub("[:\\-TZ]", " ", $3)
+                       t=mktime($3)
+                       expirationTime=strftime("%s", t)
+                       #
+                       # expirationTime should be smaller than today in seconds so it can be deleted
+                       if(now > expirationTime) {
+                         args="%s:%s"
+                         printf(args, $1, $2)
+                       } 
+                    }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE
+                  # The deleteAndLog will run the Release deletion and save the operation in a structured way that        
+                  # can be read easily by kubectl or journalctl                                                           
+                  function deleteAndLog() {
+                    release=${1%:*}
+                    namespace=${1#*:}
+                    kubectl delete release $release -n $namespace |while read logLine; do
+                      echo "INFO: namespace=${namespace} log=${logLine}"
+                    done                                                                                                  
+                  }                                                                                                       
+                  export -f deleteAndLog
+                  xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
+              imagePullPolicy: IfNotPresent
+              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 200m
+                  memory: 200Mi
+                requests:
+                  cpu: 10m
+                  memory: 10Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index d0a8814a..4bde7f10 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - release-pipeline-resources-clusterrole.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
+- cronjobs/
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-a8e0f437/production/components/release/production/kustomize.out.yaml
1825,1888d1824
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: remove-expired-releases
<   namespace: release-service
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
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nNOW=$(date
<               +%s)\nkubectl get release --all-namespaces \\\n--sort-by=.status.expirationTime
<               \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
<               > /tmp/kubectl-out\nawk -v now=${NOW} '{\n     # parsing the expirationTime
<               and converting it to epoch\n     # so we can calculate easier the expired
<               Releases\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    expirationTime=strftime(\"%s\", t)\n     #\n     # expirationTime
<               should be smaller than today in seconds so it can be deleted\n     if(now
<               > expirationTime) {\n       args=\"%s:%s\"\n       printf(args, $1,
<               $2)\n     } \n  }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE\n#
<               The deleteAndLog will run the Release deletion and save the operation
<               in a structured way that        \n# can be read easily by kubectl or
<               journalctl                                                           \nfunction
<               deleteAndLog() {\n  release=${1%:*}\n  namespace=${1#*:}\n  kubectl
<               delete release $release -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
<             imagePullPolicy: IfNotPresent
<             name: release-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
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
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a8e0f437 to 64366834 on Thu Feb 29 12:24:20 2024 </h3>  
 
<details> 
<summary>Git Diff (107 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
new file mode 100644
index 00000000..2aaaf106
--- /dev/null
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1                                                                             
+kind: Kustomization 
+
+resources:
+- remove-expired-releases.yaml
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
new file mode 100644
index 00000000..f87c8fea
--- /dev/null
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -0,0 +1,78 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: remove-expired-releases
+  namespace: release-service
+spec:
+  schedule: "10 03 * * *"
+  successfulJobsHistoryLimit: 7
+  failedJobsHistoryLimit: 7
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: release-service-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: release-cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+                  PATH="/bin:/usr/bin:/usr/local/bin"
+                  MAX_PROCS=5
+                  EXPIRED_RELEASES_FILE="/var/tmp/releases-to-be-deleted"
+                  NOW=$(date +%s)
+                  kubectl get release --all-namespaces \
+                  --sort-by=.status.expirationTime \
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > /tmp/kubectl-out
+                  awk -v now=${NOW} '{
+                       # parsing the expirationTime and converting it to epoch
+                       # so we can calculate easier the expired Releases
+                       gsub("[:\\-TZ]", " ", $3)
+                       t=mktime($3)
+                       expirationTime=strftime("%s", t)
+                       #
+                       # expirationTime should be smaller than today in seconds so it can be deleted
+                       if(now > expirationTime) {
+                         args="%s:%s"
+                         printf(args, $1, $2)
+                       } 
+                    }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE
+                  # The deleteAndLog will run the Release deletion and save the operation in a structured way that        
+                  # can be read easily by kubectl or journalctl                                                           
+                  function deleteAndLog() {
+                    release=${1%:*}
+                    namespace=${1#*:}
+                    kubectl delete release $release -n $namespace |while read logLine; do
+                      echo "INFO: namespace=${namespace} log=${logLine}"
+                    done                                                                                                  
+                  }                                                                                                       
+                  export -f deleteAndLog
+                  xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
+              imagePullPolicy: IfNotPresent
+              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 200m
+                  memory: 200Mi
+                requests:
+                  cpu: 10m
+                  memory: 10Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index d0a8814a..4bde7f10 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - release-pipeline-resources-clusterrole.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
+- cronjobs/
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-a8e0f437/staging/components/release/staging/kustomize.out.yaml
1825,1888d1824
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: remove-expired-releases
<   namespace: release-service
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
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nNOW=$(date
<               +%s)\nkubectl get release --all-namespaces \\\n--sort-by=.status.expirationTime
<               \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
<               > /tmp/kubectl-out\nawk -v now=${NOW} '{\n     # parsing the expirationTime
<               and converting it to epoch\n     # so we can calculate easier the expired
<               Releases\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    expirationTime=strftime(\"%s\", t)\n     #\n     # expirationTime
<               should be smaller than today in seconds so it can be deleted\n     if(now
<               > expirationTime) {\n       args=\"%s:%s\"\n       printf(args, $1,
<               $2)\n     } \n  }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE\n#
<               The deleteAndLog will run the Release deletion and save the operation
<               in a structured way that        \n# can be read easily by kubectl or
<               journalctl                                                           \nfunction
<               deleteAndLog() {\n  release=${1%:*}\n  namespace=${1#*:}\n  kubectl
<               delete release $release -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
<             imagePullPolicy: IfNotPresent
<             name: release-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
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
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from a8e0f437 to 64366834 on Thu Feb 29 12:24:20 2024 </h3>  
 
<details> 
<summary>Git Diff (107 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
new file mode 100644
index 00000000..2aaaf106
--- /dev/null
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1                                                                             
+kind: Kustomization 
+
+resources:
+- remove-expired-releases.yaml
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
new file mode 100644
index 00000000..f87c8fea
--- /dev/null
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -0,0 +1,78 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: remove-expired-releases
+  namespace: release-service
+spec:
+  schedule: "10 03 * * *"
+  successfulJobsHistoryLimit: 7
+  failedJobsHistoryLimit: 7
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: release-service-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: release-cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+                  PATH="/bin:/usr/bin:/usr/local/bin"
+                  MAX_PROCS=5
+                  EXPIRED_RELEASES_FILE="/var/tmp/releases-to-be-deleted"
+                  NOW=$(date +%s)
+                  kubectl get release --all-namespaces \
+                  --sort-by=.status.expirationTime \
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > /tmp/kubectl-out
+                  awk -v now=${NOW} '{
+                       # parsing the expirationTime and converting it to epoch
+                       # so we can calculate easier the expired Releases
+                       gsub("[:\\-TZ]", " ", $3)
+                       t=mktime($3)
+                       expirationTime=strftime("%s", t)
+                       #
+                       # expirationTime should be smaller than today in seconds so it can be deleted
+                       if(now > expirationTime) {
+                         args="%s:%s"
+                         printf(args, $1, $2)
+                       } 
+                    }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE
+                  # The deleteAndLog will run the Release deletion and save the operation in a structured way that        
+                  # can be read easily by kubectl or journalctl                                                           
+                  function deleteAndLog() {
+                    release=${1%:*}
+                    namespace=${1#*:}
+                    kubectl delete release $release -n $namespace |while read logLine; do
+                      echo "INFO: namespace=${namespace} log=${logLine}"
+                    done                                                                                                  
+                  }                                                                                                       
+                  export -f deleteAndLog
+                  xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
+              imagePullPolicy: IfNotPresent
+              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 200m
+                  memory: 200Mi
+                requests:
+                  cpu: 10m
+                  memory: 10Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index d0a8814a..4bde7f10 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - release-pipeline-resources-clusterrole.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
+- cronjobs/
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-a8e0f437/development/components/release/development/kustomize.out.yaml
1825,1888d1824
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: remove-expired-releases
<   namespace: release-service
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
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nNOW=$(date
<               +%s)\nkubectl get release --all-namespaces \\\n--sort-by=.status.expirationTime
<               \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
<               > /tmp/kubectl-out\nawk -v now=${NOW} '{\n     # parsing the expirationTime
<               and converting it to epoch\n     # so we can calculate easier the expired
<               Releases\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    expirationTime=strftime(\"%s\", t)\n     #\n     # expirationTime
<               should be smaller than today in seconds so it can be deleted\n     if(now
<               > expirationTime) {\n       args=\"%s:%s\"\n       printf(args, $1,
<               $2)\n     } \n  }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE\n#
<               The deleteAndLog will run the Release deletion and save the operation
<               in a structured way that        \n# can be read easily by kubectl or
<               journalctl                                                           \nfunction
<               deleteAndLog() {\n  release=${1%:*}\n  namespace=${1#*:}\n  kubectl
<               delete release $release -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
<             imagePullPolicy: IfNotPresent
<             name: release-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
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
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
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
```
 
</details> 
<br> 


</div>
