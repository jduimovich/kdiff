# kustomize changes tracked by commits 
### This file generated at Wed Jan 24 08:05:11 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9a21a84e to b0f8378c on Wed Jan 24 05:53:20 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/build-service/base/rbac/build-admin.yaml b/components/build-service/base/rbac/build-admin.yaml
index bc6862e3..ff660d67 100644
--- a/components/build-service/base/rbac/build-admin.yaml
+++ b/components/build-service/base/rbac/build-admin.yaml
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/build-service/base/rbac/build-maintainer.yaml b/components/build-service/base/rbac/build-maintainer.yaml
index f7473ac7..e1f6de0f 100644
--- a/components/build-service/base/rbac/build-maintainer.yaml
+++ b/components/build-service/base/rbac/build-maintainer.yaml
@@ -28,7 +28,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/build-templates/base/e2e/rolebinding.yaml b/components/build-templates/base/e2e/rolebinding.yaml
index abaedd3a..740dfc98 100644
--- a/components/build-templates/base/e2e/rolebinding.yaml
+++ b/components/build-templates/base/e2e/rolebinding.yaml
@@ -59,7 +59,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/image-controller/base/rbac/image-controller-admin.yaml b/components/image-controller/base/rbac/image-controller-admin.yaml
index eb4e5aed..1c06444e 100644
--- a/components/image-controller/base/rbac/image-controller-admin.yaml
+++ b/components/image-controller/base/rbac/image-controller-admin.yaml
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/image-controller/base/rbac/image-controller-maintainer.yaml b/components/image-controller/base/rbac/image-controller-maintainer.yaml
index fd257c42..cc6000e7 100644
--- a/components/image-controller/base/rbac/image-controller-maintainer.yaml
+++ b/components/image-controller/base/rbac/image-controller-maintainer.yaml
@@ -43,7 +43,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 50c60d57..39b91f32 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-9a21a84e/production/components/build-templates/production/kustomize.out.yaml
128c128
<   name: konflux-build-admins
---
>   name: Build Admins team
./commit-9a21a84e/production/components/image-controller/production/kustomize.out.yaml
390c390
<   name: konflux-build-admins
---
>   name: Build Admins team
417c417
<   name: konflux-build
---
>   name: Build team
./commit-9a21a84e/production/components/tekton-ci/production/kustomize.out.yaml
34c34
<   name: konflux-build
---
>   name: Build team 
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
<h3>1: Staging changes from 9a21a84e to b0f8378c on Wed Jan 24 05:53:20 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/build-service/base/rbac/build-admin.yaml b/components/build-service/base/rbac/build-admin.yaml
index bc6862e3..ff660d67 100644
--- a/components/build-service/base/rbac/build-admin.yaml
+++ b/components/build-service/base/rbac/build-admin.yaml
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/build-service/base/rbac/build-maintainer.yaml b/components/build-service/base/rbac/build-maintainer.yaml
index f7473ac7..e1f6de0f 100644
--- a/components/build-service/base/rbac/build-maintainer.yaml
+++ b/components/build-service/base/rbac/build-maintainer.yaml
@@ -28,7 +28,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/build-templates/base/e2e/rolebinding.yaml b/components/build-templates/base/e2e/rolebinding.yaml
index abaedd3a..740dfc98 100644
--- a/components/build-templates/base/e2e/rolebinding.yaml
+++ b/components/build-templates/base/e2e/rolebinding.yaml
@@ -59,7 +59,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/image-controller/base/rbac/image-controller-admin.yaml b/components/image-controller/base/rbac/image-controller-admin.yaml
index eb4e5aed..1c06444e 100644
--- a/components/image-controller/base/rbac/image-controller-admin.yaml
+++ b/components/image-controller/base/rbac/image-controller-admin.yaml
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/image-controller/base/rbac/image-controller-maintainer.yaml b/components/image-controller/base/rbac/image-controller-maintainer.yaml
index fd257c42..cc6000e7 100644
--- a/components/image-controller/base/rbac/image-controller-maintainer.yaml
+++ b/components/image-controller/base/rbac/image-controller-maintainer.yaml
@@ -43,7 +43,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 50c60d57..39b91f32 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-9a21a84e/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
477c477
<   name: konflux-build-admins
---
>   name: Build Admins team
540c540
<   name: konflux-build
---
>   name: Build team
./commit-9a21a84e/staging/components/build-templates/staging/kustomize.out.yaml
126c126
<   name: konflux-build-admins
---
>   name: Build Admins team
./commit-9a21a84e/staging/components/image-controller/staging/kustomize.out.yaml
390c390
<   name: konflux-build-admins
---
>   name: Build Admins team
417c417
<   name: konflux-build
---
>   name: Build team
./commit-9a21a84e/staging/components/tekton-ci/staging/kustomize.out.yaml
34c34
<   name: konflux-build
---
>   name: Build team 
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
<h3>1: Development changes from 9a21a84e to b0f8378c on Wed Jan 24 05:53:20 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/build-service/base/rbac/build-admin.yaml b/components/build-service/base/rbac/build-admin.yaml
index bc6862e3..ff660d67 100644
--- a/components/build-service/base/rbac/build-admin.yaml
+++ b/components/build-service/base/rbac/build-admin.yaml
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/build-service/base/rbac/build-maintainer.yaml b/components/build-service/base/rbac/build-maintainer.yaml
index f7473ac7..e1f6de0f 100644
--- a/components/build-service/base/rbac/build-maintainer.yaml
+++ b/components/build-service/base/rbac/build-maintainer.yaml
@@ -28,7 +28,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/build-templates/base/e2e/rolebinding.yaml b/components/build-templates/base/e2e/rolebinding.yaml
index abaedd3a..740dfc98 100644
--- a/components/build-templates/base/e2e/rolebinding.yaml
+++ b/components/build-templates/base/e2e/rolebinding.yaml
@@ -59,7 +59,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/image-controller/base/rbac/image-controller-admin.yaml b/components/image-controller/base/rbac/image-controller-admin.yaml
index eb4e5aed..1c06444e 100644
--- a/components/image-controller/base/rbac/image-controller-admin.yaml
+++ b/components/image-controller/base/rbac/image-controller-admin.yaml
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build Admins team
+    name: konflux-build-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/image-controller/base/rbac/image-controller-maintainer.yaml b/components/image-controller/base/rbac/image-controller-maintainer.yaml
index fd257c42..cc6000e7 100644
--- a/components/image-controller/base/rbac/image-controller-maintainer.yaml
+++ b/components/image-controller/base/rbac/image-controller-maintainer.yaml
@@ -43,7 +43,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 50c60d57..39b91f32 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Build team
+    name: konflux-build
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-9a21a84e/development/components/build-service/development/kustomize.out.yaml
477c477
<   name: konflux-build-admins
---
>   name: Build Admins team
540c540
<   name: konflux-build
---
>   name: Build team
./commit-9a21a84e/development/components/build-templates/development/kustomize.out.yaml
116c116
<   name: konflux-build-admins
---
>   name: Build Admins team
./commit-9a21a84e/development/components/image-controller/development/kustomize.out.yaml
390c390
<   name: konflux-build-admins
---
>   name: Build Admins team
417c417
<   name: konflux-build
---
>   name: Build team 
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
<h3>2: Production changes from f54856a2 to 9a21a84e on Wed Jan 24 05:03:58 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/konflux-admins.yaml
similarity index 96%
rename from components/authentication/base/rhtap-admins.yaml
rename to components/authentication/base/konflux-admins.yaml
index d3949d7f..948a4237 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -1,7 +1,7 @@
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: rhtap-admins
+  name: konflux-admins
 rules:
   - apiGroups:
       - appstudio.redhat.com
