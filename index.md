# kustomize changes tracked by commits 
### This file generated at Tue Jan  2 20:03:28 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 55b075d5 to 93e323eb on Tue Jan 2 16:56:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index da2c9211..3f9bf44b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=95e19e23e0cc82add555414245f1895a80b798c1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index fc8de995..212e0b40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=95e19e23e0cc82add555414245f1895a80b798c1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 95e19e23e0cc82add555414245f1895a80b798c1
+    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
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

./commit-93e323eb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-93e323eb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 55b075d5 to 93e323eb on Tue Jan 2 16:56:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index da2c9211..3f9bf44b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=95e19e23e0cc82add555414245f1895a80b798c1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index fc8de995..212e0b40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=95e19e23e0cc82add555414245f1895a80b798c1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 95e19e23e0cc82add555414245f1895a80b798c1
+    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 55b075d5 to 93e323eb on Tue Jan 2 16:56:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index da2c9211..3f9bf44b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=95e19e23e0cc82add555414245f1895a80b798c1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index fc8de995..212e0b40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=95e19e23e0cc82add555414245f1895a80b798c1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 95e19e23e0cc82add555414245f1895a80b798c1
+    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-55b075d5/development/components/release/development/kustomize.out.yaml
1677c1677
<         image: quay.io/redhat-appstudio/release-service:41348779fa69738f8cf36ef7a5eaa7597dcff9e1
---
>         image: quay.io/redhat-appstudio/release-service:95e19e23e0cc82add555414245f1895a80b798c1 
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
<h3>2: Production changes from 3252d30e to 55b075d5 on Tue Jan 2 15:11:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 67e8ff2a..3a17cfac 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5042d775..b458b2ea 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f732ac4a..b5232641 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 84d084c4..c341b318 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index b741a57f..0b8fb185 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6fb93099..e28df73d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics 
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

./commit-55b075d5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-55b075d5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 3252d30e to 55b075d5 on Tue Jan 2 15:11:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 67e8ff2a..3a17cfac 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5042d775..b458b2ea 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f732ac4a..b5232641 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 84d084c4..c341b318 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index b741a57f..0b8fb185 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6fb93099..e28df73d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-3252d30e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1113,1114d1112
<     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
<       exposes metric for an OSP deployment
./commit-3252d30e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1113,1114d1112
<     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
<       exposes metric for an OSP deployment
./commit-3252d30e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 3252d30e to 55b075d5 on Tue Jan 2 15:11:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 67e8ff2a..3a17cfac 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5042d775..b458b2ea 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f732ac4a..b5232641 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=ec0605c0a954f74cbb479cdb8d82bc8f90752b26
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 84d084c4..c341b318 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index b741a57f..0b8fb185 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6fb93099..e28df73d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1110,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-3252d30e/development/components/pipeline-service/development/kustomize.out.yaml
1114,1115d1113
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from a601cbe7 to 3252d30e on Mon Jan 1 13:23:29 2024 </h3>  
 
