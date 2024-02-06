# kustomize changes tracked by commits 
### This file generated at Tue Feb  6 20:04:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 13e48c64 to 9547d590 on Tue Feb 6 19:15:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 6a62a436..c855e485 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -24,18 +24,9 @@ metadata:
   name: has-admin
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
-  - kind: User
-    name: kim-tsao
-  - kind: User
-    name: maysunfaisal
-  - kind: User
-    name: yangcao77
-  - kind: User
-    name: thepetk
-  - kind: User
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index fca9525a..5840a468 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,27 +4,9 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: johnmcollier
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jduimovich
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: kim-tsao
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: yangcao77
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: maysunfaisal
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/staging/rbac/has-exec.yaml b/components/has/staging/rbac/has-exec.yaml
index 41f5039e..6d691941 100644
--- a/components/has/staging/rbac/has-exec.yaml
+++ b/components/has/staging/rbac/has-exec.yaml
@@ -17,8 +17,9 @@ metadata:
   name: has-exec
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
./commit-13e48c64/production/components/has/production/kustomize.out.yaml
548,549c548,567
<   kind: Group
<   name: konflux-has
---
>   kind: User
>   name: johnmcollier
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: kim-tsao
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: yangcao77
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: maysunfaisal
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: thepetk
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: michael-valdron
575,577c593,604
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier
> - kind: User
>   name: kim-tsao
> - kind: User
>   name: maysunfaisal
> - kind: User
>   name: yangcao77
> - kind: User
>   name: thepetk
> - kind: User
>   name: michael-valdron 
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
<h3>1: Staging changes from 13e48c64 to 9547d590 on Tue Feb 6 19:15:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 6a62a436..c855e485 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -24,18 +24,9 @@ metadata:
   name: has-admin
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
-  - kind: User
-    name: kim-tsao
-  - kind: User
-    name: maysunfaisal
-  - kind: User
-    name: yangcao77
-  - kind: User
-    name: thepetk
-  - kind: User
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index fca9525a..5840a468 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,27 +4,9 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: johnmcollier
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jduimovich
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: kim-tsao
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: yangcao77
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: maysunfaisal
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/staging/rbac/has-exec.yaml b/components/has/staging/rbac/has-exec.yaml
index 41f5039e..6d691941 100644
--- a/components/has/staging/rbac/has-exec.yaml
+++ b/components/has/staging/rbac/has-exec.yaml
@@ -17,8 +17,9 @@ metadata:
   name: has-exec
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (49 lines)</summary>  

