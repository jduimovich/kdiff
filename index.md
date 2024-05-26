# kustomize changes tracked by commits 
### This file generated at Sun May 26 12:07:28 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 7ba4c3ae to d6c51759 on Sun May 26 12:01:46 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index a73c712f..608823cb 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -3,6 +3,8 @@ kind: ProxyPlugin
 metadata:
   name: tekton-results
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 325c6e77..568ed5b3 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-m01.84db.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
index 852abb1d..f8cc7fb0 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
index 761838de..5b3137be 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 3d8e583b..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index cb443616..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
<h3>1: Staging changes from 7ba4c3ae to d6c51759 on Sun May 26 12:01:46 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index a73c712f..608823cb 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -3,6 +3,8 @@ kind: ProxyPlugin
 metadata:
   name: tekton-results
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 325c6e77..568ed5b3 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-m01.84db.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
index 852abb1d..f8cc7fb0 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
index 761838de..5b3137be 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 3d8e583b..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index cb443616..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
<h3>1: Development changes from 7ba4c3ae to d6c51759 on Sun May 26 12:01:46 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index a73c712f..608823cb 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -3,6 +3,8 @@ kind: ProxyPlugin
 metadata:
   name: tekton-results
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 325c6e77..568ed5b3 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-m01.84db.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
index 852abb1d..f8cc7fb0 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
index 761838de..5b3137be 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 3d8e583b..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index cb443616..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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

<div>
<h3>2: Production changes from 13a31b57 to 7ba4c3ae on Sun May 26 11:45:45 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
index ee2d63df..ad3e5db4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- network-policy.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
new file mode 100644
index 00000000..1d74af43
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
@@ -0,0 +1,18 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress 
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
<h3>2: Staging changes from 13a31b57 to 7ba4c3ae on Sun May 26 11:45:45 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
index ee2d63df..ad3e5db4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- network-policy.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
new file mode 100644
index 00000000..1d74af43
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
@@ -0,0 +1,18 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress 
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
<h3>2: Development changes from 13a31b57 to 7ba4c3ae on Sun May 26 11:45:45 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
index ee2d63df..ad3e5db4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- network-policy.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
new file mode 100644
index 00000000..1d74af43
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
@@ -0,0 +1,18 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress 
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

<div>
<h3>3: Production changes from 8fd7bf7f to 13a31b57 on Sun May 26 10:23:45 2024 </h3>  
 