<details> 
<summary>Git Diff (131 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index f3705244..b4503aa0 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -7,13 +7,6 @@ metadata:
   name: instance
 spec:
   outputs:
-    - cloudwatch:
-        groupBy: namespaceName
-        region: us-east-1
-      name: remote-cloudwatch
-      secret:
-        name: cloudwatch-forwarder
-      type: cloudwatch
     - name: splunk-receiver-application
       secret:
         name: log-forwarder-splunk-rhtap-application-secret
@@ -25,12 +18,6 @@ spec:
       type: splunk
       url: https://http-inputs-rhcorporate.splunkcloud.com
   pipelines:
-    - inputRefs:
-        - application
-      name: fluentd-cloudwatch-logforward
-      outputRefs:
-        - remote-cloudwatch
-      parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-app-index
       inputRefs:
         - application
@@ -38,7 +25,7 @@ spec:
         - splunk-receiver-application
       parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-audit-index
-      inputRefs:      
+      inputRefs:
         - infrastructure
         - audit
       outputRefs:
diff --git a/components/monitoring/logging/base/external-secrets/kustomization.yaml b/components/monitoring/logging/base/external-secrets/kustomization.yaml
index 2c74e47d..5b894fef 100644
--- a/components/monitoring/logging/base/external-secrets/kustomization.yaml
+++ b/components/monitoring/logging/base/external-secrets/kustomization.yaml
@@ -1,6 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- monitoring-logging-cloudwatch-forwarder.yaml
 - splunk-log-forwarder-external-secrets.yaml
 namespace: openshift-logging
diff --git a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml b/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
deleted file mode 100644
index 78f513c1..00000000
--- a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: monitoring-logging-cloudwatch-forwarder
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-  - extract:
-      key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: cloudwatch-forwarder
\ No newline at end of file
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/kustomization.yaml
index dc846a65..3eee4ac5 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a7526b42..00000000
--- a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/monitoring/logging/fluentd/cloudwatch-forwarder
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/kustomization.yaml
index f0114934..2d89aa0c 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a285a6f3..00000000
--- a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/monitoring/logging/fluentd/cloudwatch-forwarder 
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

./commit-3252d30e/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3252d30e/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from a601cbe7 to 3252d30e on Mon Jan 1 13:23:29 2024 </h3>  
 
<details> 
<summary>Git Diff (131 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index f3705244..b4503aa0 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -7,13 +7,6 @@ metadata:
   name: instance
 spec:
   outputs:
-    - cloudwatch:
-        groupBy: namespaceName
-        region: us-east-1
-      name: remote-cloudwatch
-      secret:
-        name: cloudwatch-forwarder
-      type: cloudwatch
     - name: splunk-receiver-application
       secret:
         name: log-forwarder-splunk-rhtap-application-secret
@@ -25,12 +18,6 @@ spec:
       type: splunk
       url: https://http-inputs-rhcorporate.splunkcloud.com
   pipelines:
-    - inputRefs:
-        - application
-      name: fluentd-cloudwatch-logforward
-      outputRefs:
-        - remote-cloudwatch
-      parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-app-index
       inputRefs:
         - application
@@ -38,7 +25,7 @@ spec:
         - splunk-receiver-application
       parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-audit-index
-      inputRefs:      
+      inputRefs:
         - infrastructure
         - audit
       outputRefs:
diff --git a/components/monitoring/logging/base/external-secrets/kustomization.yaml b/components/monitoring/logging/base/external-secrets/kustomization.yaml
index 2c74e47d..5b894fef 100644
--- a/components/monitoring/logging/base/external-secrets/kustomization.yaml
+++ b/components/monitoring/logging/base/external-secrets/kustomization.yaml
@@ -1,6 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- monitoring-logging-cloudwatch-forwarder.yaml
 - splunk-log-forwarder-external-secrets.yaml
 namespace: openshift-logging
diff --git a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml b/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
deleted file mode 100644
index 78f513c1..00000000
--- a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: monitoring-logging-cloudwatch-forwarder
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-  - extract:
-      key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: cloudwatch-forwarder
\ No newline at end of file
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/kustomization.yaml
index dc846a65..3eee4ac5 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a7526b42..00000000
--- a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/monitoring/logging/fluentd/cloudwatch-forwarder
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/kustomization.yaml
index f0114934..2d89aa0c 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a285a6f3..00000000
--- a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/monitoring/logging/fluentd/cloudwatch-forwarder 
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

./commit-3252d30e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3252d30e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3252d30e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from a601cbe7 to 3252d30e on Mon Jan 1 13:23:29 2024 </h3>  
 
<details> 
<summary>Git Diff (131 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index f3705244..b4503aa0 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -7,13 +7,6 @@ metadata:
   name: instance
 spec:
   outputs:
-    - cloudwatch:
-        groupBy: namespaceName
-        region: us-east-1
-      name: remote-cloudwatch
-      secret:
-        name: cloudwatch-forwarder
-      type: cloudwatch
     - name: splunk-receiver-application
       secret:
         name: log-forwarder-splunk-rhtap-application-secret
@@ -25,12 +18,6 @@ spec:
       type: splunk
       url: https://http-inputs-rhcorporate.splunkcloud.com
   pipelines:
-    - inputRefs:
-        - application
-      name: fluentd-cloudwatch-logforward
-      outputRefs:
-        - remote-cloudwatch
-      parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-app-index
       inputRefs:
         - application
@@ -38,7 +25,7 @@ spec:
         - splunk-receiver-application
       parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-audit-index
-      inputRefs:      
+      inputRefs:
         - infrastructure
         - audit
       outputRefs:
diff --git a/components/monitoring/logging/base/external-secrets/kustomization.yaml b/components/monitoring/logging/base/external-secrets/kustomization.yaml
index 2c74e47d..5b894fef 100644
--- a/components/monitoring/logging/base/external-secrets/kustomization.yaml
+++ b/components/monitoring/logging/base/external-secrets/kustomization.yaml
@@ -1,6 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- monitoring-logging-cloudwatch-forwarder.yaml
 - splunk-log-forwarder-external-secrets.yaml
 namespace: openshift-logging
diff --git a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml b/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
deleted file mode 100644
index 78f513c1..00000000
--- a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: monitoring-logging-cloudwatch-forwarder
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-  - extract:
-      key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: cloudwatch-forwarder
\ No newline at end of file
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/kustomization.yaml
index dc846a65..3eee4ac5 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a7526b42..00000000
--- a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/monitoring/logging/fluentd/cloudwatch-forwarder
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/kustomization.yaml
index f0114934..2d89aa0c 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a285a6f3..00000000
--- a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/monitoring/logging/fluentd/cloudwatch-forwarder 
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

./commit-3252d30e/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from dacd149d to a601cbe7 on Sun Dec 31 12:57:34 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index c0d156b0..bbe40298 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -88,6 +88,8 @@ spec:
             mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -105,6 +107,8 @@ spec:
           emptyDir: {}
         - name: nginx-tmp
           emptyDir: {}
+        - name: run
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-a601cbe7/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a601cbe7/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from dacd149d to a601cbe7 on Sun Dec 31 12:57:34 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index c0d156b0..bbe40298 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -88,6 +88,8 @@ spec:
             mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -105,6 +107,8 @@ spec:
           emptyDir: {}
         - name: nginx-tmp
           emptyDir: {}
+        - name: run
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-dacd149d/staging/components/ui/staging/kustomize.out.yaml
577,578d576
<         - mountPath: /run
<           name: run
621,622d618
<       - emptyDir: {}
<         name: run 
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

./commit-a601cbe7/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a601cbe7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a601cbe7/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from dacd149d to a601cbe7 on Sun Dec 31 12:57:34 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index c0d156b0..bbe40298 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -88,6 +88,8 @@ spec:
             mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -105,6 +107,8 @@ spec:
           emptyDir: {}
         - name: nginx-tmp
           emptyDir: {}
+        - name: run
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-a601cbe7/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
