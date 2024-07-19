# kustomize changes tracked by commits 
### This file generated at Fri Jul 19 00:16:53 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 83b32f8e to bba8ee41 on Thu Jul 18 23:48:18 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
index cbf7b885..53820187 100644
--- a/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
+++ b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
@@ -30,15 +30,3 @@ spec:
       destination:
         namespace: toolchain-member-operator
         server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=false
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m 
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
<h3>1: Staging changes from 83b32f8e to bba8ee41 on Thu Jul 18 23:48:18 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
index cbf7b885..53820187 100644
--- a/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
+++ b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
@@ -30,15 +30,3 @@ spec:
       destination:
         namespace: toolchain-member-operator
         server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=false
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 83b32f8e to bba8ee41 on Thu Jul 18 23:48:18 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
index cbf7b885..53820187 100644
--- a/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
+++ b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
@@ -30,15 +30,3 @@ spec:
       destination:
         namespace: toolchain-member-operator
         server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=false
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m 
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
<h3>2: Production changes from 45b194bb to 83b32f8e on Thu Jul 18 22:48:19 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index c78a3bed..0370919c 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config
+  - ../../base/toolchain-member
 
 namespace: konflux-public-production
  
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
<h3>2: Staging changes from 45b194bb to 83b32f8e on Thu Jul 18 22:48:19 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index c78a3bed..0370919c 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config
+  - ../../base/toolchain-member
 
 namespace: konflux-public-production
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 45b194bb to 83b32f8e on Thu Jul 18 22:48:19 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index c78a3bed..0370919c 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config
+  - ../../base/toolchain-member
 
 namespace: konflux-public-production
  
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
<h3>3: Production changes from 78c074df to 45b194bb on Thu Jul 18 21:43:33 2024 </h3>  
 
