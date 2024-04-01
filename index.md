# kustomize changes tracked by commits 
### This file generated at Mon Apr  1 16:02:22 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b372180e to d3824ac9 on Mon Apr 1 12:01:07 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index f27f92c0..f39ab525 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
+  newTag: 38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 3214dab3..4b7660e7 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
+  newTag: 38d33115ac41b2595a18c2ac6ca0f7102cc286a1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b372180e to d3824ac9 on Mon Apr 1 12:01:07 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index f27f92c0..f39ab525 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
+  newTag: 38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 3214dab3..4b7660e7 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
+  newTag: 38d33115ac41b2595a18c2ac6ca0f7102cc286a1 
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
<h3>1: Development changes from b372180e to d3824ac9 on Mon Apr 1 12:01:07 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index f27f92c0..f39ab525 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
+  newTag: 38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 3214dab3..4b7660e7 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=38d33115ac41b2595a18c2ac6ca0f7102cc286a1
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
+  newTag: 38d33115ac41b2595a18c2ac6ca0f7102cc286a1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ed33db7d to b372180e on Mon Apr 1 11:03:21 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index a14b05a4..f27f92c0 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: fbf54d731422e7d526526e3038ec02206af480b2
+  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 33e65cb3..3214dab3 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: fbf54d731422e7d526526e3038ec02206af480b2
+  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ed33db7d to b372180e on Mon Apr 1 11:03:21 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index a14b05a4..f27f92c0 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: fbf54d731422e7d526526e3038ec02206af480b2
+  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 33e65cb3..3214dab3 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: fbf54d731422e7d526526e3038ec02206af480b2
+  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7 
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
<h3>2: Development changes from ed33db7d to b372180e on Mon Apr 1 11:03:21 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index a14b05a4..f27f92c0 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: fbf54d731422e7d526526e3038ec02206af480b2
+  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 33e65cb3..3214dab3 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=bb66da4ffb20a4fc586318027702b292b1124cf7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: fbf54d731422e7d526526e3038ec02206af480b2
+  newTag: bb66da4ffb20a4fc586318027702b292b1124cf7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from a895a1a8 to ed33db7d on Sun Mar 31 10:16:34 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 5b4263be..122de622 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -5,4 +5,28 @@ metadata:
     build.appstudio.redhat.com/multi-platform-config: hosts
   name: host-config
   namespace: multi-platform-controller
-data: {}
+data:
+
+  host.ip-10-29-66-252.address: "10.29.66.252"
+  host.ip-10-29-66-252.platform: "linux/amd64"
+  host.ip-10-29-66-252.user: "ec2-user"
+  host.ip-10-29-66-252.secret: "aws-ssh-key"
+  host.ip-10-29-66-252.concurrency: "4"
+
+  host.ip-10-29-66-250.address: "10.29.66.250"
+  host.ip-10-29-66-250.platform: "linux/amd64"
+  host.ip-10-29-66-250.user: "ec2-user"
+  host.ip-10-29-66-250.secret: "aws-ssh-key"
+  host.ip-10-29-66-250.concurrency: "4"
+
+  host.ip-10-29-66-245.address: "10.29.66.245"
+  host.ip-10-29-66-245.platform: "linux/arm64"
+  host.ip-10-29-66-245.user: "ec2-user"
+  host.ip-10-29-66-245.secret: "aws-ssh-key"
+  host.ip-10-29-66-245.concurrency: "4"
+
+  host.ip-10-29-66-249.address: "10.29.66.249"
+  host.ip-10-29-66-249.platform: "linux/arm64"
+  host.ip-10-29-66-249.user: "ec2-user"
+  host.ip-10-29-66-249.secret: "aws-ssh-key"
+  host.ip-10-29-66-249.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from a895a1a8 to ed33db7d on Sun Mar 31 10:16:34 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 5b4263be..122de622 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -5,4 +5,28 @@ metadata:
     build.appstudio.redhat.com/multi-platform-config: hosts
   name: host-config
   namespace: multi-platform-controller