@@ -13,7 +13,7 @@ rules:
       - enterprisecontractpolicies
       - environments
       - integrationtestscenarios
-      # RHTAP Admins should not be permitted to create or edit InternalRequest resources.
+      # konflux-admins should not be permitted to create or edit InternalRequest resources.
       # - internalrequests
       - promotionruns
       - releaseplanadmissions
@@ -314,20 +314,20 @@ rules:
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: rhtap-admins
+  name: konflux-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: rhtap-admins
+  name: konflux-admins
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: RHTAP Admins
+    name: konflux-admins
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: rhtap-admins-view
+  name: konflux-admins-view
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -335,4 +335,4 @@ roleRef:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: RHTAP Admins
+    name: konflux-admins
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index b90dbf22..3b208818 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -2,7 +2,7 @@ resources:
 - everyone-can-view.yaml
 - component-maintainer.yaml
 - group-sync/
-- rhtap-admins.yaml
+- konflux-admins.yaml
 - admin-checker/
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-f54856a2/production/components/authentication/production/kustomize.out.yaml
96c96
<   name: konflux-admins
---
>   name: rhtap-admins
551c551
<   name: konflux-admins
---
>   name: rhtap-admins
555c555
<   name: konflux-admins
---
>   name: rhtap-admins
559c559
<   name: konflux-admins
---
>   name: RHTAP Admins
564c564
<   name: konflux-admins-view
---
>   name: rhtap-admins-view
572c572
<   name: konflux-admins
---
>   name: RHTAP Admins 
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
<h3>2: Staging changes from f54856a2 to 9a21a84e on Wed Jan 24 05:03:58 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/konflux-admins.yaml
similarity index 96%
rename from components/authentication/base/rhtap-admins.yaml
rename to components/authentication/base/konflux-admins.yaml
index d3949d7f..948a4237 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -1,7 +1,7 @@
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: rhtap-admins
+  name: konflux-admins
 rules:
   - apiGroups:
       - appstudio.redhat.com
