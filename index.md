# kustomize changes tracked by commits 
### This file generated at Thu Apr 25 00:07:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a2df20a8 to 929104d9 on Wed Apr 24 17:18:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 75fa49c6..0f8f6dc9 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=f6494f5b09c9d0293e7cf73be169188e44a58372
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=6b959be33566133e8eafdbc7a510f6d6fc75ed30
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 202fb3b1..f6aadb07 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=f6494f5b09c9d0293e7cf73be169188e44a58372
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=6b959be33566133e8eafdbc7a510f6d6fc75ed30
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: f6494f5b09c9d0293e7cf73be169188e44a58372
+    newTag: 6b959be33566133e8eafdbc7a510f6d6fc75ed30
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a2df20a8 to 929104d9 on Wed Apr 24 17:18:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 75fa49c6..0f8f6dc9 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=f6494f5b09c9d0293e7cf73be169188e44a58372
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=6b959be33566133e8eafdbc7a510f6d6fc75ed30
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 202fb3b1..f6aadb07 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=f6494f5b09c9d0293e7cf73be169188e44a58372
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=6b959be33566133e8eafdbc7a510f6d6fc75ed30
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: f6494f5b09c9d0293e7cf73be169188e44a58372
+    newTag: 6b959be33566133e8eafdbc7a510f6d6fc75ed30
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from a2df20a8 to 929104d9 on Wed Apr 24 17:18:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 75fa49c6..0f8f6dc9 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=f6494f5b09c9d0293e7cf73be169188e44a58372
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=6b959be33566133e8eafdbc7a510f6d6fc75ed30
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 202fb3b1..f6aadb07 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=f6494f5b09c9d0293e7cf73be169188e44a58372
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=6b959be33566133e8eafdbc7a510f6d6fc75ed30
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: f6494f5b09c9d0293e7cf73be169188e44a58372
+    newTag: 6b959be33566133e8eafdbc7a510f6d6fc75ed30
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a2df20a8/development/components/release/development/kustomize.out.yaml
1765c1765
<         image: quay.io/redhat-appstudio/release-service:6b959be33566133e8eafdbc7a510f6d6fc75ed30
---
>         image: quay.io/redhat-appstudio/release-service:f6494f5b09c9d0293e7cf73be169188e44a58372 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from fd35f18b to a2df20a8 on Wed Apr 24 16:02:48 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 39373245..a7d834d6 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=a7729deef996e42df44b9469c086841f3505156f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=a7729deef996e42df44b9469c086841f3505156f
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
+  newTag: a7729deef996e42df44b9469c086841f3505156f
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
+  newTag: a7729deef996e42df44b9469c086841f3505156f
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fd35f18b/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:a7729deef996e42df44b9469c086841f3505156f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:be9772a90f09736c7aef521d53c1eeb82aa671f7
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:a7729deef996e42df44b9469c086841f3505156f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:be9772a90f09736c7aef521d53c1eeb82aa671f7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from fd35f18b to a2df20a8 on Wed Apr 24 16:02:48 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 39373245..a7d834d6 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=a7729deef996e42df44b9469c086841f3505156f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=a7729deef996e42df44b9469c086841f3505156f
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
+  newTag: a7729deef996e42df44b9469c086841f3505156f
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
+  newTag: a7729deef996e42df44b9469c086841f3505156f
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fd35f18b/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:a7729deef996e42df44b9469c086841f3505156f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:be9772a90f09736c7aef521d53c1eeb82aa671f7
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:a7729deef996e42df44b9469c086841f3505156f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:be9772a90f09736c7aef521d53c1eeb82aa671f7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from fd35f18b to a2df20a8 on Wed Apr 24 16:02:48 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 39373245..a7d834d6 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=a7729deef996e42df44b9469c086841f3505156f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=a7729deef996e42df44b9469c086841f3505156f
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
+  newTag: a7729deef996e42df44b9469c086841f3505156f
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
+  newTag: a7729deef996e42df44b9469c086841f3505156f
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fd35f18b/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:a7729deef996e42df44b9469c086841f3505156f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:be9772a90f09736c7aef521d53c1eeb82aa671f7
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:a7729deef996e42df44b9469c086841f3505156f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:be9772a90f09736c7aef521d53c1eeb82aa671f7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from a313d4c6 to fd35f18b on Tue Apr 23 17:43:37 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 354e6924..fbe75ce4 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2a836d4@sha256:fff7b984994c12cc19edb4dab062c9c0a8b45abe09da13e97e528d894605bab6
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 57bfd5f8..1e3e5478 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6a3f89ca049b00166d4ff21ac11859a951ff2329
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8ea25fcd8dfe4cf3f552d36b97dcbf970a9c5363
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:e3f5f0810f9988abfe3be30414ec49020b61c1b7@sha256:6dccad55da995af50e26d4ef408cbceec6ea739b264968ab97a9a93d5cfad9eb
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5682f93d16166df81248343b21c5d843522acaf2
+      - verify_ec_task_git_revision=e3f5f0810f9988abfe3be30414ec49020b61c1b7
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-a313d4c6/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:e3f5f0810f9988abfe3be30414ec49020b61c1b7@sha256:6dccad55da995af50e26d4ef408cbceec6ea739b264968ab97a9a93d5cfad9eb
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
378c378
<   verify_ec_task_git_revision: e3f5f0810f9988abfe3be30414ec49020b61c1b7
---
>   verify_ec_task_git_revision: 5682f93d16166df81248343b21c5d843522acaf2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2a836d4@sha256:fff7b984994c12cc19edb4dab062c9c0a8b45abe09da13e97e528d894605bab6
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from a313d4c6 to fd35f18b on Tue Apr 23 17:43:37 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 354e6924..fbe75ce4 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2a836d4@sha256:fff7b984994c12cc19edb4dab062c9c0a8b45abe09da13e97e528d894605bab6
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 57bfd5f8..1e3e5478 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6a3f89ca049b00166d4ff21ac11859a951ff2329
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8ea25fcd8dfe4cf3f552d36b97dcbf970a9c5363
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:e3f5f0810f9988abfe3be30414ec49020b61c1b7@sha256:6dccad55da995af50e26d4ef408cbceec6ea739b264968ab97a9a93d5cfad9eb
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5682f93d16166df81248343b21c5d843522acaf2
+      - verify_ec_task_git_revision=e3f5f0810f9988abfe3be30414ec49020b61c1b7
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-a313d4c6/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:e3f5f0810f9988abfe3be30414ec49020b61c1b7@sha256:6dccad55da995af50e26d4ef408cbceec6ea739b264968ab97a9a93d5cfad9eb
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
378c378
<   verify_ec_task_git_revision: e3f5f0810f9988abfe3be30414ec49020b61c1b7
---
>   verify_ec_task_git_revision: 5682f93d16166df81248343b21c5d843522acaf2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2a836d4@sha256:fff7b984994c12cc19edb4dab062c9c0a8b45abe09da13e97e528d894605bab6
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from a313d4c6 to fd35f18b on Tue Apr 23 17:43:37 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 354e6924..fbe75ce4 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2a836d4@sha256:fff7b984994c12cc19edb4dab062c9c0a8b45abe09da13e97e528d894605bab6
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 57bfd5f8..1e3e5478 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6a3f89ca049b00166d4ff21ac11859a951ff2329
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8ea25fcd8dfe4cf3f552d36b97dcbf970a9c5363
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:e3f5f0810f9988abfe3be30414ec49020b61c1b7@sha256:6dccad55da995af50e26d4ef408cbceec6ea739b264968ab97a9a93d5cfad9eb
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5682f93d16166df81248343b21c5d843522acaf2
+      - verify_ec_task_git_revision=e3f5f0810f9988abfe3be30414ec49020b61c1b7
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-a313d4c6/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:e3f5f0810f9988abfe3be30414ec49020b61c1b7@sha256:6dccad55da995af50e26d4ef408cbceec6ea739b264968ab97a9a93d5cfad9eb
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
378c378
<   verify_ec_task_git_revision: e3f5f0810f9988abfe3be30414ec49020b61c1b7
---
>   verify_ec_task_git_revision: 5682f93d16166df81248343b21c5d843522acaf2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2a836d4@sha256:fff7b984994c12cc19edb4dab062c9c0a8b45abe09da13e97e528d894605bab6
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-2a836d4@sha256:a95d8ba89fdecda51f0685dd3b802ba63c16434913d767f14474ae23d7f7fc01
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 18b55966 to a313d4c6 on Tue Apr 23 03:25:23 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 79cac3b9..7f82f9e6 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-18b55966/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
---
>         image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c
1298c1298
<             image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
---
>             image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 18b55966 to a313d4c6 on Tue Apr 23 03:25:23 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 79cac3b9..7f82f9e6 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 18b55966 to a313d4c6 on Tue Apr 23 03:25:23 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 79cac3b9..7f82f9e6 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>
