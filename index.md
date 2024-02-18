# kustomize changes tracked by commits 
### This file generated at Sun Feb 18 08:02:18 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from eec693c8 to f4cf5393 on Fri Feb 16 21:17:39 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index 8a35cd8d..42d0c030 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -15,6 +15,5 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index a851de3a..42dda535 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 209c99db..7380d71f 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index a6db9486..99a06e7f 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 23a5a80e..e4e21978 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 075374c4..47f16e02 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 28b19395..492d0cc1 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-eec693c8/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1748c1748,1749
<     creationPolicy: Orphan
---
>     creationPolicy: Owner
>     deletionPolicy: Delete
./commit-eec693c8/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1748c1748,1749
<     creationPolicy: Orphan
---
>     creationPolicy: Owner
>     deletionPolicy: Delete
./commit-eec693c8/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1748c1748,1749
<     creationPolicy: Orphan
---
>     creationPolicy: Owner
>     deletionPolicy: Delete 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from eec693c8 to f4cf5393 on Fri Feb 16 21:17:39 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index 8a35cd8d..42d0c030 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -15,6 +15,5 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index a851de3a..42dda535 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 209c99db..7380d71f 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index a6db9486..99a06e7f 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 23a5a80e..e4e21978 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 075374c4..47f16e02 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 28b19395..492d0cc1 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-eec693c8/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1749c1749,1750
<     creationPolicy: Orphan
---
>     creationPolicy: Owner
>     deletionPolicy: Delete
./commit-eec693c8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1749c1749,1750
<     creationPolicy: Orphan
---
>     creationPolicy: Owner
>     deletionPolicy: Delete
./commit-eec693c8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1749c1749,1750
<     creationPolicy: Orphan
---
>     creationPolicy: Owner
>     deletionPolicy: Delete 
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
<h3>1: Development changes from eec693c8 to f4cf5393 on Fri Feb 16 21:17:39 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index 8a35cd8d..42d0c030 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -15,6 +15,5 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index a851de3a..42dda535 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 209c99db..7380d71f 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index a6db9486..99a06e7f 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1745,8 +1745,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 23a5a80e..e4e21978 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 075374c4..47f16e02 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 28b19395..492d0cc1 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1746,8 +1746,7 @@ spec:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
   target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
+    creationPolicy: Orphan
     name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1 
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
<h3>2: Production changes from 3beb36d8 to eec693c8 on Fri Feb 16 16:37:43 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index f50a562b..f576e4b4 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  newTag: b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 11215a4b..b4306e24 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  newTag: b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 3beb36d8 to eec693c8 on Fri Feb 16 16:37:43 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index f50a562b..f576e4b4 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  newTag: b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 11215a4b..b4306e24 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  newTag: b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7 
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
<h3>2: Development changes from 3beb36d8 to eec693c8 on Fri Feb 16 16:37:43 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index f50a562b..f576e4b4 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  newTag: b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 11215a4b..b4306e24 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: b2e39a480a7baaf4320b15fb6c1b996320203aa5
+  newTag: b11bd63ee1b71dde0b3a556c2c9d229797dbb7e7 
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
<h3>3: Production changes from b9f7efef to 3beb36d8 on Fri Feb 16 15:40:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 2f4d6615..26a07131 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -187,7 +187,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
-[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= \"https://github.com/${INTEGRATION_SERVICE_PR_OWNER}/integration-service/config/default?ref=${INTEGRATION_SERVICE_PR_SHA}\"" $ROOT/components/integration/development/kustomization.yaml
+[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from b9f7efef to 3beb36d8 on Fri Feb 16 15:40:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 2f4d6615..26a07131 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -187,7 +187,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
-[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= \"https://github.com/${INTEGRATION_SERVICE_PR_OWNER}/integration-service/config/default?ref=${INTEGRATION_SERVICE_PR_SHA}\"" $ROOT/components/integration/development/kustomization.yaml
+[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml 
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
<h3>3: Development changes from b9f7efef to 3beb36d8 on Fri Feb 16 15:40:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 2f4d6615..26a07131 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -187,7 +187,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
-[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= \"https://github.com/${INTEGRATION_SERVICE_PR_OWNER}/integration-service/config/default?ref=${INTEGRATION_SERVICE_PR_SHA}\"" $ROOT/components/integration/development/kustomization.yaml
+[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml 
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
<h3>4: Production changes from efbc3474 to b9f7efef on Fri Feb 16 14:17:52 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index 1a29fe01..a73c712f 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -7,4 +7,4 @@ spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
     namespace: tekton-results
-    name: tekton-result
\ No newline at end of file
+    name: tekton-results 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from efbc3474 to b9f7efef on Fri Feb 16 14:17:52 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index 1a29fe01..a73c712f 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -7,4 +7,4 @@ spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
     namespace: tekton-results
-    name: tekton-result
\ No newline at end of file
+    name: tekton-results 
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
<h3>4: Development changes from efbc3474 to b9f7efef on Fri Feb 16 14:17:52 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index 1a29fe01..a73c712f 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -7,4 +7,4 @@ spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
     namespace: tekton-results
-    name: tekton-result
\ No newline at end of file
+    name: tekton-results 
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
