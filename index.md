# kustomize changes tracked by commits 
### This file generated at Thu Aug  8 08:02:48 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 24fad471 to 177bf16b on Wed Aug 7 19:51:32 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b2ff794f..b9817ef2 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,13 +5,13 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=c14b8e2b6574737ca49f7006740da167b8d0ecf6
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=c14b8e2b6574737ca49f7006740da167b8d0ecf6
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+  newTag: c14b8e2b6574737ca49f7006740da167b8d0ecf6
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+  newTag: c14b8e2b6574737ca49f7006740da167b8d0ecf6 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 24fad471 to 177bf16b on Wed Aug 7 19:51:32 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b2ff794f..b9817ef2 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,13 +5,13 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=c14b8e2b6574737ca49f7006740da167b8d0ecf6
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=c14b8e2b6574737ca49f7006740da167b8d0ecf6
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+  newTag: c14b8e2b6574737ca49f7006740da167b8d0ecf6
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+  newTag: c14b8e2b6574737ca49f7006740da167b8d0ecf6 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (68 lines)</summary>  

``` 
./commit-24fad471/staging/components/multi-platform-controller/staging/kustomize.out.yaml
42d41
<   creationTimestamp: null
49c48
<   - ""
---
>   - apiextensions.k8s.io
51c50
<   - configmaps
---
>   - customresourcedefinitions
54,55d52
<   - list
<   - watch
57a55
>   - events.k8s.io
66c64
<   - pods
---
>   - secrets
68d65
<   - create
71,72d67
<   - patch
<   - update
74,78d68
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
81,82d70
<   - get
<   - list
85d72
<   - watch
87c74
<   - apiextensions.k8s.io
---
>   - ""
89c76
<   - customresourcedefinitions
---
>   - configmaps
91a79,80
>   - list
>   - watch
95a85
>   - taskruns/status
106c96
<   - tekton.dev
---
>   - ""
108c98
<   - taskruns/status
---
>   - pods
111,112d100
<   - delete
<   - deletecollection
493c481
<         image: quay.io/konflux-ci/multi-platform-controller:c14b8e2b6574737ca49f7006740da167b8d0ecf6
---
>         image: quay.io/konflux-ci/multi-platform-controller:8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
535c523
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:c14b8e2b6574737ca49f7006740da167b8d0ecf6
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:8ca330ee291a2a7c2d81d42dcb91aff2acf9e986 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 24fad471 to 177bf16b on Wed Aug 7 19:51:32 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b2ff794f..b9817ef2 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,13 +5,13 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=c14b8e2b6574737ca49f7006740da167b8d0ecf6
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=c14b8e2b6574737ca49f7006740da167b8d0ecf6
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+  newTag: c14b8e2b6574737ca49f7006740da167b8d0ecf6
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
+  newTag: c14b8e2b6574737ca49f7006740da167b8d0ecf6 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (68 lines)</summary>  

``` 
./commit-24fad471/development/components/multi-platform-controller/development/kustomize.out.yaml
42d41
<   creationTimestamp: null
49c48
<   - ""
---
>   - apiextensions.k8s.io
51c50
<   - configmaps
---
>   - customresourcedefinitions
54,55d52
<   - list
<   - watch
57a55
>   - events.k8s.io
66c64
<   - pods
---
>   - secrets
68d65
<   - create
71,72d67
<   - patch
<   - update
74,78d68
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
81,82d70
<   - get
<   - list
85d72
<   - watch
87c74
<   - apiextensions.k8s.io
---
>   - ""
89c76
<   - customresourcedefinitions
---
>   - configmaps
91a79,80
>   - list
>   - watch
95a85
>   - taskruns/status
106c96
<   - tekton.dev
---
>   - ""
108c98
<   - taskruns/status
---
>   - pods
111,112d100
<   - delete
<   - deletecollection
269c257
<         image: quay.io/konflux-ci/multi-platform-controller:c14b8e2b6574737ca49f7006740da167b8d0ecf6
---
>         image: quay.io/konflux-ci/multi-platform-controller:8ca330ee291a2a7c2d81d42dcb91aff2acf9e986
311c299
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:c14b8e2b6574737ca49f7006740da167b8d0ecf6
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:8ca330ee291a2a7c2d81d42dcb91aff2acf9e986 
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
<h3>2: Production changes from 5a6f9274 to 24fad471 on Wed Aug 7 17:33:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e00e5ee3..b9638bfe 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -25,6 +25,8 @@ spec:
           mailgunSenderEmail: mailgun.sender.email
           ref: host-operator-secret
         templateSetName: 'appstudio'