<details> 
<summary>Git Diff (3113 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 617ab18e..80612773 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index c68e08bb..31022618 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -21,6 +21,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index b8ac6fe9..d1ef8fa9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -31,6 +31,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index 3781dae4..0cdd9265 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index babd9717..068b6665 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -22,6 +22,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: keycloak-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index c5941de9..bc681113 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index b0c47116..4617e956 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 8d455ca5..15be72e3 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index 9f8ede76..40548333 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index b0ec9c7b..77ec4789 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index f84230ea..c9856bd9 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
index 394fc7e3..1ba1149e 100644
--- a/argo-cd-apps/base/smee-client/smee-client.yaml
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -17,7 +17,11 @@ spec:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: smee-client-{{nameNormalized}}
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index 22d3b972..769b42b2 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -17,7 +17,11 @@ spec:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: ui-{{nameNormalized}}
diff --git a/components/authentication/production/stone-prod-p02/kustomization.yaml b/components/authentication/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..48c2e849
--- /dev/null
+++ b/components/authentication/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+components:
+  - ../../k-components/ldap-url-patch
diff --git a/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..80f6caf4
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-prod-backup/backup-stone-prod-p02
diff --git a/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..d2d42408
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p02
diff --git a/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..e9536a24
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 8361cc78-2507-4c79-a23b-346aa80bbcaf
diff --git a/components/backup/production/stone-prod-p02/kustomization.yaml b/components/backup/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml
diff --git a/components/build-service/production/stone-prod-p02/kustomization.yaml b/components/build-service/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..8b3d409c
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,21 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: build-service
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+configMapGenerator:
+  - name: webhook-config
+    files:
+      - webhook-config.json
+
+components:
+  - ../../components/rh-certs
+  - ../../components/webhook-config
diff --git a/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..742a8298
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p02/github-app
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
new file mode 100644
index 00000000..d1c4429b
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+}
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..9aaf74ba
--- /dev/null
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p02/kustomization.yaml b/components/gitops/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/integration/production/stone-prod-p02/console-url-config-patch.json b/components/integration/production/stone-prod-p02/console-url-config-patch.json
new file mode 100644
index 00000000..bd4e5fd9
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/stone-prod-p02/kustomization.yaml b/components/integration/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..2f086e27
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..9bf357c7
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/github-app
\ No newline at end of file
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..c5eeb9a0
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+#  - ../../base
+  - ../../base/konflux-workspace-admins
+#patches:
+#  - path: set-redirect-uri.yaml
+#    target:
+#      name: openshift-provider
+#      kind: ServiceAccount
+#  - path: set-ocp-idp.yaml
+#    target:
+#      name: redhat-external
+#      kind: KeycloakRealm
diff --git a/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml b/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml
new file mode 100644
index 00000000..216fc208
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-prod-p02.hjvn.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml b/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml
new file mode 100644
index 00000000..db908d5c
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml b/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite
diff --git a/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml b/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml
new file mode 100644
index 00000000..a552a048
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-prod-p02
diff --git a/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml b/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
new file mode 100644
index 00000000..16f465bb
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -0,0 +1,2137 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
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
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  - resolution.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  - summary
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
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
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=disable
+    DB_SSLROOTCERT=
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args: []
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 6Gi
+          requests:
+            cpu: 250m
+            memory: 6Gi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 3000m
+            memory: 1Gi
+          requests:
+            cpu: 1000m
+            memory: 500Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -check_owner=false
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 3Gi
+          requests:
+            cpu: 250m
+            memory: 3Gi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p02/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p02/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: alpha
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+      deployments:
+        tekton-operator-proxy-webhook:
+          spec:
+            replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
+        tekton-pipelines-remote-resolvers:
+          spec:
+            replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
+      disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 6
+    performance:
+      buckets: 4
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 2
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
+        settings:
+          application-name: Konflux Production Internal
+          custom-console-name: Konflux Production Internal
+          custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+  profile: all
+  pruner:
+    disabled: true
+  targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: latest
+  name: openshift-pipelines-operator-rh
+  source: custom-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/production/stone-prod-p02/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
new file mode 100644
index 00000000..336d1757
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -0,0 +1,33 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..c6ebd7a1
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/github-app
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..753bdcc2
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..518ba51b
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..4f7cd624
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..19401f53
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Production Internal
+    custom-console-name: Konflux Production Internal
+    custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..0bee6e0e
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
new file mode 100644
index 00000000..6322d595
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/rs-p02"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ee2d63df
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
new file mode 100644
index 00000000..761838de
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml
new file mode 100644
index 00000000..5c33f32a
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml
@@ -0,0 +1,72 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: true
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: konflux-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://konflux.apps.rosa.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
diff --git a/components/smee-client/production/kustomization.yaml b/components/smee-client/production/stone-prod-p01/kustomization.yaml
similarity index 92%
rename from components/smee-client/production/kustomization.yaml
rename to components/smee-client/production/stone-prod-p01/kustomization.yaml
index 3512dbba..977ed4c4 100644
--- a/components/smee-client/production/kustomization.yaml
+++ b/components/smee-client/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../../base
 patches:
   - path: sever-url-patch.yaml
     target:
diff --git a/components/smee-client/production/sever-url-patch.yaml b/components/smee-client/production/stone-prod-p01/sever-url-patch.yaml
similarity index 100%
rename from components/smee-client/production/sever-url-patch.yaml
rename to components/smee-client/production/stone-prod-p01/sever-url-patch.yaml
diff --git a/components/smee-client/production/stone-prod-p02/kustomization.yaml b/components/smee-client/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..977ed4c4
--- /dev/null
+++ b/components/smee-client/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml b/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml
new file mode 100644
index 00000000..44f92943
--- /dev/null
+++ b/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13
diff --git a/components/smee/production/ip-allow-list.yaml b/components/smee/production/ip-allow-list.yaml
index 7957c976..5566860e 100644
--- a/components/smee/production/ip-allow-list.yaml
+++ b/components/smee/production/ip-allow-list.yaml
@@ -22,3 +22,6 @@
     44.217.103.151
     44.221.194.189
     54.156.92.180
