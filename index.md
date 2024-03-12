# kustomize changes tracked by commits 
### This file generated at Tue Mar 12 08:03:46 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 46794b75 to 6141189c on Tue Mar 12 05:59:11 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 4a1ac7a5..b0f16889 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=d11f693619e15d070fe3b343d256b7c988a3e125
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=d11f693619e15d070fe3b343d256b7c988a3e125
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-46794b75/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:d11f693619e15d070fe3b343d256b7c988a3e125
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:d11f693619e15d070fe3b343d256b7c988a3e125
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:723bed9bd50b053940ff2a1c5cd5e4676e3bc368 
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
<h3>1: Staging changes from 46794b75 to 6141189c on Tue Mar 12 05:59:11 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 4a1ac7a5..b0f16889 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=d11f693619e15d070fe3b343d256b7c988a3e125
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=d11f693619e15d070fe3b343d256b7c988a3e125
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-46794b75/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:d11f693619e15d070fe3b343d256b7c988a3e125
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:d11f693619e15d070fe3b343d256b7c988a3e125
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:723bed9bd50b053940ff2a1c5cd5e4676e3bc368 
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
<h3>1: Development changes from 46794b75 to 6141189c on Tue Mar 12 05:59:11 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 4a1ac7a5..b0f16889 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=d11f693619e15d070fe3b343d256b7c988a3e125
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=d11f693619e15d070fe3b343d256b7c988a3e125
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-46794b75/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:d11f693619e15d070fe3b343d256b7c988a3e125
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:d11f693619e15d070fe3b343d256b7c988a3e125
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:723bed9bd50b053940ff2a1c5cd5e4676e3bc368 
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
<h3>2: Production changes from ec2227fb to 46794b75 on Mon Mar 11 21:27:43 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 2c433900..4a1ac7a5 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=92f795ba34798714fb7dc2f81cf9d8a5766d8934
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=92f795ba34798714fb7dc2f81cf9d8a5766d8934
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 92f795ba34798714fb7dc2f81cf9d8a5766d8934
+  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 92f795ba34798714fb7dc2f81cf9d8a5766d8934
+  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ec2227fb/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:92f795ba34798714fb7dc2f81cf9d8a5766d8934
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:92f795ba34798714fb7dc2f81cf9d8a5766d8934 
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
<h3>2: Staging changes from ec2227fb to 46794b75 on Mon Mar 11 21:27:43 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 2c433900..4a1ac7a5 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=92f795ba34798714fb7dc2f81cf9d8a5766d8934
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=92f795ba34798714fb7dc2f81cf9d8a5766d8934
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 92f795ba34798714fb7dc2f81cf9d8a5766d8934
+  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 92f795ba34798714fb7dc2f81cf9d8a5766d8934
+  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ec2227fb/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:92f795ba34798714fb7dc2f81cf9d8a5766d8934
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:92f795ba34798714fb7dc2f81cf9d8a5766d8934 
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
<h3>2: Development changes from ec2227fb to 46794b75 on Mon Mar 11 21:27:43 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 2c433900..4a1ac7a5 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=92f795ba34798714fb7dc2f81cf9d8a5766d8934
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=92f795ba34798714fb7dc2f81cf9d8a5766d8934
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 92f795ba34798714fb7dc2f81cf9d8a5766d8934
+  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 92f795ba34798714fb7dc2f81cf9d8a5766d8934
+  newTag: 723bed9bd50b053940ff2a1c5cd5e4676e3bc368
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ec2227fb/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:92f795ba34798714fb7dc2f81cf9d8a5766d8934
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:723bed9bd50b053940ff2a1c5cd5e4676e3bc368
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:92f795ba34798714fb7dc2f81cf9d8a5766d8934 
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
<h3>3: Production changes from 1f5cdfcc to ec2227fb on Mon Mar 11 20:27:14 2024 </h3>  
 
