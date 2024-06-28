# kustomize changes tracked by commits 
### This file generated at Fri Jun 28 12:04:16 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0180a0bf to 126c43d8 on Fri Jun 28 11:41:11 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index 46ddc25e..31120ce8 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,11 +1,11 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/backend/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 
 images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-backend
-    newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
+  - name: quay.io/konflux-ci/quality-dashboard-backend
+    newName: quay.io/konflux-ci/quality-dashboard-backend
+    newTag: 6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
index b9a0a0b8..33e166d4 100644
--- a/components/quality-dashboard/base/dex/kustomization.yaml
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/dex/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 946770e9..6c5da4e3 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,10 +1,10 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/frontend/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
+  - name: quay.io/konflux-ci/quality-dashboard-frontend
+    newName: quay.io/konflux-ci/quality-dashboard-frontend
+    newTag: 6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
\ No newline at end of file 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 0180a0bf to 126c43d8 on Fri Jun 28 11:41:11 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index 46ddc25e..31120ce8 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,11 +1,11 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/backend/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 
 images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-backend
-    newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
+  - name: quay.io/konflux-ci/quality-dashboard-backend
+    newName: quay.io/konflux-ci/quality-dashboard-backend
+    newTag: 6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
index b9a0a0b8..33e166d4 100644
--- a/components/quality-dashboard/base/dex/kustomization.yaml
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/dex/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 946770e9..6c5da4e3 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,10 +1,10 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/frontend/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
+  - name: quay.io/konflux-ci/quality-dashboard-frontend
+    newName: quay.io/konflux-ci/quality-dashboard-frontend
+    newTag: 6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-0180a0bf/staging/components/quality-dashboard/staging/kustomize.out.yaml
183c183
<         image: quay.io/konflux-ci/quality-dashboard-backend:6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:0909a2826e9d66cdf42b35ef8069f8ce1216859a
203a204,206
>       securityContext:
>         readOnlyRootFilesystem: true
>         runAsNonRoot: true
305c308
<         image: quay.io/konflux-ci/quality-dashboard-frontend:6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:0909a2826e9d66cdf42b35ef8069f8ce1216859a 
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
<h3>1: Development changes from 0180a0bf to 126c43d8 on Fri Jun 28 11:41:11 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index 46ddc25e..31120ce8 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,11 +1,11 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/backend/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 
 images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-backend
-    newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
+  - name: quay.io/konflux-ci/quality-dashboard-backend
+    newName: quay.io/konflux-ci/quality-dashboard-backend
+    newTag: 6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
index b9a0a0b8..33e166d4 100644
--- a/components/quality-dashboard/base/dex/kustomization.yaml
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/dex/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 946770e9..6c5da4e3 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,10 +1,10 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
+- https://github.com/konflux-ci/quality-dashboard/frontend/deploy/base?ref=6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
+  - name: quay.io/konflux-ci/quality-dashboard-frontend
+    newName: quay.io/konflux-ci/quality-dashboard-frontend
+    newTag: 6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-0180a0bf/development/components/quality-dashboard/development/kustomize.out.yaml
151c151
<         image: quay.io/konflux-ci/quality-dashboard-backend:6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:0909a2826e9d66cdf42b35ef8069f8ce1216859a
171a172,174
>       securityContext:
>         readOnlyRootFilesystem: true
>         runAsNonRoot: true
273c276
<         image: quay.io/konflux-ci/quality-dashboard-frontend:6f72cf9b8a0b22aa31ff33bb04af591ae50ab617
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:0909a2826e9d66cdf42b35ef8069f8ce1216859a 
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
<h3>2: Production changes from ecca2b80 to 0180a0bf on Fri Jun 28 07:07:25 2024 </h3>  
 
