# kustomize changes tracked by commits 
### This file generated at Fri Aug  2 16:04:56 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ebfd9079 to 1aa924f3 on Fri Aug 2 16:00:35 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 9ab01f6d..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from ebfd9079 to 1aa924f3 on Fri Aug 2 16:00:35 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 9ab01f6d..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from ebfd9079 to 1aa924f3 on Fri Aug 2 16:00:35 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 9ab01f6d..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 856764e2 to ebfd9079 on Fri Aug 2 11:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index 0151ac7c..e4b9f956 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: rh-managed-workspaces-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index 48257fb4..71915803 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: tenants-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config 
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
<h3>2: Staging changes from 856764e2 to ebfd9079 on Fri Aug 2 11:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index 0151ac7c..e4b9f956 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: rh-managed-workspaces-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index 48257fb4..71915803 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: tenants-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 856764e2 to ebfd9079 on Fri Aug 2 11:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index 0151ac7c..e4b9f956 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: rh-managed-workspaces-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index 48257fb4..71915803 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: tenants-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config 
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
<h3>3: Production changes from fbc6e42f to 856764e2 on Fri Aug 2 10:52:30 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 8741c2b4..eebef53a 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 926e4cdf..0015f34f 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 816e670e..dfae5d83 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index 5fa62d28..478a1584 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index 6853c6de..c849fdff 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f9c73951..d637d280 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1855,7 +1855,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1876,7 +1876,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index 6eba05bb..12c210fe 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 4dcfb140..633c83d5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager 
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
<h3>3: Staging changes from fbc6e42f to 856764e2 on Fri Aug 2 10:52:30 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 8741c2b4..eebef53a 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 926e4cdf..0015f34f 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 816e670e..dfae5d83 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index 5fa62d28..478a1584 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index 6853c6de..c849fdff 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f9c73951..d637d280 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1855,7 +1855,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1876,7 +1876,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index 6eba05bb..12c210fe 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 4dcfb140..633c83d5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-fbc6e42f/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
./commit-fbc6e42f/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
./commit-fbc6e42f/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
./commit-fbc6e42f/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
./commit-fbc6e42f/staging/components/gitops/staging/stone-stage-p01/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
./commit-fbc6e42f/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1858c1858
<       key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
---
>       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
1879c1879
<       key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
---
>       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from fbc6e42f to 856764e2 on Fri Aug 2 10:52:30 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 8741c2b4..eebef53a 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 926e4cdf..0015f34f 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 816e670e..dfae5d83 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index 5fa62d28..478a1584 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index 6853c6de..c849fdff 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f9c73951..d637d280 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1855,7 +1855,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1876,7 +1876,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index 6eba05bb..12c210fe 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 4dcfb140..633c83d5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager 
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
<h3>4: Production changes from 1b078bab to fbc6e42f on Fri Aug 2 09:32:46 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2974570a..54802a41 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c790e772..a956cc55 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
+      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-1b078bab/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
388c388
<   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
---
>   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb 
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
<h3>4: Staging changes from 1b078bab to fbc6e42f on Fri Aug 2 09:32:46 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2974570a..54802a41 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c790e772..a956cc55 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
+      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-1b078bab/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
388c388
<   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
---
>   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 1b078bab to fbc6e42f on Fri Aug 2 09:32:46 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2974570a..54802a41 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c790e772..a956cc55 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
+      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-1b078bab/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
388c388
<   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
---
>   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb 
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