-data: {}
+data:
+
+  host.ip-10-29-66-252.address: "10.29.66.252"
+  host.ip-10-29-66-252.platform: "linux/amd64"
+  host.ip-10-29-66-252.user: "ec2-user"
+  host.ip-10-29-66-252.secret: "aws-ssh-key"
+  host.ip-10-29-66-252.concurrency: "4"
+
+  host.ip-10-29-66-250.address: "10.29.66.250"
+  host.ip-10-29-66-250.platform: "linux/amd64"
+  host.ip-10-29-66-250.user: "ec2-user"
+  host.ip-10-29-66-250.secret: "aws-ssh-key"
+  host.ip-10-29-66-250.concurrency: "4"
+
+  host.ip-10-29-66-245.address: "10.29.66.245"
+  host.ip-10-29-66-245.platform: "linux/arm64"
+  host.ip-10-29-66-245.user: "ec2-user"
+  host.ip-10-29-66-245.secret: "aws-ssh-key"
+  host.ip-10-29-66-245.concurrency: "4"
+
+  host.ip-10-29-66-249.address: "10.29.66.249"
+  host.ip-10-29-66-249.platform: "linux/arm64"
+  host.ip-10-29-66-249.user: "ec2-user"
+  host.ip-10-29-66-249.secret: "aws-ssh-key"
+  host.ip-10-29-66-249.concurrency: "4" 
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
<h3>3: Development changes from a895a1a8 to ed33db7d on Sun Mar 31 10:16:34 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 5b4263be..122de622 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -5,4 +5,28 @@ metadata:
     build.appstudio.redhat.com/multi-platform-config: hosts
   name: host-config
   namespace: multi-platform-controller
-data: {}
+data:
+
+  host.ip-10-29-66-252.address: "10.29.66.252"
+  host.ip-10-29-66-252.platform: "linux/amd64"
+  host.ip-10-29-66-252.user: "ec2-user"
+  host.ip-10-29-66-252.secret: "aws-ssh-key"
+  host.ip-10-29-66-252.concurrency: "4"
+
+  host.ip-10-29-66-250.address: "10.29.66.250"
+  host.ip-10-29-66-250.platform: "linux/amd64"
+  host.ip-10-29-66-250.user: "ec2-user"
+  host.ip-10-29-66-250.secret: "aws-ssh-key"
+  host.ip-10-29-66-250.concurrency: "4"
+
+  host.ip-10-29-66-245.address: "10.29.66.245"
+  host.ip-10-29-66-245.platform: "linux/arm64"
+  host.ip-10-29-66-245.user: "ec2-user"
+  host.ip-10-29-66-245.secret: "aws-ssh-key"
+  host.ip-10-29-66-245.concurrency: "4"
+
+  host.ip-10-29-66-249.address: "10.29.66.249"
+  host.ip-10-29-66-249.platform: "linux/arm64"
+  host.ip-10-29-66-249.user: "ec2-user"
+  host.ip-10-29-66-249.secret: "aws-ssh-key"
+  host.ip-10-29-66-249.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from efec85c5 to a895a1a8 on Fri Mar 29 11:19:03 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 880c6428..25976cbc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f0bb04e5..30c0827c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c1aaa4e60c985b8b7093ab7a4f63eb8ec4fe50ce
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a394b328165f670ddd31cd97e4f8c918cc0f73e2
+      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-efec85c5/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
378c378
<   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
---
>   verify_ec_task_git_revision: a394b328165f670ddd31cd97e4f8c918cc0f73e2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from efec85c5 to a895a1a8 on Fri Mar 29 11:19:03 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 880c6428..25976cbc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f0bb04e5..30c0827c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c1aaa4e60c985b8b7093ab7a4f63eb8ec4fe50ce
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a394b328165f670ddd31cd97e4f8c918cc0f73e2
+      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-efec85c5/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
378c378
<   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
---
>   verify_ec_task_git_revision: a394b328165f670ddd31cd97e4f8c918cc0f73e2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49 
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
<h3>4: Development changes from efec85c5 to a895a1a8 on Fri Mar 29 11:19:03 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 880c6428..25976cbc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f0bb04e5..30c0827c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c1aaa4e60c985b8b7093ab7a4f63eb8ec4fe50ce
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a394b328165f670ddd31cd97e4f8c918cc0f73e2
+      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-efec85c5/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
378c378
<   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
---
>   verify_ec_task_git_revision: a394b328165f670ddd31cd97e4f8c918cc0f73e2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49 
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
```
 
</details> 
<br> 


</div>