+    44.214.26.171
+    100.28.40.7
+    18.205.172.54
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
new file mode 100644
index 00000000..86bbf0d7
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/spi-p02"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..57e2e586
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
new file mode 100644
index 00000000..975e6d92
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..0bee6e0e
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..a7db9b3a
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/spi/p02/shared-configuration-file
diff --git a/components/ui/production/fed-modules.json b/components/ui/production/stone-prod-p01/fed-modules.json
similarity index 100%
rename from components/ui/production/fed-modules.json
rename to components/ui/production/stone-prod-p01/fed-modules.json
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
similarity index 98%
rename from components/ui/production/kustomization.yaml
rename to components/ui/production/stone-prod-p01/kustomization.yaml
index 2b2f0e1f..e375ad21 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 kind: Kustomization
 apiVersion: kustomize.config.k8s.io/v1beta1
 resources:
-  - ../base
+  - ../../base
 namespace: rhtap-ui
 images:
   # chrome frontend
diff --git a/components/ui/production/set-hostname.yaml b/components/ui/production/stone-prod-p01/set-hostname.yaml
similarity index 100%
rename from components/ui/production/set-hostname.yaml
rename to components/ui/production/stone-prod-p01/set-hostname.yaml
diff --git a/components/ui/production/stone-prod-p02/fed-modules.json b/components/ui/production/stone-prod-p02/fed-modules.json
new file mode 100644
index 00000000..18fb5c53
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..e375ad21
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: d76ce23
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 6f08f67
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: a8ca051
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/production/stone-prod-p02/set-hostname.yaml b/components/ui/production/stone-prod-p02/set-hostname.yaml
new file mode 100644
index 00000000..8b9aad6e
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-13a31b57/production/components/authentication/production: stone-prod-p02
./commit-13a31b57/production/components/backup/production: stone-prod-p02
./commit-13a31b57/production/components/build-service/production: stone-prod-p02
./commit-13a31b57/production/components/gitops/production: stone-prod-p02
./commit-13a31b57/production/components/integration/production: stone-prod-p02
./commit-13a31b57/production/components/keycloak/production: stone-prod-p02
./commit-13a31b57/production/components/pipeline-service/production: stone-prod-p02
./commit-8fd7bf7f/production/components/smee/production/kustomize.out.yaml
61c61
<       44.221.194.189 54.156.92.180 44.214.26.171 100.28.40.7 18.205.172.54
---
>       44.221.194.189 54.156.92.180
./commit-8fd7bf7f/production/components/smee-client/production: kustomize.out.yaml
./commit-13a31b57/production/components/smee-client/production: stone-prod-p01
./commit-13a31b57/production/components/smee-client/production: stone-prod-p02
./commit-8fd7bf7f/production/components/ui/production: kustomize.out.yaml
./commit-13a31b57/production/components/ui/production: stone-prod-p01
./commit-13a31b57/production/components/ui/production: stone-prod-p02 
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
<h3>3: Staging changes from 8fd7bf7f to 13a31b57 on Sun May 26 10:23:45 2024 </h3>  
 
