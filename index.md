# kustomize changes tracked by commits 
### This file generated at Tue Oct 22 16:05:46 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e8e07b35 to 3de751f9 on Tue Oct 22 15:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (138 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index e576fd96..7894dc06 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,3 +25,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 28ee7162..88ca15d7 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 2dff07c8..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-e8e07b35/production/components: workspaces 
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
<h3>1: Staging changes from e8e07b35 to 3de751f9 on Tue Oct 22 15:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (138 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index e576fd96..7894dc06 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,3 +25,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 28ee7162..88ca15d7 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 2dff07c8..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
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
<h3>1: Development changes from e8e07b35 to 3de751f9 on Tue Oct 22 15:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (138 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index e576fd96..7894dc06 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,3 +25,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 28ee7162..88ca15d7 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 2dff07c8..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (664 lines)</summary>  

``` 
./commit-e8e07b35/development/components/multi-platform-controller/development/kustomize.out.yaml
0a1,662
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: metrics-reader
>   namespace: multi-platform-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: pipeline-anyuid-role
>   namespace: multi-platform-controller
> rules:
> - apiGroups:
>   - security.openshift.io
>   resourceNames:
>   - anyuid
>   resources:
>   - securitycontextconstraints
>   verbs:
>   - use
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns/status
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: multi-platform-controller-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: multi-platform-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: pipeline-anyuid-rolebinding
>   namespace: multi-platform-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipeline-anyuid-role
> subjects:
> - kind: ServiceAccount
>   name: pipeline
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-manager-role
> subjects:
> - kind: ServiceAccount
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: prometheus-multi-platform-controller-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
>   namespace: multi-platform-controller
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: metrics-reader
>   name: metrics-reader
>   namespace: multi-platform-controller
> type: kubernetes.io/service-account-token
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
>     control-plane: controller-manager
>   name: multi-platform-controller-controller-manager-metrics-service
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     app: multi-platform-controller
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-monitor
>   namespace: multi-platform-controller
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: probes
>     port: 8081
>     protocol: TCP
>     targetPort: 8081
>   selector:
>     app: multi-platform-controller
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: otp-tls-secrets
>   labels:
>     app: multi-platform-otp-server
>   name: multi-platform-otp-server
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 443
>     protocol: TCP
>     targetPort: 8443
>   selector:
>     app: multi-platform-otp-server
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
>   namespace: multi-platform-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: multi-platform-controller
>   template:
>     metadata:
>       labels:
>         app: multi-platform-controller
>     spec:
>       containers:
>       - args:
>         - --http2-disable
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --zap-encoder=console
>         env:
>         - name: POD_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         image: quay.io/konflux-ci/multi-platform-controller:3f3a1153714eb51194d89f4eeb20224d96521574
>         imagePullPolicy: Always
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 8081
>           name: probes
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 4Gi
>           requests:
>             cpu: 100m
>             memory: 512Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: multi-platform-controller-controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app: multi-platform-otp-server
>   name: multi-platform-otp-server
>   namespace: multi-platform-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: multi-platform-otp-server
>   template:
>     metadata:
>       labels:
>         app: multi-platform-otp-server
>     spec:
>       containers:
>       - env:
>         - name: POD_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3f3a1153714eb51194d89f4eeb20224d96521574
>         imagePullPolicy: Always
>         name: multi-platform-otp-server
>         ports:
>         - containerPort: 8080
>           name: server
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 100m
>             memory: 128Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tls
>           name: tls
>       securityContext:
>         runAsNonRoot: true
>       volumes:
>       - name: tls
>         secret:
>           secretName: otp-tls-secrets
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   name: multi-platform-controller-metrics-monitor
>   namespace: multi-platform-controller
> spec:
>   endpoints:
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
>     path: /metrics
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: controller-manager
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: clean-shared-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will clean up after a build
>   params:
>   - name: SECRET_NAME
>     type: string
>   - name: TASKRUN_NAME
>     type: string
>   - name: NAMESPACE
>     type: string
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: provision
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       set -eu
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST=$(params.USER)@$(params.HOST)
> 
>       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo userdel -f -r -Z $USERNAME
>   workspaces:
>   - name: ssh
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: provision-shared-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will create a new user on a host, setup ssh keys, and then
>     create the relevant secret.
>   params:
>   - name: SECRET_NAME
>     type: string
>   - name: TASKRUN_NAME
>     type: string
>   - name: NAMESPACE
>     type: string
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   - name: SUDO_COMMANDS
>     type: string
>   stepTemplate:
>     env:
>     - name: SECRET_NAME
>       value: $(params.SECRET_NAME)
>     - name: TASKRUN_NAME
>       value: $(params.TASKRUN_NAME)
>     - name: NAMESPACE
>       value: $(params.NAMESPACE)
>     - name: HOST
>       value: $(params.HOST)
>     - name: USER
>       value: $(params.USER)
>     - name: SUDO_COMMANDS
>       value: $(params.SUDO_COMMANDS)
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: provision
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       set -eu
>       set -o pipefail
>       mkdir -p /root/.ssh
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST="$USER@$HOST"
> 
>       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
> 
>       cat >script.sh <<EOF
>       sudo dnf install podman -y
>       rm -f $USERNAME $USERNAME.pub
>       # sometimes it hits  "useradd: cannot lock /etc/passwd; try again later" error, so need to repeat
>       for i in {10..1}; do
>         sudo useradd -m $USERNAME -p $(openssl rand -base64 12) && break
>         sleep 1
>       done
>       ssh-keygen -N '' -f $USERNAME
>       sudo su $USERNAME -c 'mkdir /home/$USERNAME/.ssh'
>       sudo su $USERNAME -c 'mkdir /home/$USERNAME/build'
>       sudo mv $USERNAME.pub /home/$USERNAME/.ssh/authorized_keys
>       sudo chown $USERNAME /home/$USERNAME/.ssh/authorized_keys
>       sudo restorecon -FRvv /home/$USERNAME/.ssh
>       EOF
> 
>       if [ ! -z "$SUDO_COMMANDS" ]; then
>       #if we need sudo access add it to the script
>       cat >>script.sh <<EOF
>       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
>       EOF
>       fi
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST cat $USERNAME  >id_rsa
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST rm $USERNAME
>       chmod 0400 id_rsa
>       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
>       DIR=$(echo /home/$USERNAME | base64 -w 0)
> 
>       if [ -e "/tls/tls.crt" ]; then
>         KEY=$(cat id_rsa)
>         OTP=$(curl --cacert /tls/tls.crt -XPOST -d "$KEY" https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/store-key | base64 -w 0)
>         OTP_SERVER="$(echo https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/otp | base64 -w 0)"
>         echo $OTP | base64 -d
>         cat >secret.yaml <<EOF
>         apiVersion: v1
>         data:
>           otp-ca: "$(cat /tls/tls.crt | base64 -w 0)"
>           otp: "$OTP"
>           otp-server: "$OTP_SERVER"
>           host: "$HOST"
>           user-dir: "$DIR"
>         kind: Secret
>         metadata:
>           name: "$SECRET_NAME"
>           namespace: "$NAMESPACE"
>           labels:
>             build.appstudio.redhat.com/multi-platform-secret: "true"
>         type: Opaque
>       EOF
>       else
>         KEY=$(cat id_rsa | base64 -w 0)
>         cat >secret.yaml <<EOF
>         apiVersion: v1
>         data:
>           id_rsa: "$KEY"
>           host: "$HOST"
>           user-dir: "$DIR"
>         kind: Secret
>         metadata:
>           name: "$SECRET_NAME"
>           namespace: "$NAMESPACE"
>           labels:
>             build.appstudio.redhat.com/multi-platform-secret: "true"
>         type: Opaque
>       EOF
>       fi
> 
>       kubectl create -f secret.yaml
>     volumeMounts:
>     - mountPath: /tls
>       name: tls
>   volumes:
>   - name: tls
>     secret:
>       optional: true
>       secretName: otp-tls-secrets
>   workspaces:
>   - name: ssh
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: update-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will create a new user on a host, setup ssh keys, and then
>     create the relevant secret.
>   params:
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: update
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       mkdir -p /root/.ssh
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST=$(params.USER)@$(params.HOST)
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y"
> 
>       #now clean up any dangling users, if their cleanup failed for whatever reason
> 
>       cat >script.sh <<EOF
>       threshold=$(date -d "1 day ago" +%s)
>       cd /home
>       for file in u-*; do
>         # Check if the file is a regular file and older than the threshold
>         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
>         # Delete the user
>         sudo userdel -f -r -Z $file
>         echo "Deleted: $file"
>         fi
>       done
>       EOF
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
>   workspaces:
>   - name: ssh 
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
<h3>2: Production changes from a209dc5c to e8e07b35 on Tue Oct 22 10:39:25 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 52ccbae8..8487f5e3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b19190c1..46054ce8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
+      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-a209dc5c/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
332c332
<   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
---
>   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40 
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
<h3>2: Staging changes from a209dc5c to e8e07b35 on Tue Oct 22 10:39:25 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 52ccbae8..8487f5e3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b19190c1..46054ce8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
+      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-a209dc5c/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
332c332
<   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
---
>   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40 
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
<h3>2: Development changes from a209dc5c to e8e07b35 on Tue Oct 22 10:39:25 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 52ccbae8..8487f5e3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b19190c1..46054ce8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
+      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-a209dc5c/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
332c332
<   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
---
>   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40 
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
<h3>3: Production changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
<h3>3: Staging changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
<h3>3: Development changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
<h3>4: Production changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
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
<h3>4: Staging changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
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
<h3>4: Development changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-75a9be91/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:69ae8399bf3b5961b672a5962a7d806376b7296f
---
>         image: quay.io/konflux-ci/release-service:e091a3b077f7b1743c17869a043b8fd8856c6112 
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
