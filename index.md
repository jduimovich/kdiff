# kustomize changes tracked by commits 
### This file generated at Fri Jun 28 16:06:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from dca137c1 to 296c6757 on Fri Jun 28 14:48:17 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index af25fa20..6d0c62e4 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -52,3 +52,4 @@ spec:
         - integration-service
         - ci-helper-app
         - mintmaker
+        - konflux-otel 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-dca137c1/production/components/cluster-secret-store/production/kustomize.out.yaml
35d34
<     - konflux-otel 
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
<h3>1: Staging changes from dca137c1 to 296c6757 on Fri Jun 28 14:48:17 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index af25fa20..6d0c62e4 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -52,3 +52,4 @@ spec:
         - integration-service
         - ci-helper-app
         - mintmaker
+        - konflux-otel 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-dca137c1/staging/components/cluster-secret-store/staging/kustomize.out.yaml
35d34
<     - konflux-otel 
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
<h3>1: Development changes from dca137c1 to 296c6757 on Fri Jun 28 14:48:17 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index af25fa20..6d0c62e4 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -52,3 +52,4 @@ spec:
         - integration-service
         - ci-helper-app
         - mintmaker
+        - konflux-otel 
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
<h3>2: Production changes from 126c43d8 to dca137c1 on Fri Jun 28 14:21:08 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index bfb1aaac..143ee88d 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,6 +11,5 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
-  - tracing-workload-otel-collector
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 38440b5c..4caca9fc 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - tracing-workload-otel-collector
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
similarity index 64%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
index edb6bae3..bca76251 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -3,3 +3,5 @@ kind: Kustomization
 resources:
 - tracing-workload-otel-collector.yaml
 - tracing-workload-tracing.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml 
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
<h3>2: Staging changes from 126c43d8 to dca137c1 on Fri Jun 28 14:21:08 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index bfb1aaac..143ee88d 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,6 +11,5 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
-  - tracing-workload-otel-collector
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 38440b5c..4caca9fc 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - tracing-workload-otel-collector
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
similarity index 64%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
index edb6bae3..bca76251 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -3,3 +3,5 @@ kind: Kustomization
 resources:
 - tracing-workload-otel-collector.yaml
 - tracing-workload-tracing.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml 
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
<h3>2: Development changes from 126c43d8 to dca137c1 on Fri Jun 28 14:21:08 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index bfb1aaac..143ee88d 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,6 +11,5 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
-  - tracing-workload-otel-collector
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 38440b5c..4caca9fc 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - tracing-workload-otel-collector
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
similarity index 64%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
index edb6bae3..bca76251 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -3,3 +3,5 @@ kind: Kustomization
 resources:
 - tracing-workload-otel-collector.yaml
 - tracing-workload-tracing.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml
rename to argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-tracing.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-126c43d8/development/app-of-apps-development.yaml
1310a1311,1317
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             - key: clustertemplateinstance.openshift.io/name
>               operator: DoesNotExist
1312c1319
<               appstudio.redhat.com/member-cluster: "true"
---
>               argocd.argoproj.io/secret-type: cluster
1367a1375,1381
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             - key: clustertemplateinstance.openshift.io/name
>               operator: DoesNotExist
1369c1383
<               appstudio.redhat.com/member-cluster: "true"
---
>               argocd.argoproj.io/secret-type: cluster 
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
<h3>3: Production changes from 0180a0bf to 126c43d8 on Fri Jun 28 11:41:11 2024 </h3>  
 
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
<h3>3: Staging changes from 0180a0bf to 126c43d8 on Fri Jun 28 11:41:11 2024 </h3>  
 
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
<h3>3: Development changes from 0180a0bf to 126c43d8 on Fri Jun 28 11:41:11 2024 </h3>  
 
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
<h3>4: Production changes from ecca2b80 to 0180a0bf on Fri Jun 28 07:07:25 2024 </h3>  
 
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
<h3>4: Staging changes from ecca2b80 to 0180a0bf on Fri Jun 28 07:07:25 2024 </h3>  
 
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
<h3>4: Development changes from ecca2b80 to 0180a0bf on Fri Jun 28 07:07:25 2024 </h3>  
 
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
