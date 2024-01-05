# kustomize changes tracked by commits 
### This file generated at Fri Jan  5 08:05:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 49a55601 to a52eb6e2 on Fri Jan 5 07:33:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index bc89313e..4c50151d 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml 
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
<h3>1: Staging changes from 49a55601 to a52eb6e2 on Fri Jan 5 07:33:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index bc89313e..4c50151d 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml 
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
<h3>1: Development changes from 49a55601 to a52eb6e2 on Fri Jan 5 07:33:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index bc89313e..4c50151d 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml 
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
<h3>2: Production changes from cee0a84b to 49a55601 on Fri Jan 5 06:05:53 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index dd027f1e..aea1c701 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b458b2ea..8a5340b1 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9ad508b7..70800cd8 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5b071d72..d5e8d731 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5ed8cbbf..e282f2d8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b5232641..40fc3cd3 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c341b318..26ebea82 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0b8fb185..d7a5ba58 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e28df73d..0564057c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-cee0a84b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1113,1114d1112
<     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
<       exposes metric for an OSP deployment
./commit-cee0a84b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1113,1114d1112
<     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
<       exposes metric for an OSP deployment 
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
<h3>2: Staging changes from cee0a84b to 49a55601 on Fri Jan 5 06:05:53 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index dd027f1e..aea1c701 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b458b2ea..8a5340b1 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9ad508b7..70800cd8 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5b071d72..d5e8d731 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5ed8cbbf..e282f2d8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b5232641..40fc3cd3 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c341b318..26ebea82 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0b8fb185..d7a5ba58 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e28df73d..0564057c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-cee0a84b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1487a1488,1489
>         - -check_owner
>         - "false"
./commit-cee0a84b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1487a1488,1489
>         - -check_owner
>         - "false"
./commit-cee0a84b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1487a1488,1489
>         - -check_owner
>         - "false" 
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
<h3>2: Development changes from cee0a84b to 49a55601 on Fri Jan 5 06:05:53 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index dd027f1e..aea1c701 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b458b2ea..8a5340b1 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9ad508b7..70800cd8 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5b071d72..d5e8d731 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5ed8cbbf..e282f2d8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b5232641..40fc3cd3 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e39b0f0b2c05860ec5b745ccc3b5c38ef9629406
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c341b318..26ebea82 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0b8fb185..d7a5ba58 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e28df73d..0564057c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,8 +1485,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-cee0a84b/development/components/pipeline-service/development/kustomize.out.yaml
1556a1557,1558
>         - -check_owner
>         - "false" 
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
<h3>3: Production changes from 4857a6d9 to cee0a84b on Thu Jan 4 22:32:28 2024 </h3>  
 
