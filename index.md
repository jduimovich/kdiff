# kustomize changes tracked by commits 
### This file generated at Tue May 14 20:08:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 216d8e5a to c1dbd77a on Tue May 14 20:01:38 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index f6122b31..c5b0f386 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -7,5 +7,3 @@ components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
   - ../../../k-components/assign-internal-cluster-role-to-local-cluster
-commonLabels:
-  appstudio.redhat.com/quality-dashboard: "true"
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 2d57c6ca..a72bd10a 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -73,12 +73,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: kubesaw-common
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 1a18add3..2e74eb4c 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -9,7 +9,6 @@ resources:
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
-  - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
 
@@ -152,8 +151,3 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: quality-dashboard
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 2976bc87..139b6bb0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -23,3 +23,9 @@ kind: ApplicationSet
 metadata:
   name: ci-helper-app
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 2976bc87..139b6bb0 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -23,3 +23,9 @@ kind: ApplicationSet
 metadata:
   name: ci-helper-app
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 216d8e5a to c1dbd77a on Tue May 14 20:01:38 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index f6122b31..c5b0f386 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -7,5 +7,3 @@ components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
   - ../../../k-components/assign-internal-cluster-role-to-local-cluster
-commonLabels:
-  appstudio.redhat.com/quality-dashboard: "true"
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 2d57c6ca..a72bd10a 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -73,12 +73,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: kubesaw-common
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 1a18add3..2e74eb4c 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -9,7 +9,6 @@ resources:
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
-  - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
 
@@ -152,8 +151,3 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: quality-dashboard
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 2976bc87..139b6bb0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -23,3 +23,9 @@ kind: ApplicationSet
 metadata:
   name: ci-helper-app
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 2976bc87..139b6bb0 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -23,3 +23,9 @@ kind: ApplicationSet
 metadata:
   name: ci-helper-app
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 216d8e5a to c1dbd77a on Tue May 14 20:01:38 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index f6122b31..c5b0f386 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -7,5 +7,3 @@ components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
   - ../../../k-components/assign-internal-cluster-role-to-local-cluster
-commonLabels:
-  appstudio.redhat.com/quality-dashboard: "true"
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 2d57c6ca..a72bd10a 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -73,12 +73,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: kubesaw-common
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 1a18add3..2e74eb4c 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -9,7 +9,6 @@ resources:
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
-  - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
 
@@ -152,8 +151,3 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: quality-dashboard
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 2976bc87..139b6bb0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -23,3 +23,9 @@ kind: ApplicationSet
 metadata:
   name: ci-helper-app
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 2976bc87..139b6bb0 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -23,3 +23,9 @@ kind: ApplicationSet
 metadata:
   name: ci-helper-app
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-216d8e5a/development/app-of-apps-development.yaml
7a8
>     appstudio.redhat.com/quality-dashboard: "true" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from b8354f63 to 216d8e5a on Tue May 14 18:22:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 45004b39..2d57c6ca 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,9 +94,3 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: ci-helper-app
-$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3d9fd12c..1a18add3 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,7 +12,6 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
-  - ../../base/ci-helper-app
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -158,8 +157,3 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: quality-dashboard
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: ci-helper-app
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 0257c01e..2976bc87 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 0257c01e..2976bc87 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from b8354f63 to 216d8e5a on Tue May 14 18:22:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 45004b39..2d57c6ca 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,9 +94,3 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: ci-helper-app
-$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3d9fd12c..1a18add3 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,7 +12,6 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
-  - ../../base/ci-helper-app
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -158,8 +157,3 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: quality-dashboard
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: ci-helper-app
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 0257c01e..2976bc87 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 0257c01e..2976bc87 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from b8354f63 to 216d8e5a on Tue May 14 18:22:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 45004b39..2d57c6ca 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,9 +94,3 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: ci-helper-app
-$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3d9fd12c..1a18add3 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,7 +12,6 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
-  - ../../base/ci-helper-app
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -158,8 +157,3 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: quality-dashboard
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: ci-helper-app
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 0257c01e..2976bc87 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 0257c01e..2976bc87 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 8eb6d26c to b8354f63 on Tue May 14 17:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
index c67c33d8..64147be9 100644
--- a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
+++ b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/ci-helper-app: "true"
               values:
                 sourceRoot: components/ci-helper-app
                 environment: staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 8eb6d26c to b8354f63 on Tue May 14 17:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
index c67c33d8..64147be9 100644
--- a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
+++ b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/ci-helper-app: "true"
               values:
                 sourceRoot: components/ci-helper-app
                 environment: staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 8eb6d26c to b8354f63 on Tue May 14 17:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
index c67c33d8..64147be9 100644
--- a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
+++ b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/ci-helper-app: "true"
               values:
                 sourceRoot: components/ci-helper-app
                 environment: staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ba3d7edb to 8eb6d26c on Tue May 14 15:40:38 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 361cb0d9..c0265e60 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -28,6 +29,10 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/development/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d2844549..f8293a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,14 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -39,11 +40,15 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
+  #  - path: scale-down-exporter.yaml
+  #    target:
+  #      kind: Deployment
+  #      name: pipeline-metrics-exporter
+  #      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -57,4 +62,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8068e6ba..c007141a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c6444339..1b245534 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9831307c..d152fae6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ba3d7edb to 8eb6d26c on Tue May 14 15:40:38 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 361cb0d9..c0265e60 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -28,6 +29,10 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/development/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d2844549..f8293a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,14 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -39,11 +40,15 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
+  #  - path: scale-down-exporter.yaml
+  #    target:
+  #      kind: Deployment
+  #      name: pipeline-metrics-exporter
+  #      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -57,4 +62,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8068e6ba..c007141a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c6444339..1b245534 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9831307c..d152fae6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-ba3d7edb/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
399,415d398
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
852,867d834
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1918d1884
<     max-result-size: 12288
2024d1989
<     results-from: sidecar-logs
./commit-ba3d7edb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
399,415d398
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
852,867d834
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1918d1884
<     max-result-size: 12288
2024d1989
<     results-from: sidecar-logs
./commit-ba3d7edb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
399,415d398
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
852,867d834
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1918d1884
<     max-result-size: 12288
2024d1989
<     results-from: sidecar-logs 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from ba3d7edb to 8eb6d26c on Tue May 14 15:40:38 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 361cb0d9..c0265e60 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -28,6 +29,10 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/development/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d2844549..f8293a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,14 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -39,11 +40,15 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
+  #  - path: scale-down-exporter.yaml
+  #    target:
+  #      kind: Deployment
+  #      name: pipeline-metrics-exporter
+  #      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -57,4 +62,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8068e6ba..c007141a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c6444339..1b245534 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9831307c..d152fae6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (40 lines)</summary>  

``` 
./commit-ba3d7edb/development/components/pipeline-service/development/kustomize.out.yaml
416,432d415
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
853,868d835
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2027d1993
<     max-result-size: 12288
2133d2098
<     results-from: sidecar-logs 
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
```
 
</details> 
<br> 


</div>