+      publicViewerConfig:
+        enabled: true
       registrationService:
         auth:
           authClientConfigRaw: '{
@@ -69,4 +71,4 @@ spec:
         memberStatus:
           gitHubSecret:
             ref: member-operator-secret
-            accessTokenKey: github.access.token
\ No newline at end of file
+            accessTokenKey: github.access.token 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5a6f9274 to 24fad471 on Wed Aug 7 17:33:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e00e5ee3..b9638bfe 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -25,6 +25,8 @@ spec:
           mailgunSenderEmail: mailgun.sender.email
           ref: host-operator-secret
         templateSetName: 'appstudio'
+      publicViewerConfig:
+        enabled: true
       registrationService:
         auth:
           authClientConfigRaw: '{
@@ -69,4 +71,4 @@ spec:
         memberStatus:
           gitHubSecret:
             ref: member-operator-secret
-            accessTokenKey: github.access.token
\ No newline at end of file
+            accessTokenKey: github.access.token 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 5a6f9274 to 24fad471 on Wed Aug 7 17:33:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e00e5ee3..b9638bfe 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -25,6 +25,8 @@ spec:
           mailgunSenderEmail: mailgun.sender.email
           ref: host-operator-secret
         templateSetName: 'appstudio'
+      publicViewerConfig:
+        enabled: true
       registrationService:
         auth:
           authClientConfigRaw: '{
@@ -69,4 +71,4 @@ spec:
         memberStatus:
           gitHubSecret:
             ref: member-operator-secret
-            accessTokenKey: github.access.token
\ No newline at end of file
+            accessTokenKey: github.access.token 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from f50ee652 to 5a6f9274 on Wed Aug 7 16:46:49 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 1098cb53..164a000e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -171,4 +171,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-tracing
\ No newline at end of file
+      name: tracing-workload-tracing
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from f50ee652 to 5a6f9274 on Wed Aug 7 16:46:49 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 1098cb53..164a000e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -171,4 +171,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-tracing
\ No newline at end of file
+      name: tracing-workload-tracing
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from f50ee652 to 5a6f9274 on Wed Aug 7 16:46:49 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 1098cb53..164a000e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -171,4 +171,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-tracing
\ No newline at end of file
+      name: tracing-workload-tracing
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 6ec66970 to f50ee652 on Wed Aug 7 15:18:51 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index ad0eb82e..1098cb53 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/konflux-ci
   - ../../base/cluster-secret-store-rh
   - ../../base/toolchain-member
+  - ../../base/eaas
 
 namespace: konflux-public-production
 
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-base-domain-param.yaml
new file mode 100644
index 00000000..70237afc
--- /dev/null
+++ b/components/cluster-as-a-service/production/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: prod.konfluxeaas.com
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
new file mode 100644
index 00000000..b0ec83fa
--- /dev/null
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -0,0 +1,56 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-credentials
+  namespace: clusters
+  labels:
+    hypershift.openshift.io/safe-to-delete-with-cluster: "false"
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-serviceaccount
+  - extract:
+      key: production/eaas/konflux-eaas-prod
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift
+    template:
+      data:
+        aws_access_key_id: "{{ .aws_access_key_id }}"
+        aws_secret_access_key: "{{ .aws_secret_access_key }}"
+        pullSecret: "{{ .ocp_pull_secret }}"
+        baseDomain: prod.konfluxeaas.com
+        ssh-privatekey: unused
+        ssh-publickey: unused
+
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-oidc-credentials
+  namespace: local-cluster
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-bucket-s3
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift-operator-oidc-provider-s3-credentials
+    template:
+      data:
+        bucket: prod-eaas-bucket
+        region: us-east-1
+        credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index d0b07b07..0258ccfc 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -4,3 +4,10 @@ kind: Kustomization
 resources:
   - ../base
   - ../../openshift-gitops
+  - external-secrets.yaml
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 188854a6..61f288b9 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-prd-es01.1ion.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (61 lines)</summary>  