@@ -13,7 +13,7 @@ rules:
       - enterprisecontractpolicies
       - environments
       - integrationtestscenarios
-      # RHTAP Admins should not be permitted to create or edit InternalRequest resources.
+      # konflux-admins should not be permitted to create or edit InternalRequest resources.
       # - internalrequests
       - promotionruns
       - releaseplanadmissions
@@ -314,20 +314,20 @@ rules:
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: rhtap-admins
+  name: konflux-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: rhtap-admins
+  name: konflux-admins
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: RHTAP Admins
+    name: konflux-admins
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: rhtap-admins-view
+  name: konflux-admins-view
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -335,4 +335,4 @@ roleRef:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: RHTAP Admins
+    name: konflux-admins
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index b90dbf22..3b208818 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -2,7 +2,7 @@ resources:
 - everyone-can-view.yaml
 - component-maintainer.yaml
 - group-sync/
-- rhtap-admins.yaml
+- konflux-admins.yaml
 - admin-checker/
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
./commit-f54856a2/staging/components/authentication/staging/kustomize.out.yaml
96c96,111
<   name: konflux-admins
---
>   name: results-cluster-viewer
> rules:
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   - logs
>   verbs:
>   - get
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: rhtap-admins
407,421d421
<   name: results-cluster-viewer
< rules:
< - apiGroups:
<   - results.tekton.dev
<   resources:
<   - results
<   - records
<   - logs
<   verbs:
<   - get
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
566c566
<   name: konflux-admins
---
>   name: results-cluster-viewer
570c570
<   name: konflux-admins
---
>   name: results-cluster-viewer
573,574c573,577
<   kind: Group
<   name: konflux-admins
---
>   kind: User
>   name: gabemontero
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sayan-biswas
579c582
<   name: konflux-admins-view
---
>   name: rhtap-admins
583c586
<   name: view
---
>   name: rhtap-admins
587c590
<   name: konflux-admins
---
>   name: RHTAP Admins
592c595
<   name: results-cluster-viewer
---
>   name: rhtap-admins-view
596c599
<   name: results-cluster-viewer
---
>   name: view
599,603c602,603
<   kind: User
<   name: gabemontero
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sayan-biswas
---
>   kind: Group
>   name: RHTAP Admins 
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
<h3>2: Development changes from f54856a2 to 9a21a84e on Wed Jan 24 05:03:58 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/konflux-admins.yaml
similarity index 96%
rename from components/authentication/base/rhtap-admins.yaml
rename to components/authentication/base/konflux-admins.yaml
index d3949d7f..948a4237 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -1,7 +1,7 @@
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: rhtap-admins
+  name: konflux-admins
 rules:
   - apiGroups:
       - appstudio.redhat.com
@@ -13,7 +13,7 @@ rules:
       - enterprisecontractpolicies
       - environments
       - integrationtestscenarios
-      # RHTAP Admins should not be permitted to create or edit InternalRequest resources.
+      # konflux-admins should not be permitted to create or edit InternalRequest resources.
       # - internalrequests
       - promotionruns
       - releaseplanadmissions
@@ -314,20 +314,20 @@ rules:
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: rhtap-admins
+  name: konflux-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: rhtap-admins
+  name: konflux-admins
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: RHTAP Admins
+    name: konflux-admins
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: rhtap-admins-view
+  name: konflux-admins-view
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -335,4 +335,4 @@ roleRef:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: RHTAP Admins
+    name: konflux-admins
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index b90dbf22..3b208818 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -2,7 +2,7 @@ resources:
 - everyone-can-view.yaml
 - component-maintainer.yaml
 - group-sync/
-- rhtap-admins.yaml
+- konflux-admins.yaml
 - admin-checker/
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-f54856a2/development/components/authentication/development/kustomize.out.yaml
124c124
<   name: konflux-admins
---
>   name: rhtap-admins
596c596
<   name: konflux-admins
---
>   name: rhtap-admins
600c600
<   name: konflux-admins
---
>   name: rhtap-admins
604c604
<   name: konflux-admins
---
>   name: RHTAP Admins
609c609
<   name: konflux-admins-view
---
>   name: rhtap-admins-view
617c617
<   name: konflux-admins
---
>   name: RHTAP Admins 
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
<h3>3: Production changes from 347a3f35 to f54856a2 on Wed Jan 24 04:50:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
index 63a6a9ee..c21cfbc0 100644
--- a/components/authentication/base/group-sync/group-sync.yaml
+++ b/components/authentication/base/group-sync/group-sync.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: group-sync-operator
 subjects:
   - kind: Group
