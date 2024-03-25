# kustomize changes tracked by commits 
### This file generated at Mon Mar 25 20:03:54 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from da26be46 to 6f580f3c on Mon Mar 25 18:48:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 67c6eb5f..102ab5db 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 434b4b78..cb424f87 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 5a5229a8..d7e5efa3 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b3fb198b..9de01026 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-da26be46/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b
---
>         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59 
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
<h3>1: Staging changes from da26be46 to 6f580f3c on Mon Mar 25 18:48:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 67c6eb5f..102ab5db 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 434b4b78..cb424f87 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 5a5229a8..d7e5efa3 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b3fb198b..9de01026 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-da26be46/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b
---
>         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59 
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
<h3>1: Development changes from da26be46 to 6f580f3c on Mon Mar 25 18:48:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 67c6eb5f..102ab5db 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 434b4b78..cb424f87 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 5a5229a8..d7e5efa3 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b3fb198b..9de01026 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-da26be46/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b
---
>         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59 
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
<h3>2: Production changes from 5a44bb88 to da26be46 on Mon Mar 25 14:30:56 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6277c0ab..b6357b17 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1670c08c..a5f50390 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
+    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
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
<h3>2: Staging changes from 5a44bb88 to da26be46 on Mon Mar 25 14:30:56 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6277c0ab..b6357b17 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1670c08c..a5f50390 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
+    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 5a44bb88 to da26be46 on Mon Mar 25 14:30:56 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6277c0ab..b6357b17 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1670c08c..a5f50390 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
+    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-5a44bb88/development/components/release/development/kustomize.out.yaml
613a614,637
>               deployment:
>                 description: Deployment contains information about the deployment
>                 properties:
>                   completionTime:
>                     description: CompletionTime is the time when the Release deployment
>                       was completed
>                     format: date-time
>                     type: string
>                   environment:
>                     description: Environment is the environment where the Release
>                       will be deployed to
>                     type: string
>                   snapshotEnvironmentBinding:
>                     description: SnapshotEnvironmentBinding contains the namespaced
>                       name of the SnapshotEnvironmentBinding created as part of this
>                       release
>                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                     type: string
>                   startTime:
>                     description: StartTime is the time when the Release deployment
>                       started
>                     format: date-time
>                     type: string
>                 type: object
1766c1790
<         image: quay.io/redhat-appstudio/release-service:5466ccb1bf2680804599c7f2d7635f04492f0fd0
---
>         image: quay.io/redhat-appstudio/release-service:2518642f06f601d05935c4f6f152a04c695e5467 
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
<h3>3: Production changes from d199d2aa to 5a44bb88 on Mon Mar 25 11:37:38 2024 </h3>  
 
<details> 
<summary>Git Diff (973 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1fd0447c..68269b3d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4037883a..67fc2300 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 3770aeff..784dfa48 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d8565d0b..3d07813b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (789 lines)</summary>  

``` 
./commit-d199d2aa/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1331c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1377a1420,1465
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1483c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1495c1583
<             cpu: 250m
---
>             cpu: 100m
1622a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1868,1897d1963
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
1902,1912d1967
<             template:
<               spec:
<                 containers:
<                 - name: proxy
<                   resources:
<                     limits:
<                       cpu: 500m
<                       memory: 500Mi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
1916,1928d1970
<         tekton-pipelines-webhook:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: webhook
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 1Gi
<                     requests:
<                       cpu: 200m
<                       memory: 200Mi
1930,1964d1971
<       horizontalPodAutoscalers:
<         tekton-operator-proxy-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
<         tekton-pipelines-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
1996,2044d2002
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
2055c2013
<   channel: latest
---
>   channel: pipelines-1.13
2057c2015
<   source: custom-operators
---
>   source: redhat-operators
./commit-d199d2aa/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1331c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1377a1420,1465
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1483c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1495c1583
<             cpu: 250m
---
>             cpu: 100m
1622a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1868,1897d1963
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
1902,1912d1967
<             template:
<               spec:
<                 containers:
<                 - name: proxy
<                   resources:
<                     limits:
<                       cpu: 500m
<                       memory: 500Mi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
1916,1928d1970
<         tekton-pipelines-webhook:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: webhook
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 1Gi
<                     requests:
<                       cpu: 200m
<                       memory: 200Mi
1930,1964d1971
<       horizontalPodAutoscalers:
<         tekton-operator-proxy-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
<         tekton-pipelines-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
1996,2044d2002
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
2055c2013
<   channel: latest
---
>   channel: pipelines-1.13
2057c2015
<   source: custom-operators
---
>   source: redhat-operators
./commit-d199d2aa/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1331c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1377a1420,1465
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1483c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1495c1583
<             cpu: 250m
---
>             cpu: 100m
1622a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1868,1897d1963
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
1902,1912d1967
<             template:
<               spec:
<                 containers:
<                 - name: proxy
<                   resources:
<                     limits:
<                       cpu: 500m
<                       memory: 500Mi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
1916,1928d1970
<         tekton-pipelines-webhook:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: webhook
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 1Gi
<                     requests:
<                       cpu: 200m
<                       memory: 200Mi
1930,1964d1971
<       horizontalPodAutoscalers:
<         tekton-operator-proxy-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
<         tekton-pipelines-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
1996,2044d2002
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
2055c2013
<   channel: latest
---
>   channel: pipelines-1.13
2057c2015
<   source: custom-operators
---
>   source: redhat-operators 
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
<h3>3: Staging changes from d199d2aa to 5a44bb88 on Mon Mar 25 11:37:38 2024 </h3>  
 
<details> 
<summary>Git Diff (973 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1fd0447c..68269b3d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4037883a..67fc2300 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 3770aeff..784dfa48 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d8565d0b..3d07813b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
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
<h3>3: Development changes from d199d2aa to 5a44bb88 on Mon Mar 25 11:37:38 2024 </h3>  
 
<details> 
<summary>Git Diff (973 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1fd0447c..68269b3d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4037883a..67fc2300 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 3770aeff..784dfa48 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d8565d0b..3d07813b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
@@ -2000,6 +1993,55 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
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
<h3>4: Production changes from 6738549a to d199d2aa on Mon Mar 25 09:31:09 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8bb13a4..380345ce 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 23590e79..8618e1ac 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6738549a to d199d2aa on Mon Mar 25 09:31:09 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8bb13a4..380345ce 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 23590e79..8618e1ac 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6738549a/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1199c1199
<         image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>         image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5
1290c1290
<             image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>             image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5 
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
<h3>4: Development changes from 6738549a to d199d2aa on Mon Mar 25 09:31:09 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8bb13a4..380345ce 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 23590e79..8618e1ac 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6738549a/development/components/integration/development/kustomize.out.yaml
1198c1198
<         image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>         image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5
1292c1292
<             image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>             image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5 
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