<details> 
<summary>Git Diff (3113 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 617ab18e..80612773 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index c68e08bb..31022618 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -21,6 +21,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index b8ac6fe9..d1ef8fa9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -31,6 +31,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index 3781dae4..0cdd9265 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index babd9717..068b6665 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -22,6 +22,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: keycloak-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index c5941de9..bc681113 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index b0c47116..4617e956 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 8d455ca5..15be72e3 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index 9f8ede76..40548333 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index b0ec9c7b..77ec4789 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index f84230ea..c9856bd9 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
index 394fc7e3..1ba1149e 100644
--- a/argo-cd-apps/base/smee-client/smee-client.yaml
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -17,7 +17,11 @@ spec:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: smee-client-{{nameNormalized}}
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index 22d3b972..769b42b2 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -17,7 +17,11 @@ spec:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: ui-{{nameNormalized}}
diff --git a/components/authentication/production/stone-prod-p02/kustomization.yaml b/components/authentication/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..48c2e849
--- /dev/null
+++ b/components/authentication/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+components:
+  - ../../k-components/ldap-url-patch
diff --git a/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..80f6caf4
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-prod-backup/backup-stone-prod-p02
diff --git a/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..d2d42408
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p02
diff --git a/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..e9536a24
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 8361cc78-2507-4c79-a23b-346aa80bbcaf
diff --git a/components/backup/production/stone-prod-p02/kustomization.yaml b/components/backup/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml
diff --git a/components/build-service/production/stone-prod-p02/kustomization.yaml b/components/build-service/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..8b3d409c
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,21 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: build-service
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+configMapGenerator:
+  - name: webhook-config
+    files:
+      - webhook-config.json
+
+components:
+  - ../../components/rh-certs
+  - ../../components/webhook-config
diff --git a/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..742a8298
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p02/github-app
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
new file mode 100644
index 00000000..d1c4429b
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+}
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..9aaf74ba
--- /dev/null
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p02/kustomization.yaml b/components/gitops/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/integration/production/stone-prod-p02/console-url-config-patch.json b/components/integration/production/stone-prod-p02/console-url-config-patch.json
new file mode 100644
index 00000000..bd4e5fd9
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/stone-prod-p02/kustomization.yaml b/components/integration/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..2f086e27
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..9bf357c7
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/github-app
\ No newline at end of file
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..c5eeb9a0
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+#  - ../../base
+  - ../../base/konflux-workspace-admins
+#patches:
+#  - path: set-redirect-uri.yaml
+#    target:
+#      name: openshift-provider
+#      kind: ServiceAccount
+#  - path: set-ocp-idp.yaml
+#    target:
+#      name: redhat-external
+#      kind: KeycloakRealm
diff --git a/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml b/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml
new file mode 100644
index 00000000..216fc208
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-prod-p02.hjvn.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml b/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml
new file mode 100644
index 00000000..db908d5c
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml b/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite
diff --git a/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml b/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml
new file mode 100644
index 00000000..a552a048
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-prod-p02
diff --git a/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml b/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
new file mode 100644
index 00000000..16f465bb
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -0,0 +1,2137 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
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
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  - resolution.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  - summary
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
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
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=disable
+    DB_SSLROOTCERT=
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args: []
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 6Gi
+          requests:
+            cpu: 250m
+            memory: 6Gi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 3000m
+            memory: 1Gi
+          requests:
+            cpu: 1000m
+            memory: 500Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -check_owner=false
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 3Gi
+          requests:
+            cpu: 250m
+            memory: 3Gi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p02/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p02/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: alpha
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+      deployments:
+        tekton-operator-proxy-webhook:
+          spec:
+            replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
+        tekton-pipelines-remote-resolvers:
+          spec:
+            replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
+      disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 6
+    performance:
+      buckets: 4
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 2
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
+        settings:
+          application-name: Konflux Production Internal
+          custom-console-name: Konflux Production Internal
+          custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+  profile: all
+  pruner:
+    disabled: true
+  targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: latest
+  name: openshift-pipelines-operator-rh
+  source: custom-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/production/stone-prod-p02/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
new file mode 100644
index 00000000..336d1757
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -0,0 +1,33 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..c6ebd7a1
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/github-app
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..753bdcc2
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..518ba51b
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..4f7cd624
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..19401f53
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Production Internal
+    custom-console-name: Konflux Production Internal
+    custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..0bee6e0e
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
new file mode 100644
index 00000000..6322d595
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/rs-p02"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ee2d63df
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
new file mode 100644
index 00000000..761838de
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml
new file mode 100644
index 00000000..5c33f32a
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml
@@ -0,0 +1,72 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: true
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: konflux-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://konflux.apps.rosa.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
diff --git a/components/smee-client/production/kustomization.yaml b/components/smee-client/production/stone-prod-p01/kustomization.yaml
similarity index 92%
rename from components/smee-client/production/kustomization.yaml
rename to components/smee-client/production/stone-prod-p01/kustomization.yaml
index 3512dbba..977ed4c4 100644
--- a/components/smee-client/production/kustomization.yaml
+++ b/components/smee-client/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../../base
 patches:
   - path: sever-url-patch.yaml
     target:
diff --git a/components/smee-client/production/sever-url-patch.yaml b/components/smee-client/production/stone-prod-p01/sever-url-patch.yaml
similarity index 100%
rename from components/smee-client/production/sever-url-patch.yaml
rename to components/smee-client/production/stone-prod-p01/sever-url-patch.yaml
diff --git a/components/smee-client/production/stone-prod-p02/kustomization.yaml b/components/smee-client/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..977ed4c4
--- /dev/null
+++ b/components/smee-client/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml b/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml
new file mode 100644
index 00000000..44f92943
--- /dev/null
+++ b/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13
diff --git a/components/smee/production/ip-allow-list.yaml b/components/smee/production/ip-allow-list.yaml
index 7957c976..5566860e 100644
--- a/components/smee/production/ip-allow-list.yaml
+++ b/components/smee/production/ip-allow-list.yaml
@@ -22,3 +22,6 @@
     44.217.103.151
     44.221.194.189
     54.156.92.180
+    44.214.26.171
+    100.28.40.7
+    18.205.172.54
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
new file mode 100644
index 00000000..86bbf0d7
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/spi-p02"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..57e2e586
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
new file mode 100644
index 00000000..975e6d92
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..0bee6e0e
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..a7db9b3a
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/spi/p02/shared-configuration-file
diff --git a/components/ui/production/fed-modules.json b/components/ui/production/stone-prod-p01/fed-modules.json
similarity index 100%
rename from components/ui/production/fed-modules.json
rename to components/ui/production/stone-prod-p01/fed-modules.json
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
similarity index 98%
rename from components/ui/production/kustomization.yaml
rename to components/ui/production/stone-prod-p01/kustomization.yaml
index 2b2f0e1f..e375ad21 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 kind: Kustomization
 apiVersion: kustomize.config.k8s.io/v1beta1
 resources:
-  - ../base
+  - ../../base
 namespace: rhtap-ui
 images:
   # chrome frontend
diff --git a/components/ui/production/set-hostname.yaml b/components/ui/production/stone-prod-p01/set-hostname.yaml
similarity index 100%
rename from components/ui/production/set-hostname.yaml
rename to components/ui/production/stone-prod-p01/set-hostname.yaml
diff --git a/components/ui/production/stone-prod-p02/fed-modules.json b/components/ui/production/stone-prod-p02/fed-modules.json
new file mode 100644
index 00000000..18fb5c53
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..e375ad21
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: d76ce23
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 6f08f67
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: a8ca051
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/production/stone-prod-p02/set-hostname.yaml b/components/ui/production/stone-prod-p02/set-hostname.yaml
new file mode 100644
index 00000000..8b9aad6e
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com 
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
<h3>3: Development changes from 8fd7bf7f to 13a31b57 on Sun May 26 10:23:45 2024 </h3>  
 
