# kustomize changes tracked by commits 
### This file generated at Thu Feb  1 16:03:34 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 87b87699 to 6c4e359b on Thu Feb 1 14:04:39 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index ce8a58e9..a2af99d4 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index bbc38b39..7494ce80 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 87b87699 to 6c4e359b on Thu Feb 1 14:04:39 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index ce8a58e9..a2af99d4 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index bbc38b39..7494ce80 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
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
<h3>1: Development changes from 87b87699 to 6c4e359b on Thu Feb 1 14:04:39 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index ce8a58e9..a2af99d4 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index bbc38b39..7494ce80 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 0c371727 to 87b87699 on Thu Feb 1 07:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index 1f0f1e86..f4f09109 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -13,6 +13,7 @@ spec:
           name: mtls-ca-validators
           namespace: group-sync-operator
         insecure: false
+        prune: true
         rfc2307:
           usersQuery:
             baseDN: 'dc=redhat,dc=com' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 0c371727 to 87b87699 on Thu Feb 1 07:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index 1f0f1e86..f4f09109 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -13,6 +13,7 @@ spec:
           name: mtls-ca-validators
           namespace: group-sync-operator
         insecure: false
+        prune: true
         rfc2307:
           usersQuery:
             baseDN: 'dc=redhat,dc=com' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-0c371727/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
827d826
<       prune: true 
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
<h3>2: Development changes from 0c371727 to 87b87699 on Thu Feb 1 07:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index 1f0f1e86..f4f09109 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -13,6 +13,7 @@ spec:
           name: mtls-ca-validators
           namespace: group-sync-operator
         insecure: false
+        prune: true
         rfc2307:
           usersQuery:
             baseDN: 'dc=redhat,dc=com' 
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
<h3>3: Production changes from 81e83314 to 0c371727 on Thu Feb 1 03:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..f303651d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,7 @@ data:
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "52.117.38.122"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81e83314/production/components/multi-platform-controller/production/kustomize.out.yaml
160c160
<   host.power-rhtap-prod-2.address: 52.117.38.122
---
>   host.power-rhtap-prod-2.address: 52.117.38.109 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 81e83314 to 0c371727 on Thu Feb 1 03:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..f303651d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,7 @@ data:
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "52.117.38.122"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key" 
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
<h3>3: Development changes from 81e83314 to 0c371727 on Thu Feb 1 03:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..f303651d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,7 @@ data:
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "52.117.38.122"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key" 
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
<h3>4: Production changes from 88e5a0b0 to 81e83314 on Thu Feb 1 00:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index eb08b3d1..dae8dd44 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
+  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 1673f98e..5001d2cc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 780d285f12a705da4740c8018e4831c9f6cd79af
+    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f69e9e5e..02e3d6a6 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-88e5a0b0/production/components/jvm-build-service/production/kustomize.out.yaml
219,221d218
<                         startTime:
<                           format: int64
<                           type: integer
485,486d481
<               potentialBuildRecipesIndex:
<                 type: integer
1396c1391
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
1447,1448c1442,1443
<     ubi7:
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk7:
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
1451,1452c1446,1447
<     ubi8:
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk17:
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 88e5a0b0 to 81e83314 on Thu Feb 1 00:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index eb08b3d1..dae8dd44 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
+  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 1673f98e..5001d2cc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 780d285f12a705da4740c8018e4831c9f6cd79af
+    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f69e9e5e..02e3d6a6 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-88e5a0b0/staging/components/jvm-build-service/staging/kustomize.out.yaml
219,221d218
<                         startTime:
<                           format: int64
<                           type: integer
485,486d481
<               potentialBuildRecipesIndex:
<                 type: integer
1396c1391
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
1447,1448c1442,1443
<     ubi7:
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk7:
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
1451,1452c1446,1447
<     ubi8:
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk17:
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a 
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
<h3>4: Development changes from 88e5a0b0 to 81e83314 on Thu Feb 1 00:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index eb08b3d1..dae8dd44 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
+  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 1673f98e..5001d2cc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 780d285f12a705da4740c8018e4831c9f6cd79af
+    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f69e9e5e..02e3d6a6 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-88e5a0b0/development/components/jvm-build-service/development/kustomize.out.yaml
219,221d218
<                         startTime:
<                           format: int64
<                           type: integer
485,486d481
<               potentialBuildRecipesIndex:
<                 type: integer
1396c1391
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
1426,1427c1421,1422
<     ubi7:
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk7:
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
1430,1431c1425,1426
<     ubi8:
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk17:
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a 
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