-    name: Infra Team
+    name: konflux-infra
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-347a3f35/production/components/authentication/production/kustomize.out.yaml
494c494
<   name: konflux-infra
---
>   name: Infra Team 
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
<h3>3: Staging changes from 347a3f35 to f54856a2 on Wed Jan 24 04:50:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
index 63a6a9ee..c21cfbc0 100644
--- a/components/authentication/base/group-sync/group-sync.yaml
+++ b/components/authentication/base/group-sync/group-sync.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: group-sync-operator
 subjects:
   - kind: Group
-    name: Infra Team
+    name: konflux-infra
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-347a3f35/staging/components/authentication/staging/kustomize.out.yaml
509c509
<   name: konflux-infra
---
>   name: Infra Team 
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
<h3>3: Development changes from 347a3f35 to f54856a2 on Wed Jan 24 04:50:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
index 63a6a9ee..c21cfbc0 100644
--- a/components/authentication/base/group-sync/group-sync.yaml
+++ b/components/authentication/base/group-sync/group-sync.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: group-sync-operator
 subjects:
   - kind: Group
-    name: Infra Team
+    name: konflux-infra
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-347a3f35/development/components/authentication/development/kustomize.out.yaml
522c522
<   name: konflux-infra
---
>   name: Infra Team 
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
<h3>4: Production changes from a786e7c7 to 347a3f35 on Tue Jan 23 22:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2046bd85..f069fe47 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -111,3 +111,23 @@ spec:
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+---
+apiVersion: appstudio.redhat.com/v1alpha1
+kind: EnterpriseContractPolicy
+metadata:
+  name: redhat-trusted-tasks
+  namespace: enterprise-contract-service
+spec:
+  description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
+  name: Red Hat Trusted Tasks
+  sources:
+    - config:
+        exclude: []
+        include:
+          - kind
+          - step_image_registries
+      data:
+        - github.com/release-engineering/rhtap-ec-policy//data
+      name: Default
+      policy:
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-a786e7c7/production/components/enterprise-contract/kustomize.out.yaml
691,710d690
<   name: redhat-trusted-tasks
<   namespace: enterprise-contract-service
< spec:
<   description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
<   name: Red Hat Trusted Tasks
<   sources:
<   - config:
<       exclude: []
<       include:
<       - kind
<       - step_image_registries
<     data:
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata: 
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
<h3>4: Staging changes from a786e7c7 to 347a3f35 on Tue Jan 23 22:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2046bd85..f069fe47 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -111,3 +111,23 @@ spec:
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+---
+apiVersion: appstudio.redhat.com/v1alpha1
+kind: EnterpriseContractPolicy
+metadata:
+  name: redhat-trusted-tasks
+  namespace: enterprise-contract-service
+spec:
+  description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
+  name: Red Hat Trusted Tasks
+  sources:
+    - config:
+        exclude: []
+        include:
+          - kind
+          - step_image_registries
+      data:
+        - github.com/release-engineering/rhtap-ec-policy//data
+      name: Default
+      policy:
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-a786e7c7/staging/components/enterprise-contract/kustomize.out.yaml
691,710d690
<   name: redhat-trusted-tasks
<   namespace: enterprise-contract-service
< spec:
<   description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
<   name: Red Hat Trusted Tasks
<   sources:
<   - config:
<       exclude: []
<       include:
<       - kind
<       - step_image_registries
<     data:
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata: 
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
<h3>4: Development changes from a786e7c7 to 347a3f35 on Tue Jan 23 22:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2046bd85..f069fe47 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -111,3 +111,23 @@ spec:
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+---
+apiVersion: appstudio.redhat.com/v1alpha1
+kind: EnterpriseContractPolicy
+metadata:
+  name: redhat-trusted-tasks
+  namespace: enterprise-contract-service
+spec:
+  description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
+  name: Red Hat Trusted Tasks
+  sources:
+    - config:
+        exclude: []
+        include:
+          - kind
+          - step_image_registries
+      data:
+        - github.com/release-engineering/rhtap-ec-policy//data
+      name: Default
+      policy:
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-a786e7c7/development/components/enterprise-contract/kustomize.out.yaml
691,710d690
<   name: redhat-trusted-tasks
<   namespace: enterprise-contract-service
< spec:
<   description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
<   name: Red Hat Trusted Tasks
<   sources:
<   - config:
<       exclude: []
<       include:
<       - kind
<       - step_image_registries
<     data:
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata: 
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