<details> 
<summary>Git Diff (135 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index c5b0f386..ff7311b4 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -7,3 +7,4 @@ components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
   - ../../../k-components/assign-internal-cluster-role-to-local-cluster
+  - ../../../k-components/assign-toolchain-member-role-to-local-cluster
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index da8ba978..cd8cfd06 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -16,7 +16,6 @@ resources:
   - internal-services
   - image-controller
   - segment-bridge
-  - toolchain-member-operator
   - multi-platform-controller
   - perf-team-prometheus-reader
   - project-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml b/argo-cd-apps/base/toolchain-member/kustomization.yaml
similarity index 63%
rename from argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml
rename to argo-cd-apps/base/toolchain-member/kustomization.yaml
index 5e5c4dae..ac261d1c 100644
--- a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml
+++ b/argo-cd-apps/base/toolchain-member/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 resources:
   - toolchain-member-operator.yaml
 components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
\ No newline at end of file
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
similarity index 90%
rename from argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml
rename to argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
index 98d00310..cbf7b885 100644
--- a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml
+++ b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/toolchain-member: 'true'
               values:
                 sourceRoot: components/sandbox/toolchain-member-operator
                 environment: staging
diff --git a/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..b34defd4
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/toolchain-member: "true"
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 69397a33..daa9bff4 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
   - ../../base/keycloak
   - ../../base/ui
   - ../../base/eaas
+  - ../../base/toolchain-member
 
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index a1d62bfe..04285794 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/quality-dashboard
   - ../../base/ci-helper-app
+  - ../../base/toolchain-member
 namespace: konflux-public-staging
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 4eae199d..9d944c09 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -13,3 +13,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 8ca9480e..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,3 +28,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas 
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
<h3>3: Staging changes from 78c074df to 45b194bb on Thu Jul 18 21:43:33 2024 </h3>  
 
<details> 
<summary>Git Diff (135 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index c5b0f386..ff7311b4 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -7,3 +7,4 @@ components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
   - ../../../k-components/assign-internal-cluster-role-to-local-cluster
+  - ../../../k-components/assign-toolchain-member-role-to-local-cluster
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index da8ba978..cd8cfd06 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -16,7 +16,6 @@ resources:
   - internal-services
   - image-controller
   - segment-bridge
-  - toolchain-member-operator
   - multi-platform-controller
   - perf-team-prometheus-reader
   - project-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml b/argo-cd-apps/base/toolchain-member/kustomization.yaml
similarity index 63%
rename from argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml
rename to argo-cd-apps/base/toolchain-member/kustomization.yaml
index 5e5c4dae..ac261d1c 100644
--- a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml
+++ b/argo-cd-apps/base/toolchain-member/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 resources:
   - toolchain-member-operator.yaml
 components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
\ No newline at end of file
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
similarity index 90%
rename from argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml
rename to argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
index 98d00310..cbf7b885 100644
--- a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml
+++ b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/toolchain-member: 'true'
               values:
                 sourceRoot: components/sandbox/toolchain-member-operator
                 environment: staging
diff --git a/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..b34defd4
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/toolchain-member: "true"
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 69397a33..daa9bff4 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
   - ../../base/keycloak
   - ../../base/ui
   - ../../base/eaas
+  - ../../base/toolchain-member
 
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index a1d62bfe..04285794 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/quality-dashboard
   - ../../base/ci-helper-app
+  - ../../base/toolchain-member
 namespace: konflux-public-staging
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 4eae199d..9d944c09 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -13,3 +13,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 8ca9480e..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,3 +28,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 78c074df to 45b194bb on Thu Jul 18 21:43:33 2024 </h3>  
 
<details> 
<summary>Git Diff (135 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index c5b0f386..ff7311b4 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -7,3 +7,4 @@ components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
   - ../../../k-components/assign-internal-cluster-role-to-local-cluster
+  - ../../../k-components/assign-toolchain-member-role-to-local-cluster
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index da8ba978..cd8cfd06 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -16,7 +16,6 @@ resources:
   - internal-services
   - image-controller
   - segment-bridge
-  - toolchain-member-operator
   - multi-platform-controller
   - perf-team-prometheus-reader
   - project-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml b/argo-cd-apps/base/toolchain-member/kustomization.yaml
similarity index 63%
rename from argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml
rename to argo-cd-apps/base/toolchain-member/kustomization.yaml
index 5e5c4dae..ac261d1c 100644
--- a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/kustomization.yaml
+++ b/argo-cd-apps/base/toolchain-member/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 resources:
   - toolchain-member-operator.yaml
 components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
\ No newline at end of file
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
similarity index 90%
rename from argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml
rename to argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
index 98d00310..cbf7b885 100644
--- a/argo-cd-apps/base/member/infra-deployments/toolchain-member-operator/toolchain-member-operator.yaml
+++ b/argo-cd-apps/base/toolchain-member/toolchain-member-operator.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/toolchain-member: 'true'
               values:
                 sourceRoot: components/sandbox/toolchain-member-operator
                 environment: staging
diff --git a/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..b34defd4
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-toolchain-member-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/toolchain-member: "true"
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 69397a33..daa9bff4 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
   - ../../base/keycloak
   - ../../base/ui
   - ../../base/eaas
+  - ../../base/toolchain-member
 
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index a1d62bfe..04285794 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/quality-dashboard
   - ../../base/ci-helper-app
+  - ../../base/toolchain-member
 namespace: konflux-public-staging
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 4eae199d..9d944c09 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -13,3 +13,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 8ca9480e..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,3 +28,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-78c074df/development/app-of-apps-development.yaml
8d7
<     appstudio.redhat.com/toolchain-member: "true" 
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
<h3>4: Production changes from fb8d1949 to 78c074df on Thu Jul 18 20:54:11 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index b0f27a4b..2f980739 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/base/operator/config/manager/manager.yaml b/components/workspaces/base/operator/config/manager/manager.yaml
index 4594a54b..64845c39 100644
--- a/components/workspaces/base/operator/config/manager/manager.yaml
+++ b/components/workspaces/base/operator/config/manager/manager.yaml
@@ -4,7 +4,7 @@ metadata:
   labels:
     control-plane: controller-manager
     app.kubernetes.io/name: namespace
-    app.kubernetes.io/instance: system 
+    app.kubernetes.io/instance: system
     app.kubernetes.io/component: manager
     app.kubernetes.io/created-by: workspaces
     app.kubernetes.io/part-of: workspaces
@@ -51,7 +51,7 @@ spec:
         - /manager
         args:
         - "--leader-elect"
-        image: controller:index
+        image: controller:latest
         imagePullPolicy: IfNotPresent
         env:
         - name: KUBESAW_NAMESPACE
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
index 3213e675..c9bd70cf 100644
--- a/components/workspaces/base/server/config/default/kustomization.yaml
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -6,13 +6,6 @@ resources:
 - ../server
 namePrefix: workspaces-
 
-configMapGenerator:
-- behavior: replace
-  literals:
-  - log.level=0
-  - kubesaw.namespace=toolchain-host-operator
-  name: rest-api-server-config
-
       # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
       # create Role and RoleBinding to read UserSignups into toolchain-host-operator
       # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
@@ -79,3 +72,9 @@ replacements:
       kind: RoleBinding
       name: rest-api-server:usersignup-reader
 namespace: workspaces-system
+configMapGenerator:
+- behavior: replace
+  literals:
+  - log.level=0
+  - kubesaw.namespace=toolchain-host-operator
+  name: rest-api-server-config
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
index 7ec382c0..d0e3d69f 100644
--- a/components/workspaces/base/server/config/server/deployment.yaml
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -41,7 +41,7 @@ spec:
           requests:
             cpu: 10m
             memory: 64Mi
-      - image: workspaces/rest-api:index
+      - image: workspaces/rest-api:latest
         name: rest-api
         imagePullPolicy: IfNotPresent
         env:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 136e4405..15e029d6 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
diff --git a/components/workspaces/staging/kustomization.yaml b/components/workspaces/staging/kustomization.yaml
index 4d3ff0ba..47025b9d 100644
--- a/components/workspaces/staging/kustomization.yaml
+++ b/components/workspaces/staging/kustomization.yaml
@@ -5,10 +5,10 @@ resources:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 
 configMapGenerator:
 - behavior: merge 
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
<h3>4: Staging changes from fb8d1949 to 78c074df on Thu Jul 18 20:54:11 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index b0f27a4b..2f980739 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/base/operator/config/manager/manager.yaml b/components/workspaces/base/operator/config/manager/manager.yaml
index 4594a54b..64845c39 100644
--- a/components/workspaces/base/operator/config/manager/manager.yaml
+++ b/components/workspaces/base/operator/config/manager/manager.yaml
@@ -4,7 +4,7 @@ metadata:
   labels:
     control-plane: controller-manager
     app.kubernetes.io/name: namespace
-    app.kubernetes.io/instance: system 
+    app.kubernetes.io/instance: system
     app.kubernetes.io/component: manager
     app.kubernetes.io/created-by: workspaces
     app.kubernetes.io/part-of: workspaces
@@ -51,7 +51,7 @@ spec:
         - /manager
         args:
         - "--leader-elect"
-        image: controller:index
+        image: controller:latest
         imagePullPolicy: IfNotPresent
         env:
         - name: KUBESAW_NAMESPACE
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
index 3213e675..c9bd70cf 100644
--- a/components/workspaces/base/server/config/default/kustomization.yaml
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -6,13 +6,6 @@ resources:
 - ../server
 namePrefix: workspaces-
 
-configMapGenerator:
-- behavior: replace
-  literals:
-  - log.level=0
-  - kubesaw.namespace=toolchain-host-operator
-  name: rest-api-server-config
-
       # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
       # create Role and RoleBinding to read UserSignups into toolchain-host-operator
       # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
@@ -79,3 +72,9 @@ replacements:
       kind: RoleBinding
       name: rest-api-server:usersignup-reader
 namespace: workspaces-system
+configMapGenerator:
+- behavior: replace
+  literals:
+  - log.level=0
+  - kubesaw.namespace=toolchain-host-operator
+  name: rest-api-server-config
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
index 7ec382c0..d0e3d69f 100644
--- a/components/workspaces/base/server/config/server/deployment.yaml
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -41,7 +41,7 @@ spec:
           requests:
             cpu: 10m
             memory: 64Mi
-      - image: workspaces/rest-api:index
+      - image: workspaces/rest-api:latest
         name: rest-api
         imagePullPolicy: IfNotPresent
         env:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 136e4405..15e029d6 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
diff --git a/components/workspaces/staging/kustomization.yaml b/components/workspaces/staging/kustomization.yaml
index 4d3ff0ba..47025b9d 100644
--- a/components/workspaces/staging/kustomization.yaml
+++ b/components/workspaces/staging/kustomization.yaml
@@ -5,10 +5,10 @@ resources:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 
 configMapGenerator:
 - behavior: merge 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fb8d1949/staging/components/workspaces/staging/kustomize.out.yaml
827c827
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha3
---
>         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha2
919c919
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha3
---
>         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from fb8d1949 to 78c074df on Thu Jul 18 20:54:11 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index b0f27a4b..2f980739 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/base/operator/config/manager/manager.yaml b/components/workspaces/base/operator/config/manager/manager.yaml
index 4594a54b..64845c39 100644
--- a/components/workspaces/base/operator/config/manager/manager.yaml
+++ b/components/workspaces/base/operator/config/manager/manager.yaml
@@ -4,7 +4,7 @@ metadata:
   labels:
     control-plane: controller-manager
     app.kubernetes.io/name: namespace
-    app.kubernetes.io/instance: system 
+    app.kubernetes.io/instance: system
     app.kubernetes.io/component: manager
     app.kubernetes.io/created-by: workspaces
     app.kubernetes.io/part-of: workspaces
@@ -51,7 +51,7 @@ spec:
         - /manager
         args:
         - "--leader-elect"
-        image: controller:index
+        image: controller:latest
         imagePullPolicy: IfNotPresent
         env:
         - name: KUBESAW_NAMESPACE
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
index 3213e675..c9bd70cf 100644
--- a/components/workspaces/base/server/config/default/kustomization.yaml
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -6,13 +6,6 @@ resources:
 - ../server
 namePrefix: workspaces-
 
-configMapGenerator:
-- behavior: replace
-  literals:
-  - log.level=0
-  - kubesaw.namespace=toolchain-host-operator
-  name: rest-api-server-config
-
       # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
       # create Role and RoleBinding to read UserSignups into toolchain-host-operator
       # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
@@ -79,3 +72,9 @@ replacements:
       kind: RoleBinding
       name: rest-api-server:usersignup-reader
 namespace: workspaces-system
+configMapGenerator:
+- behavior: replace
+  literals:
+  - log.level=0
+  - kubesaw.namespace=toolchain-host-operator
+  name: rest-api-server-config
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
index 7ec382c0..d0e3d69f 100644
--- a/components/workspaces/base/server/config/server/deployment.yaml
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -41,7 +41,7 @@ spec:
           requests:
             cpu: 10m
             memory: 64Mi
-      - image: workspaces/rest-api:index
+      - image: workspaces/rest-api:latest
         name: rest-api
         imagePullPolicy: IfNotPresent
         env:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 136e4405..15e029d6 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
diff --git a/components/workspaces/staging/kustomization.yaml b/components/workspaces/staging/kustomization.yaml
index 4d3ff0ba..47025b9d 100644
--- a/components/workspaces/staging/kustomization.yaml
+++ b/components/workspaces/staging/kustomization.yaml
@@ -5,10 +5,10 @@ resources:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha2
+  newTag: v0.1.0-alpha3
 
 configMapGenerator:
 - behavior: merge 
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