``` 
./commit-13e48c64/staging/components/has/staging/kustomize.out.yaml
561,562c561,580
<   kind: Group
<   name: konflux-has
---
>   kind: User
>   name: johnmcollier
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: kim-tsao
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: yangcao77
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: maysunfaisal
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: thepetk
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: michael-valdron
588,590c606,617
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier
> - kind: User
>   name: kim-tsao
> - kind: User
>   name: maysunfaisal
> - kind: User
>   name: yangcao77
> - kind: User
>   name: thepetk
> - kind: User
>   name: michael-valdron
602,604c629,630
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier 
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
<h3>1: Development changes from 13e48c64 to 9547d590 on Tue Feb 6 19:15:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 6a62a436..c855e485 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -24,18 +24,9 @@ metadata:
   name: has-admin
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
-  - kind: User
-    name: kim-tsao
-  - kind: User
-    name: maysunfaisal
-  - kind: User
-    name: yangcao77
-  - kind: User
-    name: thepetk
-  - kind: User
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index fca9525a..5840a468 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,27 +4,9 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: johnmcollier
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jduimovich
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: kim-tsao
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: yangcao77
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: maysunfaisal
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/staging/rbac/has-exec.yaml b/components/has/staging/rbac/has-exec.yaml
index 41f5039e..6d691941 100644
--- a/components/has/staging/rbac/has-exec.yaml
+++ b/components/has/staging/rbac/has-exec.yaml
@@ -17,8 +17,9 @@ metadata:
   name: has-exec
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
./commit-13e48c64/development/components/has/development/kustomize.out.yaml
542,543c542,561
<   kind: Group
<   name: konflux-has
---
>   kind: User
>   name: johnmcollier
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: kim-tsao
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: yangcao77
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: maysunfaisal
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: thepetk
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: michael-valdron
569,571c587,598
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier
> - kind: User
>   name: kim-tsao
> - kind: User
>   name: maysunfaisal
> - kind: User
>   name: yangcao77
> - kind: User
>   name: thepetk
> - kind: User
>   name: michael-valdron 
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
<h3>2: Production changes from d2106aee to 13e48c64 on Tue Feb 6 17:58:42 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1f1991ef..fa352efa 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:4119ae3cbf40efab48301db357fd509ccd3cc609d059050feaf54cfbbbb0664e
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f90b6784..d19c4360 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=b9afdb997985d2d60b904ec71eb2475ca6b710ca
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
+      - verify_ec_task_git_revision=62fb6b030f68c33442ba051ea58d8ace463fb791
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-d2106aee/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
378c378
<   verify_ec_task_git_revision: 62fb6b030f68c33442ba051ea58d8ace463fb791
---
>   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:4119ae3cbf40efab48301db357fd509ccd3cc609d059050feaf54cfbbbb0664e
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a 
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
<h3>2: Staging changes from d2106aee to 13e48c64 on Tue Feb 6 17:58:42 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1f1991ef..fa352efa 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:4119ae3cbf40efab48301db357fd509ccd3cc609d059050feaf54cfbbbb0664e
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f90b6784..d19c4360 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=b9afdb997985d2d60b904ec71eb2475ca6b710ca
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
+      - verify_ec_task_git_revision=62fb6b030f68c33442ba051ea58d8ace463fb791
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-d2106aee/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
378c378
<   verify_ec_task_git_revision: 62fb6b030f68c33442ba051ea58d8ace463fb791
---
>   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:4119ae3cbf40efab48301db357fd509ccd3cc609d059050feaf54cfbbbb0664e
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a 
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
<h3>2: Development changes from d2106aee to 13e48c64 on Tue Feb 6 17:58:42 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1f1991ef..fa352efa 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:4119ae3cbf40efab48301db357fd509ccd3cc609d059050feaf54cfbbbb0664e
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f90b6784..d19c4360 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=b9afdb997985d2d60b904ec71eb2475ca6b710ca
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
+      - verify_ec_task_git_revision=62fb6b030f68c33442ba051ea58d8ace463fb791
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-d2106aee/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
378c378
<   verify_ec_task_git_revision: 62fb6b030f68c33442ba051ea58d8ace463fb791
---
>   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:4119ae3cbf40efab48301db357fd509ccd3cc609d059050feaf54cfbbbb0664e
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-00f3625@sha256:4d249ef259ebb821dc350ca657b7b053296e902314d6c2821fa893b1f5b6097d
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2689d04@sha256:5016716a6d138cbb6356362cd5ae49b62fc7ac219371ba952b09d75a275f8ba2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a 
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
<h3>3: Production changes from 9d28cb05 to d2106aee on Tue Feb 6 17:58:35 2024 </h3>  
 
<details> 
<summary>Git Diff (119 lines)</summary>  

``` 
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
index b77a4a0b..848bfdcc 100644
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
index 919f02ba..510e47fc 100644
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -21,7 +21,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -49,7 +49,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
index e5775334..ac1d99ad 100644
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
index afbf4750..bba17f17 100644
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -21,7 +21,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -49,7 +49,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
index faedb0f6..65a7f6e8 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
@@ -11,7 +11,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (67 lines)</summary>  

