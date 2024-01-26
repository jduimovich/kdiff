# kustomize changes tracked by commits 
### This file generated at Fri Jan 26 12:04:24 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 94604248..48cc5001 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 4eec59be..c26899da 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
  
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
<h3>1: Staging changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 94604248..48cc5001 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 4eec59be..c26899da 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f55ce4ac/staging/components/integration/staging/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
---
>         image: quay.io/redhat-appstudio/integration-service:81664606d240735d2e58396d046bb3544d0e0d1f 
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
<h3>1: Development changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 94604248..48cc5001 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 4eec59be..c26899da 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f55ce4ac/development/components/integration/development/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
---
>         image: quay.io/redhat-appstudio/integration-service:81664606d240735d2e58396d046bb3544d0e0d1f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from cc00977c to f55ce4ac on Fri Jan 26 08:09:46 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 5da9470b..2126b87a 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=b775f294ad025b00af142479e74a35074ac90019
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index ebeace30..48708917 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=b775f294ad025b00af142479e74a35074ac90019
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=b775f294ad025b00af142479e74a35074ac90019
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target: 
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
<h3>2: Staging changes from cc00977c to f55ce4ac on Fri Jan 26 08:09:46 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 5da9470b..2126b87a 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=b775f294ad025b00af142479e74a35074ac90019
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index ebeace30..48708917 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=b775f294ad025b00af142479e74a35074ac90019
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=b775f294ad025b00af142479e74a35074ac90019
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target: 
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
<h3>2: Development changes from cc00977c to f55ce4ac on Fri Jan 26 08:09:46 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 5da9470b..2126b87a 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=b775f294ad025b00af142479e74a35074ac90019
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index ebeace30..48708917 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=b775f294ad025b00af142479e74a35074ac90019
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=b775f294ad025b00af142479e74a35074ac90019
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from b84287cb to cc00977c on Fri Jan 26 05:08:22 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
index 1845fd62..8c55752f 100644
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ b/components/remote-secret-controller/base/rbac/remote-secret.yaml
@@ -4,8 +4,8 @@ metadata:
   name: remotesecret-service-maintainers
   namespace: remotesecret
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
index 8521d836..869c9afc 100644
--- a/components/spi/base/rbac/spi.yaml
+++ b/components/spi/base/rbac/spi.yaml
@@ -4,8 +4,8 @@ metadata:
   name: spi-service-maintainers
   namespace: spi-system
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
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
<h3>3: Staging changes from b84287cb to cc00977c on Fri Jan 26 05:08:22 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
index 1845fd62..8c55752f 100644
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ b/components/remote-secret-controller/base/rbac/remote-secret.yaml
@@ -4,8 +4,8 @@ metadata:
   name: remotesecret-service-maintainers
   namespace: remotesecret
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
index 8521d836..869c9afc 100644
--- a/components/spi/base/rbac/spi.yaml
+++ b/components/spi/base/rbac/spi.yaml
@@ -4,8 +4,8 @@ metadata:
   name: spi-service-maintainers
   namespace: spi-system
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
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
<h3>3: Development changes from b84287cb to cc00977c on Fri Jan 26 05:08:22 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
index 1845fd62..8c55752f 100644
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ b/components/remote-secret-controller/base/rbac/remote-secret.yaml
@@ -4,8 +4,8 @@ metadata:
   name: remotesecret-service-maintainers
   namespace: remotesecret
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
index 8521d836..869c9afc 100644
--- a/components/spi/base/rbac/spi.yaml
+++ b/components/spi/base/rbac/spi.yaml
@@ -4,8 +4,8 @@ metadata:
   name: spi-service-maintainers
   namespace: spi-system
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 69824e8d to b84287cb on Fri Jan 26 05:08:15 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/internal-services/internal-services.yaml b/components/internal-services/internal-services.yaml
index a36f7cd8..65295c83 100644
--- a/components/internal-services/internal-services.yaml
+++ b/components/internal-services/internal-services.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -19,7 +19,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/release/base/release-team.yaml b/components/release/base/release-team.yaml
index f36d1519..8baa8329 100644
--- a/components/release/base/release-team.yaml
+++ b/components/release/base/release-team.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -20,7 +20,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-69824e8d/production/components/internal-services/kustomize.out.yaml
203c203
<   name: konflux-release-team
---
>   name: Release team
229c229
<   name: konflux-release-team
---
>   name: Release team
./commit-69824e8d/production/components/release/production/kustomize.out.yaml
1367c1367
<   name: konflux-release-team
---
>   name: Release team
1395c1395
<   name: konflux-release-team
---
>   name: Release team 
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
<h3>4: Staging changes from 69824e8d to b84287cb on Fri Jan 26 05:08:15 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/internal-services/internal-services.yaml b/components/internal-services/internal-services.yaml
index a36f7cd8..65295c83 100644
--- a/components/internal-services/internal-services.yaml
+++ b/components/internal-services/internal-services.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -19,7 +19,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/release/base/release-team.yaml b/components/release/base/release-team.yaml
index f36d1519..8baa8329 100644
--- a/components/release/base/release-team.yaml
+++ b/components/release/base/release-team.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -20,7 +20,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-69824e8d/staging/components/internal-services/kustomize.out.yaml
203c203
<   name: konflux-release-team
---
>   name: Release team
229c229
<   name: konflux-release-team
---
>   name: Release team
./commit-69824e8d/staging/components/release/staging/kustomize.out.yaml
1367c1367
<   name: konflux-release-team
---
>   name: Release team
1395c1395
<   name: konflux-release-team
---
>   name: Release team 
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
<h3>4: Development changes from 69824e8d to b84287cb on Fri Jan 26 05:08:15 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/internal-services/internal-services.yaml b/components/internal-services/internal-services.yaml
index a36f7cd8..65295c83 100644
--- a/components/internal-services/internal-services.yaml
+++ b/components/internal-services/internal-services.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -19,7 +19,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/release/base/release-team.yaml b/components/release/base/release-team.yaml
index f36d1519..8baa8329 100644
--- a/components/release/base/release-team.yaml
+++ b/components/release/base/release-team.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -20,7 +20,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Release team
+    name: konflux-release-team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-69824e8d/development/components/internal-services/kustomize.out.yaml
203c203
<   name: konflux-release-team
---
>   name: Release team
229c229
<   name: konflux-release-team
---
>   name: Release team
./commit-69824e8d/development/components/release/development/kustomize.out.yaml
1367c1367
<   name: konflux-release-team
---
>   name: Release team
1395c1395
<   name: konflux-release-team
---
>   name: Release team 
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
```
 
</details> 
<br> 


</div>
