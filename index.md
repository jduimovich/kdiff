# kustomize changes tracked by commits 
### This file generated at Thu Jan 25 16:03:03 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1bc83bf1 to 39eb7067 on Thu Jan 25 13:55:17 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/authentication/development/kustomization.yaml b/components/authentication/development/kustomization.yaml
deleted file mode 100644
index d823e3dd..00000000
--- a/components/authentication/development/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - spi-vault-admin.yaml
diff --git a/components/authentication/development/spi-vault-admin.yaml b/components/authentication/development/spi-vault-admin.yaml
deleted file mode 100644
index 09d1f8bb..00000000
--- a/components/authentication/development/spi-vault-admin.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-kind: Role
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: vault-admin
-  namespace: spi-vault
-rules:
-  - verbs:
-      - get
-      - delete
-    apiGroups:
-      - ''
-    resources:
-      - pods
-  - verbs:
-      - create
-    apiGroups:
-      - ''
-    resources:
-      - pods/exec
-  - verbs:
-      - get
-      - delete
-      - create
-    apiGroups:
-      - ''
-    resources:
-      - secrets
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: vault-admin
-  namespace: spi-vault
-subjects:
-  - kind: User
-    name: skabashnyuk
-  - kind: User
-    name: mshaposhnik
-  - kind: User
-    name: metlos
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: vault-admin 
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
<h3>1: Staging changes from 1bc83bf1 to 39eb7067 on Thu Jan 25 13:55:17 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/authentication/development/kustomization.yaml b/components/authentication/development/kustomization.yaml
deleted file mode 100644
index d823e3dd..00000000
--- a/components/authentication/development/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - spi-vault-admin.yaml
diff --git a/components/authentication/development/spi-vault-admin.yaml b/components/authentication/development/spi-vault-admin.yaml
deleted file mode 100644
index 09d1f8bb..00000000
--- a/components/authentication/development/spi-vault-admin.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-kind: Role
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: vault-admin
-  namespace: spi-vault
-rules:
-  - verbs:
-      - get
-      - delete
-    apiGroups:
-      - ''
-    resources:
-      - pods
-  - verbs:
-      - create
-    apiGroups:
-      - ''
-    resources:
-      - pods/exec
-  - verbs:
-      - get
-      - delete
-      - create
-    apiGroups:
-      - ''
-    resources:
-      - secrets
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: vault-admin
-  namespace: spi-vault
-subjects:
-  - kind: User
-    name: skabashnyuk
-  - kind: User
-    name: mshaposhnik
-  - kind: User
-    name: metlos
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: vault-admin 
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
<h3>1: Development changes from 1bc83bf1 to 39eb7067 on Thu Jan 25 13:55:17 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/authentication/development/kustomization.yaml b/components/authentication/development/kustomization.yaml
deleted file mode 100644
index d823e3dd..00000000
--- a/components/authentication/development/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - spi-vault-admin.yaml
diff --git a/components/authentication/development/spi-vault-admin.yaml b/components/authentication/development/spi-vault-admin.yaml
deleted file mode 100644
index 09d1f8bb..00000000
--- a/components/authentication/development/spi-vault-admin.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-kind: Role
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: vault-admin
-  namespace: spi-vault
-rules:
-  - verbs:
-      - get
-      - delete
-    apiGroups:
-      - ''
-    resources:
-      - pods
-  - verbs:
-      - create
-    apiGroups:
-      - ''
-    resources:
-      - pods/exec
-  - verbs:
-      - get
-      - delete
-      - create
-    apiGroups:
-      - ''
-    resources:
-      - secrets
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: vault-admin
-  namespace: spi-vault
-subjects:
-  - kind: User
-    name: skabashnyuk
-  - kind: User
-    name: mshaposhnik
-  - kind: User
-    name: metlos
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: vault-admin 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1bc83bf1/development/components: authentication 
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
<h3>2: Production changes from 44fb4cae to 1bc83bf1 on Thu Jan 25 08:26:31 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 6d43bf91..5da9470b 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: dd0e53c2db66a5c1a1684ef988b35427740b9645
+    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 992851b2..ebeace30 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: dd0e53c2db66a5c1a1684ef988b35427740b9645
+    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
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
<h3>2: Staging changes from 44fb4cae to 1bc83bf1 on Thu Jan 25 08:26:31 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 6d43bf91..5da9470b 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: dd0e53c2db66a5c1a1684ef988b35427740b9645
+    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 992851b2..ebeace30 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: dd0e53c2db66a5c1a1684ef988b35427740b9645
+    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
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
<h3>2: Development changes from 44fb4cae to 1bc83bf1 on Thu Jan 25 08:26:31 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 6d43bf91..5da9470b 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: dd0e53c2db66a5c1a1684ef988b35427740b9645
+    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 992851b2..ebeace30 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=dd0e53c2db66a5c1a1684ef988b35427740b9645
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: dd0e53c2db66a5c1a1684ef988b35427740b9645
+    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from eaf411b5 to 44fb4cae on Thu Jan 25 06:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (265 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 3e2e469b..9b439b81 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -87,7 +87,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
index a9b04357..8a97a035 100644
--- a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
@@ -8,7 +8,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index ef701b44..032b03cb 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -9,7 +9,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/testing/rbac.yaml b/components/pipeline-service/base/testing/rbac.yaml
index ce5b840e..ccdf6322 100644
--- a/components/pipeline-service/base/testing/rbac.yaml
+++ b/components/pipeline-service/base/testing/rbac.yaml
@@ -29,7 +29,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 08631788..f4684e15 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 24be2b08..de5c012b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aadeafa8..a25eba6d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 38fa5b22..2cd4a696 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0081246e..4fd7a7a3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
index 2b309b89..a387417b 100644
--- a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
+++ b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   kind: ClusterRole
   name: view 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (39 lines)</summary>  

``` 
./commit-eaf411b5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/production/components/sprayproxy/production/kustomize.out.yaml
70c70
<   name: konflux-pipeline-service
---
>   name: Pipeline Service 
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
<h3>3: Staging changes from eaf411b5 to 44fb4cae on Thu Jan 25 06:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (265 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 3e2e469b..9b439b81 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -87,7 +87,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
index a9b04357..8a97a035 100644
--- a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
@@ -8,7 +8,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index ef701b44..032b03cb 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -9,7 +9,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/testing/rbac.yaml b/components/pipeline-service/base/testing/rbac.yaml
index ce5b840e..ccdf6322 100644
--- a/components/pipeline-service/base/testing/rbac.yaml
+++ b/components/pipeline-service/base/testing/rbac.yaml
@@ -29,7 +29,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 08631788..f4684e15 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 24be2b08..de5c012b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aadeafa8..a25eba6d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 38fa5b22..2cd4a696 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0081246e..4fd7a7a3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
index 2b309b89..a387417b 100644
--- a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
+++ b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   kind: ClusterRole
   name: view 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (56 lines)</summary>  

``` 
./commit-eaf411b5/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/staging/components/sprayproxy/staging/kustomize.out.yaml
70c70
<   name: konflux-pipeline-service
---
>   name: Pipeline Service 
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
<h3>3: Development changes from eaf411b5 to 44fb4cae on Thu Jan 25 06:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (265 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 3e2e469b..9b439b81 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -87,7 +87,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
index a9b04357..8a97a035 100644
--- a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
@@ -8,7 +8,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index ef701b44..032b03cb 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -9,7 +9,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/testing/rbac.yaml b/components/pipeline-service/base/testing/rbac.yaml
index ce5b840e..ccdf6322 100644
--- a/components/pipeline-service/base/testing/rbac.yaml
+++ b/components/pipeline-service/base/testing/rbac.yaml
@@ -29,7 +29,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 08631788..f4684e15 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 24be2b08..de5c012b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aadeafa8..a25eba6d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 38fa5b22..2cd4a696 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0081246e..4fd7a7a3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
index 2b309b89..a387417b 100644
--- a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
+++ b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   kind: ClusterRole
   name: view 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-eaf411b5/development/components/pipeline-service/development/kustomize.out.yaml
605c605
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
638c638
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
768c768
<   name: konflux-pipeline-service
---
>   name: Pipeline Service 
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
<h3>4: Production changes from 105b02a9 to eaf411b5 on Thu Jan 25 05:55:18 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 424b4f26..27bb5cb0 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -2,4 +2,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - ./results-cluster-viewer.yaml
diff --git a/components/authentication/staging/results-cluster-viewer.yaml b/components/authentication/staging/results-cluster-viewer.yaml
deleted file mode 100644
index 6f28405b..00000000
--- a/components/authentication/staging/results-cluster-viewer.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-rules:
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: results-cluster-viewer
-subjects:
-  - kind: User
-    name: gabemontero
-    apiGroup: rbac.authorization.k8s.io
-  - kind: User
-    name: sayan-biswas
-    apiGroup: rbac.authorization.k8s.io 
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
<h3>4: Staging changes from 105b02a9 to eaf411b5 on Thu Jan 25 05:55:18 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 424b4f26..27bb5cb0 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -2,4 +2,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - ./results-cluster-viewer.yaml
diff --git a/components/authentication/staging/results-cluster-viewer.yaml b/components/authentication/staging/results-cluster-viewer.yaml
deleted file mode 100644
index 6f28405b..00000000
--- a/components/authentication/staging/results-cluster-viewer.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-rules:
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: results-cluster-viewer
-subjects:
-  - kind: User
-    name: gabemontero
-    apiGroup: rbac.authorization.k8s.io
-  - kind: User
-    name: sayan-biswas
-    apiGroup: rbac.authorization.k8s.io 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-105b02a9/staging/components/authentication/staging/kustomize.out.yaml
406a407,421
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
572a588,603
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: results-cluster-viewer
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: results-cluster-viewer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: gabemontero
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sayan-biswas 
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
<h3>4: Development changes from 105b02a9 to eaf411b5 on Thu Jan 25 05:55:18 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 424b4f26..27bb5cb0 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -2,4 +2,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - ./results-cluster-viewer.yaml
diff --git a/components/authentication/staging/results-cluster-viewer.yaml b/components/authentication/staging/results-cluster-viewer.yaml
deleted file mode 100644
index 6f28405b..00000000
--- a/components/authentication/staging/results-cluster-viewer.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-rules:
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: results-cluster-viewer
-subjects:
-  - kind: User
-    name: gabemontero
-    apiGroup: rbac.authorization.k8s.io
-  - kind: User
-    name: sayan-biswas
-    apiGroup: rbac.authorization.k8s.io 
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