``` 
./commit-9d28cb05/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml
2363c2363
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
2379c2379
<   name: konflux-gitops
---
>   name: GitOps Service Team
2427c2427
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
2443c2443
<   name: konflux-gitops
---
>   name: GitOps Service Team
2473c2473
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
2489c2489
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
./commit-9d28cb05/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml
2298c2298
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
2314c2314
<   name: konflux-gitops
---
>   name: GitOps Service Team
2362c2362
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
2378c2378
<   name: konflux-gitops
---
>   name: GitOps Service Team
2410c2410
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
./commit-9d28cb05/production/components/gitops/production/stone-prod-p01/kustomize.out.yaml
2298c2298
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
2314c2314
<   name: konflux-gitops
---
>   name: GitOps Service Team
2362c2362
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
2378c2378
<   name: konflux-gitops
---
>   name: GitOps Service Team
2410c2410
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins 
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
<h3>3: Staging changes from 9d28cb05 to d2106aee on Tue Feb 6 17:58:35 2024 </h3>  
 
<details> 
<summary>Git Diff (119 lines)</summary>  

``` 
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
index b77a4a0b..848bfdcc 100644
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
index 919f02ba..510e47fc 100644
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -21,7 +21,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -49,7 +49,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
index e5775334..ac1d99ad 100644
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
index afbf4750..bba17f17 100644
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -21,7 +21,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -49,7 +49,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
index faedb0f6..65a7f6e8 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
@@ -11,7 +11,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (67 lines)</summary>  

``` 
./commit-9d28cb05/staging/components/gitops/staging/stone-stage-p01/kustomize.out.yaml
2298c2298
<   name: konflux-gitops
---
>   name: GitOps Service Team
2314c2314
<   name: konflux-gitops
---
>   name: GitOps Service Team
2362c2362
<   name: konflux-gitops
---
>   name: GitOps Service Team
2378c2378
<   name: konflux-gitops
---
>   name: GitOps Service Team
2410c2410
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
./commit-9d28cb05/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml
2363c2363
<   name: konflux-gitops
---
>   name: GitOps Service Team
2379c2379
<   name: konflux-gitops
---
>   name: GitOps Service Team
2427c2427
<   name: konflux-gitops
---
>   name: GitOps Service Team
2443c2443
<   name: konflux-gitops
---
>   name: GitOps Service Team
2473c2473
<   name: konflux-gitops
---
>   name: GitOps Service Team
2489c2489
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins
./commit-9d28cb05/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml
2298c2298
<   name: konflux-gitops
---
>   name: GitOps Service Team
2314c2314
<   name: konflux-gitops
---
>   name: GitOps Service Team
2362c2362
<   name: konflux-gitops
---
>   name: GitOps Service Team
2378c2378
<   name: konflux-gitops
---
>   name: GitOps Service Team
2410c2410
<   name: konflux-gitops-admins
---
>   name: GitOps Service Team Admins 
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
<h3>3: Development changes from 9d28cb05 to d2106aee on Tue Feb 6 17:58:35 2024 </h3>  
 
<details> 
<summary>Git Diff (119 lines)</summary>  

``` 
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
index b77a4a0b..848bfdcc 100644
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
index 919f02ba..510e47fc 100644
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -21,7 +21,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -49,7 +49,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
index e5775334..ac1d99ad 100644
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team Admins
+    name: konflux-gitops-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
index afbf4750..bba17f17 100644
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -21,7 +21,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -35,7 +35,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -49,7 +49,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
index faedb0f6..65a7f6e8 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
@@ -11,7 +11,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: GitOps Service Team
+    name: konflux-gitops
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
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
<h3>4: Production changes from de639ec0 to 9d28cb05 on Tue Feb 6 15:37:01 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 46d6bfa2..b8ac6fe9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,8 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-de639ec0/production/app-of-apps-production.yaml
1021,1022c1021,1022
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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
<h3>4: Staging changes from de639ec0 to 9d28cb05 on Tue Feb 6 15:37:01 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 46d6bfa2..b8ac6fe9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,8 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-de639ec0/staging/app-of-apps-staging.yaml
975,976c975,976
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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
<h3>4: Development changes from de639ec0 to 9d28cb05 on Tue Feb 6 15:37:01 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 46d6bfa2..b8ac6fe9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,8 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-de639ec0/development/app-of-apps-development.yaml
720,721c720,721
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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
