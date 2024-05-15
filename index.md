# kustomize changes tracked by commits 
### This file generated at Wed May 15 08:05:15 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f8f6b7f9 to 8e7a1eed on Wed May 15 07:56:42 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index f420d87f..0012c700 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 2dda411e..d5ba3758 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
  
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
<h3>1: Staging changes from f8f6b7f9 to 8e7a1eed on Wed May 15 07:56:42 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index f420d87f..0012c700 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 2dda411e..d5ba3758 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
  
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
<h3>1: Development changes from f8f6b7f9 to 8e7a1eed on Wed May 15 07:56:42 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index f420d87f..0012c700 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 2dda411e..d5ba3758 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f8f6b7f9/development/components/image-controller/development/kustomize.out.yaml
705c705
<         image: quay.io/redhat-appstudio/image-controller:103df04d173a93937ca20c4c0baa8571242b28e2
---
>         image: quay.io/redhat-appstudio/image-controller:8bf9b5eb11f41ecbca1fc5131f803744c519f826 
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
<h3>2: Production changes from c1dbd77a to f8f6b7f9 on Wed May 15 07:07:14 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a7d834d6..491c9783 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=a7729deef996e42df44b9469c086841f3505156f
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=a7729deef996e42df44b9469c086841f3505156f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: a7729deef996e42df44b9469c086841f3505156f
+  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: a7729deef996e42df44b9469c086841f3505156f
+  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c1dbd77a/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:a7729deef996e42df44b9469c086841f3505156f
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:a7729deef996e42df44b9469c086841f3505156f 
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
<h3>2: Staging changes from c1dbd77a to f8f6b7f9 on Wed May 15 07:07:14 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a7d834d6..491c9783 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=a7729deef996e42df44b9469c086841f3505156f
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=a7729deef996e42df44b9469c086841f3505156f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: a7729deef996e42df44b9469c086841f3505156f
+  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: a7729deef996e42df44b9469c086841f3505156f
+  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c1dbd77a/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:a7729deef996e42df44b9469c086841f3505156f
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:a7729deef996e42df44b9469c086841f3505156f 
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
<h3>2: Development changes from c1dbd77a to f8f6b7f9 on Wed May 15 07:07:14 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a7d834d6..491c9783 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=a7729deef996e42df44b9469c086841f3505156f
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=a7729deef996e42df44b9469c086841f3505156f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: a7729deef996e42df44b9469c086841f3505156f
+  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: a7729deef996e42df44b9469c086841f3505156f
+  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c1dbd77a/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:a7729deef996e42df44b9469c086841f3505156f
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:a7729deef996e42df44b9469c086841f3505156f 
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
<h3>3: Production changes from 216d8e5a to c1dbd77a on Tue May 14 20:01:38 2024 </h3>  
 
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
<h3>3: Staging changes from 216d8e5a to c1dbd77a on Tue May 14 20:01:38 2024 </h3>  
 
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
<h3>3: Development changes from 216d8e5a to c1dbd77a on Tue May 14 20:01:38 2024 </h3>  
 
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
<h3>4: Production changes from b8354f63 to 216d8e5a on Tue May 14 18:22:38 2024 </h3>  
 
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
<h3>4: Staging changes from b8354f63 to 216d8e5a on Tue May 14 18:22:38 2024 </h3>  
 
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
<h3>4: Development changes from b8354f63 to 216d8e5a on Tue May 14 18:22:38 2024 </h3>  
 
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