<details> 
<summary>Git Diff (3113 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 617ab18e..80612773 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index c68e08bb..31022618 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -21,6 +21,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index b8ac6fe9..d1ef8fa9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -31,6 +31,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index 3781dae4..0cdd9265 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index babd9717..068b6665 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -22,6 +22,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: keycloak-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index c5941de9..bc681113 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index b0c47116..4617e956 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 8d455ca5..15be72e3 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index 9f8ede76..40548333 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index b0ec9c7b..77ec4789 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index f84230ea..c9856bd9 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
index 394fc7e3..1ba1149e 100644
--- a/argo-cd-apps/base/smee-client/smee-client.yaml
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -17,7 +17,11 @@ spec:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: smee-client-{{nameNormalized}}
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index 22d3b972..769b42b2 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -17,7 +17,11 @@ spec:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: ui-{{nameNormalized}}
diff --git a/components/authentication/production/stone-prod-p02/kustomization.yaml b/components/authentication/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..48c2e849
--- /dev/null
+++ b/components/authentication/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+components:
+  - ../../k-components/ldap-url-patch
diff --git a/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..80f6caf4
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-prod-backup/backup-stone-prod-p02
diff --git a/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..d2d42408
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p02
diff --git a/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..e9536a24
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 8361cc78-2507-4c79-a23b-346aa80bbcaf
diff --git a/components/backup/production/stone-prod-p02/kustomization.yaml b/components/backup/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml
diff --git a/components/build-service/production/stone-prod-p02/kustomization.yaml b/components/build-service/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..8b3d409c
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,21 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: build-service
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+configMapGenerator:
+  - name: webhook-config
+    files:
+      - webhook-config.json
+
+components:
+  - ../../components/rh-certs
+  - ../../components/webhook-config
diff --git a/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..742a8298
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p02/github-app
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
new file mode 100644
index 00000000..d1c4429b
--- /dev/null
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+}
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..9aaf74ba
--- /dev/null
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p02/kustomization.yaml b/components/gitops/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/integration/production/stone-prod-p02/console-url-config-patch.json b/components/integration/production/stone-prod-p02/console-url-config-patch.json
new file mode 100644
index 00000000..bd4e5fd9
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/stone-prod-p02/kustomization.yaml b/components/integration/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..2f086e27
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..9bf357c7
--- /dev/null
+++ b/components/integration/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/github-app
\ No newline at end of file
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..c5eeb9a0
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+#  - ../../base
+  - ../../base/konflux-workspace-admins
+#patches:
+#  - path: set-redirect-uri.yaml
+#    target:
+#      name: openshift-provider
+#      kind: ServiceAccount
+#  - path: set-ocp-idp.yaml
+#    target:
+#      name: redhat-external
+#      kind: KeycloakRealm
diff --git a/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml b/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml
new file mode 100644
index 00000000..216fc208
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-prod-p02.hjvn.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml b/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml
new file mode 100644
index 00000000..db908d5c
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p02/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml b/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite
diff --git a/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml b/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml
new file mode 100644
index 00000000..a552a048
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p02/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-prod-p02
diff --git a/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml b/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
new file mode 100644
index 00000000..16f465bb
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -0,0 +1,2137 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
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
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  - resolution.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  - summary
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
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
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=disable
+    DB_SSLROOTCERT=
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args: []
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 6Gi
+          requests:
+            cpu: 250m
+            memory: 6Gi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 3000m
+            memory: 1Gi
+          requests:
+            cpu: 1000m
+            memory: 500Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -check_owner=false
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 3Gi
+          requests:
+            cpu: 250m
+            memory: 3Gi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p02/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p02/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: alpha
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+      deployments:
+        tekton-operator-proxy-webhook:
+          spec:
+            replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
+        tekton-pipelines-remote-resolvers:
+          spec:
+            replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
+      disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 6
+    performance:
+      buckets: 4
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 2
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
+        settings:
+          application-name: Konflux Production Internal
+          custom-console-name: Konflux Production Internal
+          custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+  profile: all
+  pruner:
+    disabled: true
+  targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: latest
+  name: openshift-pipelines-operator-rh
+  source: custom-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/production/stone-prod-p02/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
new file mode 100644
index 00000000..336d1757
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -0,0 +1,33 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..c6ebd7a1
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/github-app
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..753bdcc2
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p02/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..518ba51b
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..4f7cd624
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..19401f53
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Production Internal
+    custom-console-name: Konflux Production Internal
+    custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..0bee6e0e
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
new file mode 100644
index 00000000..6322d595
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/rs-p02"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..ee2d63df
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
new file mode 100644
index 00000000..761838de
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml
new file mode 100644
index 00000000..5c33f32a
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/toolchainconfig.yaml
@@ -0,0 +1,72 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: true
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: konflux-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://konflux.apps.rosa.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
diff --git a/components/smee-client/production/kustomization.yaml b/components/smee-client/production/stone-prod-p01/kustomization.yaml
similarity index 92%
rename from components/smee-client/production/kustomization.yaml
rename to components/smee-client/production/stone-prod-p01/kustomization.yaml
index 3512dbba..977ed4c4 100644
--- a/components/smee-client/production/kustomization.yaml
+++ b/components/smee-client/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../../base
 patches:
   - path: sever-url-patch.yaml
     target:
diff --git a/components/smee-client/production/sever-url-patch.yaml b/components/smee-client/production/stone-prod-p01/sever-url-patch.yaml
similarity index 100%
rename from components/smee-client/production/sever-url-patch.yaml
rename to components/smee-client/production/stone-prod-p01/sever-url-patch.yaml
diff --git a/components/smee-client/production/stone-prod-p02/kustomization.yaml b/components/smee-client/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..977ed4c4
--- /dev/null
+++ b/components/smee-client/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml b/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml
new file mode 100644
index 00000000..44f92943
--- /dev/null
+++ b/components/smee-client/production/stone-prod-p02/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13
diff --git a/components/smee/production/ip-allow-list.yaml b/components/smee/production/ip-allow-list.yaml
index 7957c976..5566860e 100644
--- a/components/smee/production/ip-allow-list.yaml
+++ b/components/smee/production/ip-allow-list.yaml
@@ -22,3 +22,6 @@
     44.217.103.151
     44.221.194.189
     54.156.92.180
+    44.214.26.171
+    100.28.40.7
+    18.205.172.54
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
new file mode 100644
index 00000000..86bbf0d7
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/spi-p02"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..57e2e586
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
new file mode 100644
index 00000000..975e6d92
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..0bee6e0e
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..a7db9b3a
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/spi/p02/shared-configuration-file
diff --git a/components/ui/production/fed-modules.json b/components/ui/production/stone-prod-p01/fed-modules.json
similarity index 100%
rename from components/ui/production/fed-modules.json
rename to components/ui/production/stone-prod-p01/fed-modules.json
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
similarity index 98%
rename from components/ui/production/kustomization.yaml
rename to components/ui/production/stone-prod-p01/kustomization.yaml
index 2b2f0e1f..e375ad21 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 kind: Kustomization
 apiVersion: kustomize.config.k8s.io/v1beta1
 resources:
-  - ../base
+  - ../../base
 namespace: rhtap-ui
 images:
   # chrome frontend
diff --git a/components/ui/production/set-hostname.yaml b/components/ui/production/stone-prod-p01/set-hostname.yaml
similarity index 100%
rename from components/ui/production/set-hostname.yaml
rename to components/ui/production/stone-prod-p01/set-hostname.yaml
diff --git a/components/ui/production/stone-prod-p02/fed-modules.json b/components/ui/production/stone-prod-p02/fed-modules.json
new file mode 100644
index 00000000..18fb5c53
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..e375ad21
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: d76ce23
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 6f08f67
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: a8ca051
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/production/stone-prod-p02/set-hostname.yaml b/components/ui/production/stone-prod-p02/set-hostname.yaml
new file mode 100644
index 00000000..8b9aad6e
--- /dev/null
+++ b/components/ui/production/stone-prod-p02/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-8fd7bf7f/development/app-of-apps-development.yaml
74,75d73
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02
484,485d481
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02
682,683d677
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02
832,833d825
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02
980,981d971
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02
1128,1129d1117
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02 
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
<h3>4: Production changes from cc46a725 to 8fd7bf7f on Sun May 26 07:25:54 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 697a7ab3..7e66d891 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target: 
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
<h3>4: Staging changes from cc46a725 to 8fd7bf7f on Sun May 26 07:25:54 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 697a7ab3..7e66d891 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target: 
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
<h3>4: Development changes from cc46a725 to 8fd7bf7f on Sun May 26 07:25:54 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 697a7ab3..7e66d891 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target: 
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