``` 
./commit-6ec66970/production/components/cluster-as-a-service/production/kustomize.out.yaml
233,234d232
<           - name: baseDomain
<             value: prod.konfluxeaas.com
283,338d280
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   labels:
<     hypershift.openshift.io/safe-to-delete-with-cluster: "false"
<   name: cluster-as-a-service-hypershift-credentials
<   namespace: clusters
< spec:
<   dataFrom:
<   - extract:
<       key: production/eaas/prod-eaas-serviceaccount
<   - extract:
<       key: production/eaas/konflux-eaas-prod
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: hypershift
<     template:
<       data:
<         aws_access_key_id: '{{ .aws_access_key_id }}'
<         aws_secret_access_key: '{{ .aws_secret_access_key }}'
<         baseDomain: prod.konfluxeaas.com
<         pullSecret: '{{ .ocp_pull_secret }}'
<         ssh-privatekey: unused
<         ssh-publickey: unused
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   name: cluster-as-a-service-hypershift-oidc-credentials
<   namespace: local-cluster
< spec:
<   dataFrom:
<   - extract:
<       key: production/eaas/prod-eaas-bucket-s3
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: hypershift-operator-oidc-provider-s3-credentials
<     template:
<       data:
<         bucket: prod-eaas-bucket
<         credentials: |
<           [default]
<           aws_access_key_id={{ .aws_access_key_id }}
<           aws_secret_access_key={{ .aws_secret_access_key }}
<         region: us-east-1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6ec66970 to f50ee652 on Wed Aug 7 15:18:51 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index ad0eb82e..1098cb53 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/konflux-ci
   - ../../base/cluster-secret-store-rh
   - ../../base/toolchain-member
+  - ../../base/eaas
 
 namespace: konflux-public-production
 
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-base-domain-param.yaml
new file mode 100644
index 00000000..70237afc
--- /dev/null
+++ b/components/cluster-as-a-service/production/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: prod.konfluxeaas.com
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
new file mode 100644
index 00000000..b0ec83fa
--- /dev/null
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -0,0 +1,56 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-credentials
+  namespace: clusters
+  labels:
+    hypershift.openshift.io/safe-to-delete-with-cluster: "false"
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-serviceaccount
+  - extract:
+      key: production/eaas/konflux-eaas-prod
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift
+    template:
+      data:
+        aws_access_key_id: "{{ .aws_access_key_id }}"
+        aws_secret_access_key: "{{ .aws_secret_access_key }}"
+        pullSecret: "{{ .ocp_pull_secret }}"
+        baseDomain: prod.konfluxeaas.com
+        ssh-privatekey: unused
+        ssh-publickey: unused
+
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-oidc-credentials
+  namespace: local-cluster
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-bucket-s3
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift-operator-oidc-provider-s3-credentials
+    template:
+      data:
+        bucket: prod-eaas-bucket
+        region: us-east-1
+        credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index d0b07b07..0258ccfc 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -4,3 +4,10 @@ kind: Kustomization
 resources:
   - ../base
   - ../../openshift-gitops
+  - external-secrets.yaml
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 188854a6..61f288b9 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-prd-es01.1ion.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 6ec66970 to f50ee652 on Wed Aug 7 15:18:51 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index ad0eb82e..1098cb53 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/konflux-ci
   - ../../base/cluster-secret-store-rh
   - ../../base/toolchain-member
+  - ../../base/eaas
 
 namespace: konflux-public-production
 
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-base-domain-param.yaml
new file mode 100644
index 00000000..70237afc
--- /dev/null
+++ b/components/cluster-as-a-service/production/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: prod.konfluxeaas.com
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
new file mode 100644
index 00000000..b0ec83fa
--- /dev/null
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -0,0 +1,56 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-credentials
+  namespace: clusters
+  labels:
+    hypershift.openshift.io/safe-to-delete-with-cluster: "false"
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-serviceaccount
+  - extract:
+      key: production/eaas/konflux-eaas-prod
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift
+    template:
+      data:
+        aws_access_key_id: "{{ .aws_access_key_id }}"
+        aws_secret_access_key: "{{ .aws_secret_access_key }}"
+        pullSecret: "{{ .ocp_pull_secret }}"
+        baseDomain: prod.konfluxeaas.com
+        ssh-privatekey: unused
+        ssh-publickey: unused
+
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-oidc-credentials
+  namespace: local-cluster
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-bucket-s3
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift-operator-oidc-provider-s3-credentials
+    template:
+      data:
+        bucket: prod-eaas-bucket
+        region: us-east-1
+        credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index d0b07b07..0258ccfc 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -4,3 +4,10 @@ kind: Kustomization
 resources:
   - ../base
   - ../../openshift-gitops
+  - external-secrets.yaml
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 188854a6..61f288b9 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-prd-es01.1ion.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90 
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
```
 
</details> 
<br> 


</div>
