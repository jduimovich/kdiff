# kustomize changes tracked by commits 
### This file generated at Fri Jan 12 12:02:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1c04ec64 to cd1f6faa on Thu Jan 11 19:37:06 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index de5e31f4..8b3e558d 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: enterprise-contract
-spec:
-  url: "https://github.com/enterprise-contract/enterprise-contract-controller"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-service
 spec:
@@ -85,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: ec-golden-image
-spec:
-  url: "https://github.com/enterprise-contract/golden-container"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-1c04ec64/production/components/tekton-ci/production/kustomize.out.yaml
295a296,313
>   name: ec-golden-image
> spec:
>   url: https://github.com/enterprise-contract/golden-container
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: enterprise-contract
> spec:
>   url: https://github.com/enterprise-contract/enterprise-contract-controller
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>1: Staging changes from 1c04ec64 to cd1f6faa on Thu Jan 11 19:37:06 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index de5e31f4..8b3e558d 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: enterprise-contract
-spec:
-  url: "https://github.com/enterprise-contract/enterprise-contract-controller"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-service
 spec:
@@ -85,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: ec-golden-image
-spec:
-  url: "https://github.com/enterprise-contract/golden-container"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-1c04ec64/staging/components/tekton-ci/staging/kustomize.out.yaml
255a256,273
>   name: ec-golden-image
> spec:
>   url: https://github.com/enterprise-contract/golden-container
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: enterprise-contract
> spec:
>   url: https://github.com/enterprise-contract/enterprise-contract-controller
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>1: Development changes from 1c04ec64 to cd1f6faa on Thu Jan 11 19:37:06 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index de5e31f4..8b3e558d 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: enterprise-contract
-spec:
-  url: "https://github.com/enterprise-contract/enterprise-contract-controller"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-service
 spec:
@@ -85,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: ec-golden-image
-spec:
-  url: "https://github.com/enterprise-contract/golden-container"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 211c1c8e to 1c04ec64 on Thu Jan 11 19:12:18 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3457d6b8..882f49dd 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 275165a4..993bb158 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 3ff30e95..35dbc31d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 4e3475e7..f5b9b117 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 211c1c8e to 1c04ec64 on Thu Jan 11 19:12:18 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3457d6b8..882f49dd 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 275165a4..993bb158 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 3ff30e95..35dbc31d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 4e3475e7..f5b9b117 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
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
<h3>2: Development changes from 211c1c8e to 1c04ec64 on Thu Jan 11 19:12:18 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3457d6b8..882f49dd 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 275165a4..993bb158 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 3ff30e95..35dbc31d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 4e3475e7..f5b9b117 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from d5bde6c4 to 211c1c8e on Thu Jan 11 17:45:40 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 26406494..57d8ed54 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,4 +110,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index ea65f1ba..a00fff83 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=395028f6f37dde25b223365bb4cb3ab9ff62a516
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ed0cb3ca999a444536d7fffd0825c9bb3eca993
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,11 +12,11 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:77c9bf296ee23a61cce9b425b54764b48a9af1a0@sha256:1a9824e19e27a4f8c1057d132c7cedf93fd4e44c3c1b7d1efcbf288b7e542ea0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=77c9bf296ee23a61cce9b425b54764b48a9af1a0
+      - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 395028f6f37dde25b223365bb4cb3ab9ff62a516
+    newTag: 4ed0cb3ca999a444536d7fffd0825c9bb3eca993 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-d5bde6c4/production/components/enterprise-contract/kustomize.out.yaml
154,155d153
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
177,178d174
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
362c358
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:77c9bf296ee23a61cce9b425b54764b48a9af1a0@sha256:1a9824e19e27a4f8c1057d132c7cedf93fd4e44c3c1b7d1efcbf288b7e542ea0
364c360
<   verify_ec_task_git_revision: 2f65d22d006597d65f16318c821ad7d9ad7f9d96
---
>   verify_ec_task_git_revision: 77c9bf296ee23a61cce9b425b54764b48a9af1a0
597c593
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
621c617
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
645c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
672c668
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
698c694
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69 
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
<h3>3: Staging changes from d5bde6c4 to 211c1c8e on Thu Jan 11 17:45:40 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 26406494..57d8ed54 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,4 +110,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index ea65f1ba..a00fff83 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=395028f6f37dde25b223365bb4cb3ab9ff62a516
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ed0cb3ca999a444536d7fffd0825c9bb3eca993
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,11 +12,11 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:77c9bf296ee23a61cce9b425b54764b48a9af1a0@sha256:1a9824e19e27a4f8c1057d132c7cedf93fd4e44c3c1b7d1efcbf288b7e542ea0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=77c9bf296ee23a61cce9b425b54764b48a9af1a0
+      - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 395028f6f37dde25b223365bb4cb3ab9ff62a516
+    newTag: 4ed0cb3ca999a444536d7fffd0825c9bb3eca993 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-d5bde6c4/staging/components/enterprise-contract/kustomize.out.yaml
154,155d153
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
177,178d174
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
362c358
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:77c9bf296ee23a61cce9b425b54764b48a9af1a0@sha256:1a9824e19e27a4f8c1057d132c7cedf93fd4e44c3c1b7d1efcbf288b7e542ea0
364c360
<   verify_ec_task_git_revision: 2f65d22d006597d65f16318c821ad7d9ad7f9d96
---
>   verify_ec_task_git_revision: 77c9bf296ee23a61cce9b425b54764b48a9af1a0
597c593
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
621c617
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
645c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
672c668
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
698c694
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69 
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
<h3>3: Development changes from d5bde6c4 to 211c1c8e on Thu Jan 11 17:45:40 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 26406494..57d8ed54 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,4 +110,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index ea65f1ba..a00fff83 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=395028f6f37dde25b223365bb4cb3ab9ff62a516
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ed0cb3ca999a444536d7fffd0825c9bb3eca993
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,11 +12,11 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:77c9bf296ee23a61cce9b425b54764b48a9af1a0@sha256:1a9824e19e27a4f8c1057d132c7cedf93fd4e44c3c1b7d1efcbf288b7e542ea0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=77c9bf296ee23a61cce9b425b54764b48a9af1a0
+      - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 395028f6f37dde25b223365bb4cb3ab9ff62a516
+    newTag: 4ed0cb3ca999a444536d7fffd0825c9bb3eca993 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-d5bde6c4/development/components/enterprise-contract/kustomize.out.yaml
154,155d153
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
177,178d174
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
362c358
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:77c9bf296ee23a61cce9b425b54764b48a9af1a0@sha256:1a9824e19e27a4f8c1057d132c7cedf93fd4e44c3c1b7d1efcbf288b7e542ea0
364c360
<   verify_ec_task_git_revision: 2f65d22d006597d65f16318c821ad7d9ad7f9d96
---
>   verify_ec_task_git_revision: 77c9bf296ee23a61cce9b425b54764b48a9af1a0
597c593
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
621c617
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
645c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
672c668
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69
698c694
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-52fc981@sha256:adcfe4ebb1fff8e5b2f793fc66f2853bdc34d776a4bd519e905cced9142bad69 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from d3594c2c to d5bde6c4 on Thu Jan 11 16:56:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 7f7819af..6aba00d2 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=1673763aec7559646f615936fc28e22fe501b742
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
+    newTag: 1673763aec7559646f615936fc28e22fe501b742
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 9d264e8f..2ab86c85 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=1673763aec7559646f615936fc28e22fe501b742
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=1673763aec7559646f615936fc28e22fe501b742
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
+    newTag: 1673763aec7559646f615936fc28e22fe501b742
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index ed1dfdef..f4742bc0 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=1673763aec7559646f615936fc28e22fe501b742
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 6665130a..b3575441 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=1673763aec7559646f615936fc28e22fe501b742
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d3594c2c/production/components/has/production/kustomize.out.yaml
848c848
<         image: quay.io/redhat-appstudio/application-service:1673763aec7559646f615936fc28e22fe501b742
---
>         image: quay.io/redhat-appstudio/application-service:30821d6190b42bd54f59cf3a559b8829dc20126f 
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
<h3>4: Staging changes from d3594c2c to d5bde6c4 on Thu Jan 11 16:56:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 7f7819af..6aba00d2 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=1673763aec7559646f615936fc28e22fe501b742
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
+    newTag: 1673763aec7559646f615936fc28e22fe501b742
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 9d264e8f..2ab86c85 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=1673763aec7559646f615936fc28e22fe501b742
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=1673763aec7559646f615936fc28e22fe501b742
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
+    newTag: 1673763aec7559646f615936fc28e22fe501b742
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index ed1dfdef..f4742bc0 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=1673763aec7559646f615936fc28e22fe501b742
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 6665130a..b3575441 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=1673763aec7559646f615936fc28e22fe501b742
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d3594c2c/staging/components/has/staging/kustomize.out.yaml
874c874
<         image: quay.io/redhat-appstudio/application-service:1673763aec7559646f615936fc28e22fe501b742
---
>         image: quay.io/redhat-appstudio/application-service:30821d6190b42bd54f59cf3a559b8829dc20126f 
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
<h3>4: Development changes from d3594c2c to d5bde6c4 on Thu Jan 11 16:56:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 7f7819af..6aba00d2 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=1673763aec7559646f615936fc28e22fe501b742
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
+    newTag: 1673763aec7559646f615936fc28e22fe501b742
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 9d264e8f..2ab86c85 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=1673763aec7559646f615936fc28e22fe501b742
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=1673763aec7559646f615936fc28e22fe501b742
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
+    newTag: 1673763aec7559646f615936fc28e22fe501b742
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index ed1dfdef..f4742bc0 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=1673763aec7559646f615936fc28e22fe501b742
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 6665130a..b3575441 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=1673763aec7559646f615936fc28e22fe501b742
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d3594c2c/development/components/has/development/kustomize.out.yaml
807c807
<         image: quay.io/redhat-appstudio/application-service:1673763aec7559646f615936fc28e22fe501b742
---
>         image: quay.io/redhat-appstudio/application-service:30821d6190b42bd54f59cf3a559b8829dc20126f 
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
```
 
</details> 
<br> 


</div>