<details> 
<summary>Git Diff (135 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 681618e5..b458b2ea 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 15632af6..9ad508b7 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4fc60fa..5b071d72 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1110,8 +1111,6 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1484,7 +1483,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 8a34b782..5ed8cbbf 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1110,8 +1111,6 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1484,7 +1483,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3c93b45a..b5232641 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index bef2b031..c341b318 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0904e15f..0b8fb185 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 584128a8..e28df73d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-4857a6d9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1112a1113,1114
>     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
>       exposes metric for an OSP deployment
1484a1487
>         - -check_owner=false
./commit-4857a6d9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1112a1113,1114
>     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
>       exposes metric for an OSP deployment
1484a1487
>         - -check_owner=false 
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

./commit-cee0a84b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-cee0a84b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 4857a6d9 to cee0a84b on Thu Jan 4 22:32:28 2024 </h3>  
 
<details> 
<summary>Git Diff (135 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 681618e5..b458b2ea 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 15632af6..9ad508b7 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4fc60fa..5b071d72 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1110,8 +1111,6 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1484,7 +1483,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 8a34b782..5ed8cbbf 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1110,8 +1111,6 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1484,7 +1483,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3c93b45a..b5232641 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index bef2b031..c341b318 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0904e15f..0b8fb185 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 584128a8..e28df73d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-4857a6d9/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1488,1489c1488
<         - -check_owner
<         - "false"
---
>         - -check_owner=false
./commit-4857a6d9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1488,1489c1488
<         - -check_owner
<         - "false"
---
>         - -check_owner=false
./commit-4857a6d9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1488,1489c1488
<         - -check_owner
<         - "false"
---
>         - -check_owner=false 
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
<h3>3: Development changes from 4857a6d9 to cee0a84b on Thu Jan 4 22:32:28 2024 </h3>  
 
<details> 
<summary>Git Diff (135 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 681618e5..b458b2ea 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 15632af6..9ad508b7 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4fc60fa..5b071d72 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1110,8 +1111,6 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1484,7 +1483,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 8a34b782..5ed8cbbf 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,3 +1,4 @@
+---
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1110,8 +1111,6 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1484,7 +1483,6 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3c93b45a..b5232641 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index bef2b031..c341b318 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0904e15f..0b8fb185 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 584128a8..e28df73d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,7 +1485,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner=false
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (6 lines)</summary>  

``` 
./commit-4857a6d9/development/components/pipeline-service/development/kustomize.out.yaml
1557,1558c1557
<         - -check_owner
<         - "false"
---
>         - -check_owner=false 
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
<h3>4: Production changes from 310c3cd7 to 4857a6d9 on Thu Jan 4 18:38:17 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..edd6042d 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..ab5ac9b6 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,15 +30,38 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.ppc1.address: "150.240.147.198"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "ibm-ssh-key"
-  host.ppc1.concurrency: "4"
-
-  host.ibmz1.address: "169.63.177.141"
-  host.ibmz1.platform: "linux/s390x"
-  host.ibmz1.user: "root"
-  host.ibmz1.secret: "ibm-ssh-key"
-
-  host.ibmz1.concurrency: "4"
+  # host.ppc1.address: "150.240.147.198"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
+
+  # host.ibmz1.address: "169.63.177.141"
+  # host.ibmz1.platform: "linux/s390x"
+  # host.ibmz1.user: "root"
+  # host.ibmz1.secret: "ibm-ssh-key"
+  # host.ibmz1.concurrency: "4"
+
+  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
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
<h3>4: Staging changes from 310c3cd7 to 4857a6d9 on Thu Jan 4 18:38:17 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..edd6042d 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..ab5ac9b6 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,15 +30,38 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.ppc1.address: "150.240.147.198"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "ibm-ssh-key"
-  host.ppc1.concurrency: "4"
-
-  host.ibmz1.address: "169.63.177.141"
-  host.ibmz1.platform: "linux/s390x"
-  host.ibmz1.user: "root"
-  host.ibmz1.secret: "ibm-ssh-key"
-
-  host.ibmz1.concurrency: "4"
+  # host.ppc1.address: "150.240.147.198"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
+
+  # host.ibmz1.address: "169.63.177.141"
+  # host.ibmz1.platform: "linux/s390x"
+  # host.ibmz1.user: "root"
+  # host.ibmz1.secret: "ibm-ssh-key"
+  # host.ibmz1.concurrency: "4"
+
+  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-310c3cd7/staging/components/multi-platform-controller/staging/kustomize.out.yaml
155,174c155,164
<   host.power-rhtap-prod-1.address: 52.117.38.109
<   host.power-rhtap-prod-1.concurrency: "4"
<   host.power-rhtap-prod-1.platform: linux/ppc64le
<   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-1.user: root
<   host.power-rhtap-prod-2.address: 52.117.38.109
<   host.power-rhtap-prod-2.concurrency: "4"
<   host.power-rhtap-prod-2.platform: linux/ppc64le
<   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-2.user: root
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
<   host.sysz-rhtap-prod-1.concurrency: "4"
<   host.sysz-rhtap-prod-1.platform: linux/s390x
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-1.user: root
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
<   host.sysz-rhtap-prod-2.concurrency: "4"
<   host.sysz-rhtap-prod-2.platform: linux/s390x
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-2.user: root
---
>   host.ibmz1.address: 169.63.177.141
>   host.ibmz1.concurrency: "4"
>   host.ibmz1.platform: linux/s390x
>   host.ibmz1.secret: ibm-ssh-key
>   host.ibmz1.user: root
>   host.ppc1.address: 150.240.147.198
>   host.ppc1.concurrency: "4"
>   host.ppc1.platform: linux/ppc64le
>   host.ppc1.secret: ibm-ssh-key
>   host.ppc1.user: root
339,384d328
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-ppc64le-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-ppc64le-ssh-key
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-s390x-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-s390x-ssh-key 
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
<h3>4: Development changes from 310c3cd7 to 4857a6d9 on Thu Jan 4 18:38:17 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..edd6042d 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..ab5ac9b6 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,15 +30,38 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.ppc1.address: "150.240.147.198"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "ibm-ssh-key"
-  host.ppc1.concurrency: "4"
-
-  host.ibmz1.address: "169.63.177.141"
-  host.ibmz1.platform: "linux/s390x"
-  host.ibmz1.user: "root"
-  host.ibmz1.secret: "ibm-ssh-key"
-
-  host.ibmz1.concurrency: "4"
+  # host.ppc1.address: "150.240.147.198"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
+
+  # host.ibmz1.address: "169.63.177.141"
+  # host.ibmz1.platform: "linux/s390x"
+  # host.ibmz1.user: "root"
+  # host.ibmz1.secret: "ibm-ssh-key"
+  # host.ibmz1.concurrency: "4"
+
+  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
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