<details> 
<summary>Git Diff (346 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index 032b03cb..d22f7b11 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -14,3 +14,34 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
   name: edit
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+  # recent memory leak or hung grpc call issues will require development support running 'oc exec' into the results
+  # watcher pod to collect goroutine dumps and/or pprof data
+  - apiGroups:
+      - ""
+    verbs:
+      - get
+      - list
+      - create
+    resources:
+      - "pod/exec"
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-pipeline-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 729eb02f..16cbf899 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ac2ee693..af214d1c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 8b66a856..d99eaa6e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d7fa1bf6..f24b768c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index dbb78a41..7c674ade 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6ea2e3e7..d68126df 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (108 lines)</summary>  

``` 
./commit-1f5cdfcc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
119,135d118
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pod/exec
<   verbs:
<   - get
<   - list
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
647,662d629
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-service-sre-exec-pprof-data
./commit-1f5cdfcc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
119,135d118
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pod/exec
<   verbs:
<   - get
<   - list
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
647,662d629
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-service-sre-exec-pprof-data
./commit-1f5cdfcc/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
119,135d118
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pod/exec
<   verbs:
<   - get
<   - list
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
647,662d629
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-service-sre-exec-pprof-data 
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
<h3>3: Staging changes from 1f5cdfcc to ec2227fb on Mon Mar 11 20:27:14 2024 </h3>  
 
<details> 
<summary>Git Diff (346 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index 032b03cb..d22f7b11 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -14,3 +14,34 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
   name: edit
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+  # recent memory leak or hung grpc call issues will require development support running 'oc exec' into the results
+  # watcher pod to collect goroutine dumps and/or pprof data
+  - apiGroups:
+      - ""
+    verbs:
+      - get
+      - list
+      - create
+    resources:
+      - "pod/exec"
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-pipeline-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 729eb02f..16cbf899 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ac2ee693..af214d1c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 8b66a856..d99eaa6e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d7fa1bf6..f24b768c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index dbb78a41..7c674ade 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6ea2e3e7..d68126df 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (108 lines)</summary>  

``` 
./commit-1f5cdfcc/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
119,135d118
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pod/exec
<   verbs:
<   - get
<   - list
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
647,662d629
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-service-sre-exec-pprof-data
./commit-1f5cdfcc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
119,135d118
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pod/exec
<   verbs:
<   - get
<   - list
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
647,662d629
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-service-sre-exec-pprof-data
./commit-1f5cdfcc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
119,135d118
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pod/exec
<   verbs:
<   - get
<   - list
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
647,662d629
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-service-sre-exec-pprof-data 
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
<h3>3: Development changes from 1f5cdfcc to ec2227fb on Mon Mar 11 20:27:14 2024 </h3>  
 
<details> 
<summary>Git Diff (346 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index 032b03cb..d22f7b11 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -14,3 +14,34 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
   name: edit
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+  # recent memory leak or hung grpc call issues will require development support running 'oc exec' into the results
+  # watcher pod to collect goroutine dumps and/or pprof data
+  - apiGroups:
+      - ""
+    verbs:
+      - get
+      - list
+      - create
+    resources:
+      - "pod/exec"
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-pipeline-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 729eb02f..16cbf899 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ac2ee693..af214d1c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 8b66a856..d99eaa6e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d7fa1bf6..f24b768c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index dbb78a41..7c674ade 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6ea2e3e7..d68126df 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -113,6 +113,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -634,6 +651,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-1f5cdfcc/development/components/pipeline-service/development/kustomize.out.yaml
104,120d103
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pod/exec
<   verbs:
<   - get
<   - list
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
652,667d634
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pipeline-service-sre-exec-pprof-data
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-service-sre-exec-pprof-data
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service 
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
<h3>4: Production changes from e46f48cb to 1f5cdfcc on Mon Mar 11 15:21:40 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 66342ea7..64a698ca 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d4623ca7..729eb02f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 98cd9930..ac2ee693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 690b3071..8b66a856 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Konflux Production Internal
           custom-console-name: Konflux Production Internal
           custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
index 81ba87d5..31558397 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Production Internal
     custom-console-name: Konflux Production Internal
     custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-e46f48cb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1958,1961c1958,1959
<           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
>           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
./commit-e46f48cb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1958,1961c1958,1959
<           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
>           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
./commit-e46f48cb/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1958,1961c1958,1959
<           custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
>           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com 
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
<h3>4: Staging changes from e46f48cb to 1f5cdfcc on Mon Mar 11 15:21:40 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 66342ea7..64a698ca 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d4623ca7..729eb02f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 98cd9930..ac2ee693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 690b3071..8b66a856 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Konflux Production Internal
           custom-console-name: Konflux Production Internal
           custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
index 81ba87d5..31558397 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Production Internal
     custom-console-name: Konflux Production Internal
     custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
<h3>4: Development changes from e46f48cb to 1f5cdfcc on Mon Mar 11 15:21:40 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 66342ea7..64a698ca 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d4623ca7..729eb02f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 98cd9930..ac2ee693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 690b3071..8b66a856 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1955,8 +1955,10 @@ spec:
           application-name: Konflux Production Internal
           custom-console-name: Konflux Production Internal
           custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
index 81ba87d5..31558397 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Production Internal
     custom-console-name: Konflux Production Internal
     custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
-    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