<details> 
<summary>Git Diff (476 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 8dc26bc5..bfb1aaac 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -12,6 +12,5 @@ resources:
   - enable-dvo-for-all-cluster
   - kubesaw-common
   - tracing-workload-otel-collector
-  - enable-tekton-tracing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
index 692af320..edb6bae3 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - tracing-workload-otel-collector.yaml
+- tracing-workload-tracing.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 96609719..0bde96da 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -3,118 +3,42 @@ kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
   labels:
-    ### Prevent the repoURL from being transformed to a local fork name.
     noSourceTransform: "true"
 spec:
   generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/tracing/otel-collector
-                environment: staging
-                clusterDir: ""
-          - list:
-              elements: []
+  - merge:
+      mergeKeys:
+        - nameNormalized
+      generators:
+        - clusters:
+            values:
+              sourceRoot: components/tracing/otel-collector
+              environment: staging
+              clusterDir: ""
+        - list:
+            elements: []
   template:
     metadata:
       name: tracing-workload-otel-collector-{{nameNormalized}}
     spec:
       project: default
-      source:
-        chart: opentelemetry-collector
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
-        targetRevision: 0.90.1
-        helm:
-          parameters:
-            - name: "image.repository"
-              value: otel/opentelemetry-collector-k8s
-            - name: "mode"
-              value: deployment
-          releaseName: open-telemetry
-          values: |
-            config:
-              exporters:
-                debug:
-                  verbosity: basic
-              #             ### To be configured in later work for stage and prod clusters..
-              #                otlphttp:
-              #                  endpoint: https://api.honeycomb.io:443
-              #                  headers:
-              #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
-              extensions:
-                # The health_check extension is mandatory for this chart.
-                # Without the health_check extension the collector will fail the readiness and liveliness probes.
-                # The health_check extension can be modified, but should never be removed.
-                health_check: {}
-                memory_ballast: {}
-              processors:
-                batch: {}
-                # If set to null, will be overridden with values based on k8s resource limits
-                memory_limiter:
-                  check_interval: 2s
-                  limit_mib: 512
-                  spike_limit_percentage: 100
-                attributes/collector-info:
-                  actions:
-                    - key: collector.hostname
-                      action: insert
-                      value: ${env:HOSTNAME}
-                    - key: collector.clustername
-                      action: insert
-                      value: dev
-              receivers:
-                jaeger: null
-                prometheus: null
-                zipkin: null
-                otlp:
-                  protocols:
-                    grpc:
-                      endpoint: 0.0.0.0:4317
-                      max_recv_msg_size_mib: 999999999
-                    http:
-                      endpoint: 0.0.0.0:4318
-              service:
-                extensions:
-                  - health_check
-                  - memory_ballast
-                pipelines:
-                  traces:
-                    exporters:
-                      - debug
-                    processors:
-                      - memory_limiter
-                      - attributes/collector-info
-                      - batch
-                    receivers:
-                      - otlp
-                  metrics: null
-            # Configuration for ports
-            ports:
-              otlp:
-                enabled: true
-                containerPort: 4317
-                servicePort: 4317
-                hostPort: 4317
-                protocol: TCP
-              otlp-http:
-                enabled: true
-                containerPort: 4318
-                servicePort: 4318
-                hostPort: 4318
-                protocol: TCP
-              jaeger-compact:
-                enabled: false
-              jaeger-thrift:
-                enabled: false
-              jaeger-grpc:
-                enabled: false
-              zipkin:
-                enabled: false
-
+      sources:
+          # Chart from OTel Project
+        - chart: opentelemetry-collector
+          repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
+          targetRevision: 0.90.1
+          helm:
+            parameters:
+              - name: "image.repository"
+                value: otel/opentelemetry-collector-k8s
+              - name: "mode"
+                value: deployment
+            valueFiles:
+            - $values/{{values.sourceRoot}}/{{values.environment}}/otel-collector-helm-values.yaml
+          # Values for chart from git
+        - repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+          targetRevision: main
+          ref: values
       destination:
         namespace: konflux-otel
         server: '{{server}}'
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
similarity index 68%
rename from argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
rename to argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
index af3fb4dc..8971568e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
@@ -1,7 +1,7 @@
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
-  name: enable-tekton-tracing
+  name: tracing-workload-tracing
 spec:
   generators:
     - merge:
@@ -10,28 +10,31 @@ spec:
         generators:
           - clusters:
               values:
-                sourceRoot: configs/enable-tekton-tracing
+                sourceRoot: components/tracing/otel-collector
                 environment: staging
                 clusterDir: ""
           - list:
               elements: []
   template:
     metadata:
-      name: enable-tekton-tracing-{{nameNormalized}}
+      name: tracing-workload-tracing-{{nameNormalized}}
     spec:
       project: default
       source:
-        path: configs/enable-tekton-tracing
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
+        namespace: konflux-otel
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
         retry:
-          limit: -1
+          limit: 50
           backoff:
             duration: 10s
             factor: 2
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml
new file mode 100644
index 00000000..10d87d20
--- /dev/null
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/sources/1/repoURL
+  value: https://github.com/redhat-appstudio/infra-deployments.git
+- op: replace
+  path: /spec/template/spec/sources/1/targetRevision
+  value: main
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
index 4a094f7d..085bbe4b 100644
--- a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
@@ -13,4 +13,10 @@ patches:
       group: argoproj.io
       version: v1alpha1
       kind: Application
-      labelSelector: noSourceTransform != true
\ No newline at end of file
+      labelSelector: noSourceTransform != true
+  - path: application-set-multisrc-src-1-patch.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
+      name: tracing-workload-otel-collector
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5d78c5bb..3c226fa9 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -168,4 +168,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-otel-collector
+      name: tracing-workload-tracing
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tracing-workload-otel-collector
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 47e78222..47ed0c21 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -5,9 +5,16 @@ metadata:
   name: gitops
 $patch: delete
 ---
-# otel-collector is dev only.
+# otel-collector is dev & staging only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
 $patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-tracing
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 47e78222..02387926 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,9 +5,4 @@ metadata:
   name: gitops
 $patch: delete
 ---
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
-$patch: delete
+
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..9abddeee 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,18 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-tracing
+$patch: delete
+---
diff --git a/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml b/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..465981fc
--- /dev/null
+++ b/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: config-tracing
+  namespace: openshift-pipelines
+data:
+  enabled: "true"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml b/components/tracing/otel-collector/base/enable-tekton-tracing/kustomization.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
rename to components/tracing/otel-collector/base/enable-tekton-tracing/kustomization.yaml
diff --git a/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml b/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml
new file mode 100644
index 00000000..9f947038
--- /dev/null
+++ b/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: honeycomb-api-key
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: # will be added by the overlays
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: honeycomb-api-key
diff --git a/components/tracing/otel-collector/base/external-secrets/kustomization.yaml b/components/tracing/otel-collector/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..62311e63
--- /dev/null
+++ b/components/tracing/otel-collector/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - honeycomb-api-key.yaml
+namespace: konflux-otel
diff --git a/configs/enable-tekton-tracing/kustomization.yaml b/components/tracing/otel-collector/base/kustomization.yaml
similarity index 61%
rename from configs/enable-tekton-tracing/kustomization.yaml
rename to components/tracing/otel-collector/base/kustomization.yaml
index 09fe7785..e75e90a5 100644
--- a/configs/enable-tekton-tracing/kustomization.yaml
+++ b/components/tracing/otel-collector/base/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-
 resources:
-  - enable-tekton-tracing.yaml
\ No newline at end of file
+  - external-secrets
+  - enable-tekton-tracing
diff --git a/components/tracing/otel-collector/development/kustomization.yaml b/components/tracing/otel-collector/development/kustomization.yaml
new file mode 100644
index 00000000..e18328a6
--- /dev/null
+++ b/components/tracing/otel-collector/development/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patchesStrategicMerge:
+  - patch-delete-external-secrets.yaml
diff --git a/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml b/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml
new file mode 100644
index 00000000..e47731f1
--- /dev/null
+++ b/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: honeycomb-api-key
+$patch: delete
+---
diff --git a/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml b/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml
new file mode 100644
index 00000000..65ee8d71
--- /dev/null
+++ b/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml
@@ -0,0 +1,5 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/tracing/honeycomb
+
diff --git a/components/tracing/otel-collector/staging/kustomization.yaml b/components/tracing/otel-collector/staging/kustomization.yaml
new file mode 100644
index 00000000..a36697a4
--- /dev/null
+++ b/components/tracing/otel-collector/staging/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: honeycomb-api-key-secret-path.yaml
+    target:
+      name: honeycomb-api-key
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3a3c8840..645a73e6 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "false"
+  enabled: "true"
   endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
diff --git a/hack/preview.sh b/hack/preview.sh
index 0c933564..276e6d7b 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -124,6 +124,7 @@ update_patch_file () {
 }
 update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-patch.yaml"
 update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-patch.yaml"
+update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml"
 
 if $OBO ; then
   echo "Adding Observability operator and Prometheus for federation" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ecca2b80 to 0180a0bf on Fri Jun 28 07:07:25 2024 </h3>  
 
<details> 
<summary>Git Diff (476 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 8dc26bc5..bfb1aaac 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -12,6 +12,5 @@ resources:
   - enable-dvo-for-all-cluster
   - kubesaw-common
   - tracing-workload-otel-collector
-  - enable-tekton-tracing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
index 692af320..edb6bae3 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - tracing-workload-otel-collector.yaml
+- tracing-workload-tracing.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 96609719..0bde96da 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -3,118 +3,42 @@ kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
   labels:
-    ### Prevent the repoURL from being transformed to a local fork name.
     noSourceTransform: "true"
 spec:
   generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/tracing/otel-collector
-                environment: staging
-                clusterDir: ""
-          - list:
-              elements: []
+  - merge:
+      mergeKeys:
+        - nameNormalized
+      generators:
+        - clusters:
+            values:
+              sourceRoot: components/tracing/otel-collector
+              environment: staging
+              clusterDir: ""
+        - list:
+            elements: []
   template:
     metadata:
       name: tracing-workload-otel-collector-{{nameNormalized}}
     spec:
       project: default
-      source:
-        chart: opentelemetry-collector
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
-        targetRevision: 0.90.1
-        helm:
-          parameters:
-            - name: "image.repository"
-              value: otel/opentelemetry-collector-k8s
-            - name: "mode"
-              value: deployment
-          releaseName: open-telemetry
-          values: |
-            config:
-              exporters:
-                debug:
-                  verbosity: basic
-              #             ### To be configured in later work for stage and prod clusters..
-              #                otlphttp:
-              #                  endpoint: https://api.honeycomb.io:443
-              #                  headers:
-              #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
-              extensions:
-                # The health_check extension is mandatory for this chart.
-                # Without the health_check extension the collector will fail the readiness and liveliness probes.
-                # The health_check extension can be modified, but should never be removed.
-                health_check: {}
-                memory_ballast: {}
-              processors:
-                batch: {}
-                # If set to null, will be overridden with values based on k8s resource limits
-                memory_limiter:
-                  check_interval: 2s
-                  limit_mib: 512
-                  spike_limit_percentage: 100
-                attributes/collector-info:
-                  actions:
-                    - key: collector.hostname
-                      action: insert
-                      value: ${env:HOSTNAME}
-                    - key: collector.clustername
-                      action: insert
-                      value: dev
-              receivers:
-                jaeger: null
-                prometheus: null
-                zipkin: null
-                otlp:
-                  protocols:
-                    grpc:
-                      endpoint: 0.0.0.0:4317
-                      max_recv_msg_size_mib: 999999999
-                    http:
-                      endpoint: 0.0.0.0:4318
-              service:
-                extensions:
-                  - health_check
-                  - memory_ballast
-                pipelines:
-                  traces:
-                    exporters:
-                      - debug
-                    processors:
-                      - memory_limiter
-                      - attributes/collector-info
-                      - batch
-                    receivers:
-                      - otlp
-                  metrics: null
-            # Configuration for ports
-            ports:
-              otlp:
-                enabled: true
-                containerPort: 4317
-                servicePort: 4317
-                hostPort: 4317
-                protocol: TCP
-              otlp-http:
-                enabled: true
-                containerPort: 4318
-                servicePort: 4318
-                hostPort: 4318
-                protocol: TCP
-              jaeger-compact:
-                enabled: false
-              jaeger-thrift:
-                enabled: false
-              jaeger-grpc:
-                enabled: false
-              zipkin:
-                enabled: false
-
+      sources:
+          # Chart from OTel Project
+        - chart: opentelemetry-collector
+          repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
+          targetRevision: 0.90.1
+          helm:
+            parameters:
+              - name: "image.repository"
+                value: otel/opentelemetry-collector-k8s
+              - name: "mode"
+                value: deployment
+            valueFiles:
+            - $values/{{values.sourceRoot}}/{{values.environment}}/otel-collector-helm-values.yaml
+          # Values for chart from git
+        - repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+          targetRevision: main
+          ref: values
       destination:
         namespace: konflux-otel
         server: '{{server}}'
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
similarity index 68%
rename from argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
rename to argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
index af3fb4dc..8971568e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
@@ -1,7 +1,7 @@
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
-  name: enable-tekton-tracing
+  name: tracing-workload-tracing
 spec:
   generators:
     - merge:
@@ -10,28 +10,31 @@ spec:
         generators:
           - clusters:
               values:
-                sourceRoot: configs/enable-tekton-tracing
+                sourceRoot: components/tracing/otel-collector
                 environment: staging
                 clusterDir: ""
           - list:
               elements: []
   template:
     metadata:
-      name: enable-tekton-tracing-{{nameNormalized}}
+      name: tracing-workload-tracing-{{nameNormalized}}
     spec:
       project: default
       source:
-        path: configs/enable-tekton-tracing
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
+        namespace: konflux-otel
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
         retry:
-          limit: -1
+          limit: 50
           backoff:
             duration: 10s
             factor: 2
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml
new file mode 100644
index 00000000..10d87d20
--- /dev/null
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/sources/1/repoURL
+  value: https://github.com/redhat-appstudio/infra-deployments.git
+- op: replace
+  path: /spec/template/spec/sources/1/targetRevision
+  value: main
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
index 4a094f7d..085bbe4b 100644
--- a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
@@ -13,4 +13,10 @@ patches:
       group: argoproj.io
       version: v1alpha1
       kind: Application
-      labelSelector: noSourceTransform != true
\ No newline at end of file
+      labelSelector: noSourceTransform != true
+  - path: application-set-multisrc-src-1-patch.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
+      name: tracing-workload-otel-collector
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5d78c5bb..3c226fa9 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -168,4 +168,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-otel-collector
+      name: tracing-workload-tracing
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tracing-workload-otel-collector
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 47e78222..47ed0c21 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -5,9 +5,16 @@ metadata:
   name: gitops
 $patch: delete
 ---
-# otel-collector is dev only.
+# otel-collector is dev & staging only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
 $patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-tracing
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 47e78222..02387926 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,9 +5,4 @@ metadata:
   name: gitops
 $patch: delete
 ---
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
-$patch: delete
+
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..9abddeee 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,18 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-tracing
+$patch: delete
+---
diff --git a/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml b/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..465981fc
--- /dev/null
+++ b/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: config-tracing
+  namespace: openshift-pipelines
+data:
+  enabled: "true"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml b/components/tracing/otel-collector/base/enable-tekton-tracing/kustomization.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
rename to components/tracing/otel-collector/base/enable-tekton-tracing/kustomization.yaml
diff --git a/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml b/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml
new file mode 100644
index 00000000..9f947038
--- /dev/null
+++ b/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: honeycomb-api-key
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: # will be added by the overlays
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: honeycomb-api-key
diff --git a/components/tracing/otel-collector/base/external-secrets/kustomization.yaml b/components/tracing/otel-collector/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..62311e63
--- /dev/null
+++ b/components/tracing/otel-collector/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - honeycomb-api-key.yaml
+namespace: konflux-otel
diff --git a/configs/enable-tekton-tracing/kustomization.yaml b/components/tracing/otel-collector/base/kustomization.yaml
similarity index 61%
rename from configs/enable-tekton-tracing/kustomization.yaml
rename to components/tracing/otel-collector/base/kustomization.yaml
index 09fe7785..e75e90a5 100644
--- a/configs/enable-tekton-tracing/kustomization.yaml
+++ b/components/tracing/otel-collector/base/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-
 resources:
-  - enable-tekton-tracing.yaml
\ No newline at end of file
+  - external-secrets
+  - enable-tekton-tracing
diff --git a/components/tracing/otel-collector/development/kustomization.yaml b/components/tracing/otel-collector/development/kustomization.yaml
new file mode 100644
index 00000000..e18328a6
--- /dev/null
+++ b/components/tracing/otel-collector/development/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patchesStrategicMerge:
+  - patch-delete-external-secrets.yaml
diff --git a/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml b/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml
new file mode 100644
index 00000000..e47731f1
--- /dev/null
+++ b/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: honeycomb-api-key
+$patch: delete
+---
diff --git a/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml b/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml
new file mode 100644
index 00000000..65ee8d71
--- /dev/null
+++ b/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml
@@ -0,0 +1,5 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/tracing/honeycomb
+
diff --git a/components/tracing/otel-collector/staging/kustomization.yaml b/components/tracing/otel-collector/staging/kustomization.yaml
new file mode 100644
index 00000000..a36697a4
--- /dev/null
+++ b/components/tracing/otel-collector/staging/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: honeycomb-api-key-secret-path.yaml
+    target:
+      name: honeycomb-api-key
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3a3c8840..645a73e6 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "false"
+  enabled: "true"
   endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
diff --git a/hack/preview.sh b/hack/preview.sh
index 0c933564..276e6d7b 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -124,6 +124,7 @@ update_patch_file () {
 }
 update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-patch.yaml"
 update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-patch.yaml"
+update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml"
 
 if $OBO ; then
   echo "Adding Observability operator and Prometheus for federation" 
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
<h3>2: Development changes from ecca2b80 to 0180a0bf on Fri Jun 28 07:07:25 2024 </h3>  
 
<details> 
<summary>Git Diff (476 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 8dc26bc5..bfb1aaac 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -12,6 +12,5 @@ resources:
   - enable-dvo-for-all-cluster
   - kubesaw-common
   - tracing-workload-otel-collector
-  - enable-tekton-tracing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
index 692af320..edb6bae3 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - tracing-workload-otel-collector.yaml
+- tracing-workload-tracing.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 96609719..0bde96da 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -3,118 +3,42 @@ kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
   labels:
-    ### Prevent the repoURL from being transformed to a local fork name.
     noSourceTransform: "true"
 spec:
   generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/tracing/otel-collector
-                environment: staging
-                clusterDir: ""
-          - list:
-              elements: []
+  - merge:
+      mergeKeys:
+        - nameNormalized
+      generators:
+        - clusters:
+            values:
+              sourceRoot: components/tracing/otel-collector
+              environment: staging
+              clusterDir: ""
+        - list:
+            elements: []
   template:
     metadata:
       name: tracing-workload-otel-collector-{{nameNormalized}}
     spec:
       project: default
-      source:
-        chart: opentelemetry-collector
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
-        targetRevision: 0.90.1
-        helm:
-          parameters:
-            - name: "image.repository"
-              value: otel/opentelemetry-collector-k8s
-            - name: "mode"
-              value: deployment
-          releaseName: open-telemetry
-          values: |
-            config:
-              exporters:
-                debug:
-                  verbosity: basic
-              #             ### To be configured in later work for stage and prod clusters..
-              #                otlphttp:
-              #                  endpoint: https://api.honeycomb.io:443
-              #                  headers:
-              #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
-              extensions:
-                # The health_check extension is mandatory for this chart.
-                # Without the health_check extension the collector will fail the readiness and liveliness probes.
-                # The health_check extension can be modified, but should never be removed.
-                health_check: {}
-                memory_ballast: {}
-              processors:
-                batch: {}
-                # If set to null, will be overridden with values based on k8s resource limits
-                memory_limiter:
-                  check_interval: 2s
-                  limit_mib: 512
-                  spike_limit_percentage: 100
-                attributes/collector-info:
-                  actions:
-                    - key: collector.hostname
-                      action: insert
-                      value: ${env:HOSTNAME}
-                    - key: collector.clustername
-                      action: insert
-                      value: dev
-              receivers:
-                jaeger: null
-                prometheus: null
-                zipkin: null
-                otlp:
-                  protocols:
-                    grpc:
-                      endpoint: 0.0.0.0:4317
-                      max_recv_msg_size_mib: 999999999
-                    http:
-                      endpoint: 0.0.0.0:4318
-              service:
-                extensions:
-                  - health_check
-                  - memory_ballast
-                pipelines:
-                  traces:
-                    exporters:
-                      - debug
-                    processors:
-                      - memory_limiter
-                      - attributes/collector-info
-                      - batch
-                    receivers:
-                      - otlp
-                  metrics: null
-            # Configuration for ports
-            ports:
-              otlp:
-                enabled: true
-                containerPort: 4317
-                servicePort: 4317
-                hostPort: 4317
-                protocol: TCP
-              otlp-http:
-                enabled: true
-                containerPort: 4318
-                servicePort: 4318
-                hostPort: 4318
-                protocol: TCP
-              jaeger-compact:
-                enabled: false
-              jaeger-thrift:
-                enabled: false
-              jaeger-grpc:
-                enabled: false
-              zipkin:
-                enabled: false
-
+      sources:
+          # Chart from OTel Project
+        - chart: opentelemetry-collector
+          repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
+          targetRevision: 0.90.1
+          helm:
+            parameters:
+              - name: "image.repository"
+                value: otel/opentelemetry-collector-k8s
+              - name: "mode"
+                value: deployment
+            valueFiles:
+            - $values/{{values.sourceRoot}}/{{values.environment}}/otel-collector-helm-values.yaml
+          # Values for chart from git
+        - repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+          targetRevision: main
+          ref: values
       destination:
         namespace: konflux-otel
         server: '{{server}}'
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
similarity index 68%
rename from argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
rename to argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
index af3fb4dc..8971568e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
@@ -1,7 +1,7 @@
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
-  name: enable-tekton-tracing
+  name: tracing-workload-tracing
 spec:
   generators:
     - merge:
@@ -10,28 +10,31 @@ spec:
         generators:
           - clusters:
               values:
-                sourceRoot: configs/enable-tekton-tracing
+                sourceRoot: components/tracing/otel-collector
                 environment: staging
                 clusterDir: ""
           - list:
               elements: []
   template:
     metadata:
-      name: enable-tekton-tracing-{{nameNormalized}}
+      name: tracing-workload-tracing-{{nameNormalized}}
     spec:
       project: default
       source:
-        path: configs/enable-tekton-tracing
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
+        namespace: konflux-otel
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
         retry:
-          limit: -1
+          limit: 50
           backoff:
             duration: 10s
             factor: 2
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml
new file mode 100644
index 00000000..10d87d20
--- /dev/null
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/sources/1/repoURL
+  value: https://github.com/redhat-appstudio/infra-deployments.git
+- op: replace
+  path: /spec/template/spec/sources/1/targetRevision
+  value: main
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
index 4a094f7d..085bbe4b 100644
--- a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
@@ -13,4 +13,10 @@ patches:
       group: argoproj.io
       version: v1alpha1
       kind: Application
-      labelSelector: noSourceTransform != true
\ No newline at end of file
+      labelSelector: noSourceTransform != true
+  - path: application-set-multisrc-src-1-patch.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
+      name: tracing-workload-otel-collector
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5d78c5bb..3c226fa9 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -168,4 +168,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-otel-collector
+      name: tracing-workload-tracing
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tracing-workload-otel-collector
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 47e78222..47ed0c21 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -5,9 +5,16 @@ metadata:
   name: gitops
 $patch: delete
 ---
-# otel-collector is dev only.
+# otel-collector is dev & staging only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
 $patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-tracing
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 47e78222..02387926 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,9 +5,4 @@ metadata:
   name: gitops
 $patch: delete
 ---
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
-$patch: delete
+
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..9abddeee 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,18 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
+---
+# otel-collector is dev & staging only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-tracing
+$patch: delete
+---
diff --git a/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml b/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..465981fc
--- /dev/null
+++ b/components/tracing/otel-collector/base/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: config-tracing
+  namespace: openshift-pipelines
+data:
+  enabled: "true"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml b/components/tracing/otel-collector/base/enable-tekton-tracing/kustomization.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
rename to components/tracing/otel-collector/base/enable-tekton-tracing/kustomization.yaml
diff --git a/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml b/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml
new file mode 100644
index 00000000..9f947038
--- /dev/null
+++ b/components/tracing/otel-collector/base/external-secrets/honeycomb-api-key.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: honeycomb-api-key
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: # will be added by the overlays
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: honeycomb-api-key
diff --git a/components/tracing/otel-collector/base/external-secrets/kustomization.yaml b/components/tracing/otel-collector/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..62311e63
--- /dev/null
+++ b/components/tracing/otel-collector/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - honeycomb-api-key.yaml
+namespace: konflux-otel
diff --git a/configs/enable-tekton-tracing/kustomization.yaml b/components/tracing/otel-collector/base/kustomization.yaml
similarity index 61%
rename from configs/enable-tekton-tracing/kustomization.yaml
rename to components/tracing/otel-collector/base/kustomization.yaml
index 09fe7785..e75e90a5 100644
--- a/configs/enable-tekton-tracing/kustomization.yaml
+++ b/components/tracing/otel-collector/base/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-
 resources:
-  - enable-tekton-tracing.yaml
\ No newline at end of file
+  - external-secrets
+  - enable-tekton-tracing
diff --git a/components/tracing/otel-collector/development/kustomization.yaml b/components/tracing/otel-collector/development/kustomization.yaml
new file mode 100644
index 00000000..e18328a6
--- /dev/null
+++ b/components/tracing/otel-collector/development/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patchesStrategicMerge:
+  - patch-delete-external-secrets.yaml
diff --git a/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml b/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml
new file mode 100644
index 00000000..e47731f1
--- /dev/null
+++ b/components/tracing/otel-collector/development/patch-delete-external-secrets.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: honeycomb-api-key
+$patch: delete
+---
diff --git a/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml b/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml
new file mode 100644
index 00000000..65ee8d71
--- /dev/null
+++ b/components/tracing/otel-collector/staging/honeycomb-api-key-secret-path.yaml
@@ -0,0 +1,5 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/tracing/honeycomb
+
diff --git a/components/tracing/otel-collector/staging/kustomization.yaml b/components/tracing/otel-collector/staging/kustomization.yaml
new file mode 100644
index 00000000..a36697a4
--- /dev/null
+++ b/components/tracing/otel-collector/staging/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: honeycomb-api-key-secret-path.yaml
+    target:
+      name: honeycomb-api-key
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3a3c8840..645a73e6 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "false"
+  enabled: "true"
   endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
diff --git a/hack/preview.sh b/hack/preview.sh
index 0c933564..276e6d7b 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -124,6 +124,7 @@ update_patch_file () {
 }
 update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-patch.yaml"
 update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-patch.yaml"
+update_patch_file "${ROOT}/argo-cd-apps/k-components/inject-infra-deployments-repo-details/application-set-multisrc-src-1-patch.yaml"
 
 if $OBO ; then
   echo "Adding Observability operator and Prometheus for federation" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (200 lines)</summary>  

``` 
./commit-ecca2b80/development/app-of-apps-development.yaml
347a348,397
>   name: enable-tekton-tracing
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             - key: clustertemplateinstance.openshift.io/name
>               operator: DoesNotExist
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: configs/enable-tekton-tracing
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: enable-tekton-tracing-{{nameNormalized}}
>     spec:
>       destination:
>         server: '{{server}}'
>       project: default
>       source:
>         path: configs/enable-tekton-tracing
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
1336,1337c1386,1387
<       sources:
<       - chart: opentelemetry-collector
---
>       source:
>         chart: opentelemetry-collector
1344,1345c1394,1474
<           valueFiles:
<           - $values/{{values.sourceRoot}}/{{values.environment}}/otel-collector-helm-values.yaml
---
>           releaseName: open-telemetry
>           values: |
>             config:
>               exporters:
>                 debug:
>                   verbosity: basic
>               #             ### To be configured in later work for stage and prod clusters..
>               #                otlphttp:
>               #                  endpoint: https://api.honeycomb.io:443
>               #                  headers:
>               #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
>               extensions:
>                 # The health_check extension is mandatory for this chart.
>                 # Without the health_check extension the collector will fail the readiness and liveliness probes.
>                 # The health_check extension can be modified, but should never be removed.
>                 health_check: {}
>                 memory_ballast: {}
>               processors:
>                 batch: {}
>                 # If set to null, will be overridden with values based on k8s resource limits
>                 memory_limiter:
>                   check_interval: 2s
>                   limit_mib: 512
>                   spike_limit_percentage: 100
>                 attributes/collector-info:
>                   actions:
>                     - key: collector.hostname
>                       action: insert
>                       value: ${env:HOSTNAME}
>                     - key: collector.clustername
>                       action: insert
>                       value: dev
>               receivers:
>                 jaeger: null
>                 prometheus: null
>                 zipkin: null
>                 otlp:
>                   protocols:
>                     grpc:
>                       endpoint: 0.0.0.0:4317
>                       max_recv_msg_size_mib: 999999999
>                     http:
>                       endpoint: 0.0.0.0:4318
>               service:
>                 extensions:
>                   - health_check
>                   - memory_ballast
>                 pipelines:
>                   traces:
>                     exporters:
>                       - debug
>                     processors:
>                       - memory_limiter
>                       - attributes/collector-info
>                       - batch
>                     receivers:
>                       - otlp
>                   metrics: null
>             # Configuration for ports
>             ports:
>               otlp:
>                 enabled: true
>                 containerPort: 4317
>                 servicePort: 4317
>                 hostPort: 4317
>                 protocol: TCP
>               otlp-http:
>                 enabled: true
>                 containerPort: 4318
>                 servicePort: 4318
>                 hostPort: 4318
>                 protocol: TCP
>               jaeger-compact:
>                 enabled: false
>               jaeger-thrift:
>                 enabled: false
>               jaeger-grpc:
>                 enabled: false
>               zipkin:
>                 enabled: false
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
1348,1403d1476
<       - ref: values
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: tracing-workload-tracing
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/tracing/otel-collector
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: tracing-workload-tracing-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: konflux-otel
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main 
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
<h3>3: Production changes from c7228e58 to ecca2b80 on Thu Jun 27 17:54:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3ddf898a..3a3c8840 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "true"
-  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
+  enabled: "false"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from c7228e58 to ecca2b80 on Thu Jun 27 17:54:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3ddf898a..3a3c8840 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "true"
-  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
+  enabled: "false"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces" 
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
<h3>3: Development changes from c7228e58 to ecca2b80 on Thu Jun 27 17:54:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3ddf898a..3a3c8840 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "true"
-  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
+  enabled: "false"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces" 
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
<h3>4: Production changes from db5791a3 to c7228e58 on Thu Jun 27 11:33:17 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ca57cc61..d0c3945a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -19,32 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: all
-  namespace: enterprise-contract-service
-spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
-  name: Everything (experimental)
-  publicKey: k8s://openshift-pipelines/public-key
-  sources:
-    - config:
-        exclude: []
-        include:
-          - '*'
-      data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
-        - github.com/release-engineering/rhtap-ec-policy//data
-      name: Default
-      policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -52,7 +31,7 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -63,11 +42,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -75,7 +54,7 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -84,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -96,7 +75,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Source: https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -106,11 +85,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 708b7552..1d37e206 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
+      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-db5791a3/production/components/enterprise-contract/kustomize.out.yaml
177,181d176
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
205,209d199
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
386c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
388c378
<   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
---
>   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
601a592,616
>   name: all
>   namespace: enterprise-contract-service
> spec:
>   description: Include every rule in the default policy source. For experiments only.
>     This is not expected to pass for Konflux builds without excluding some rules.
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
>   name: Everything (experimental)
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '*'
>     data:
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
605,606c620,624
<   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
<     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
---
>   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
>     config used for new Konflux applications. Available collections are defined in
>     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
615c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
619c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
627,628c645,648
<   description: 'Includes the full set of rules and policies required internally by
<     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
---
>   description: Includes the full set of rules and policies required internally by
>     Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
637c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
641c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
649c669
<   description: 'Includes most of the rules and policies required internally by Red
---
>   description: Includes most of the rules and policies required internally by Red
651c671,673
<     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
---
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
662c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
666c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
685c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
693,695c715,719
<   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
<     set of basic checks that are expected to pass for all Konflux builds. Source:
<     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
---
>   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
>     set of basic checks that are expected to pass for all Konflux builds. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
705c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
709c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from db5791a3 to c7228e58 on Thu Jun 27 11:33:17 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ca57cc61..d0c3945a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -19,32 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: all
-  namespace: enterprise-contract-service
-spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
-  name: Everything (experimental)
-  publicKey: k8s://openshift-pipelines/public-key
-  sources:
-    - config:
-        exclude: []
-        include:
-          - '*'
-      data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
-        - github.com/release-engineering/rhtap-ec-policy//data
-      name: Default
-      policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -52,7 +31,7 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -63,11 +42,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -75,7 +54,7 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -84,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -96,7 +75,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Source: https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -106,11 +85,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 708b7552..1d37e206 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
+      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-db5791a3/staging/components/enterprise-contract/kustomize.out.yaml
177,181d176
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
205,209d199
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
386c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
388c378
<   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
---
>   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
601a592,616
>   name: all
>   namespace: enterprise-contract-service
> spec:
>   description: Include every rule in the default policy source. For experiments only.
>     This is not expected to pass for Konflux builds without excluding some rules.
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
>   name: Everything (experimental)
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '*'
>     data:
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
605,606c620,624
<   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
<     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
---
>   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
>     config used for new Konflux applications. Available collections are defined in
>     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
615c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
619c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
627,628c645,648
<   description: 'Includes the full set of rules and policies required internally by
<     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
---
>   description: Includes the full set of rules and policies required internally by
>     Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
637c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
641c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
649c669
<   description: 'Includes most of the rules and policies required internally by Red
---
>   description: Includes most of the rules and policies required internally by Red
651c671,673
<     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
---
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
662c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
666c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
685c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
693,695c715,719
<   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
<     set of basic checks that are expected to pass for all Konflux builds. Source:
<     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
---
>   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
>     set of basic checks that are expected to pass for all Konflux builds. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
705c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
709c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c 
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
<h3>4: Development changes from db5791a3 to c7228e58 on Thu Jun 27 11:33:17 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ca57cc61..d0c3945a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -19,32 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: all
-  namespace: enterprise-contract-service
-spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
-  name: Everything (experimental)
-  publicKey: k8s://openshift-pipelines/public-key
-  sources:
-    - config:
-        exclude: []
-        include:
-          - '*'
-      data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
-        - github.com/release-engineering/rhtap-ec-policy//data
-      name: Default
-      policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -52,7 +31,7 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -63,11 +42,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -75,7 +54,7 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -84,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -96,7 +75,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Source: https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -106,11 +85,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 708b7552..1d37e206 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
+      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-db5791a3/development/components/enterprise-contract/kustomize.out.yaml
177,181d176
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
205,209d199
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
386c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
388c378
<   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
---
>   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
601a592,616
>   name: all
>   namespace: enterprise-contract-service
> spec:
>   description: Include every rule in the default policy source. For experiments only.
>     This is not expected to pass for Konflux builds without excluding some rules.
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
>   name: Everything (experimental)
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '*'
>     data:
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
605,606c620,624
<   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
<     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
---
>   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
>     config used for new Konflux applications. Available collections are defined in
>     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
615c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
619c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
627,628c645,648
<   description: 'Includes the full set of rules and policies required internally by
<     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
---
>   description: Includes the full set of rules and policies required internally by
>     Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
637c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
641c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
649c669
<   description: 'Includes most of the rules and policies required internally by Red
---
>   description: Includes most of the rules and policies required internally by Red
651c671,673
<     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
---
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
662c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
666c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
685c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
693,695c715,719
<   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
<     set of basic checks that are expected to pass for all Konflux builds. Source:
<     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
---
>   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
>     set of basic checks that are expected to pass for all Konflux builds. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
705c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
709c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c 
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
