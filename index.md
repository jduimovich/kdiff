# kustomize changes tracked by commits 
### This file generated at Wed Feb 21 04:02:08 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4fcb3cb4 to 3040799b on Tue Feb 20 21:09:48 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3fa0f1c4..58d7124c 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index eea4e774..0238fe14 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4e71d8a4..32c9495c 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 736b698c..19c9d4f5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 08040e60..84d762a6 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 8ca07b0a..0a796d97 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 4fcb3cb4 to 3040799b on Tue Feb 20 21:09:48 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3fa0f1c4..58d7124c 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index eea4e774..0238fe14 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4e71d8a4..32c9495c 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 736b698c..19c9d4f5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 08040e60..84d762a6 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 8ca07b0a..0a796d97 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-4fcb3cb4/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1918c1918
<     enable-api-fields: alpha
---
>     enable-api-fields: beta
./commit-4fcb3cb4/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1918c1918
<     enable-api-fields: alpha
---
>     enable-api-fields: beta
./commit-4fcb3cb4/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1918c1918
<     enable-api-fields: alpha
---
>     enable-api-fields: beta 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 4fcb3cb4 to 3040799b on Tue Feb 20 21:09:48 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3fa0f1c4..58d7124c 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index eea4e774..0238fe14 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4e71d8a4..32c9495c 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=73e3cce580020a9efed55dc2a4f740b26f65bbf7
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 736b698c..19c9d4f5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 08040e60..84d762a6 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 8ca07b0a..0a796d97 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1915,7 +1915,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4fcb3cb4/development/components/pipeline-service/development/kustomize.out.yaml
2030c2030
<     enable-api-fields: alpha
---
>     enable-api-fields: beta 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from cdbc78c1 to 4fcb3cb4 on Tue Feb 20 20:14:04 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 813d0b8c..74d6e431 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
+  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index afb8ce2d..51c84570 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
+  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 namespace: integration-service
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from cdbc78c1 to 4fcb3cb4 on Tue Feb 20 20:14:04 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 813d0b8c..74d6e431 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
+  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index afb8ce2d..51c84570 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
+  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-cdbc78c1/staging/components/integration/staging/kustomize.out.yaml
1175c1175
<         image: quay.io/redhat-appstudio/integration-service:4991b9f708950233ca29f03bcadb715a8ddaecc2
---
>         image: quay.io/redhat-appstudio/integration-service:60be0fd0b8a656cf924431ba30bccdc85ad297b9
1257c1257
<             image: quay.io/redhat-appstudio/integration-service:4991b9f708950233ca29f03bcadb715a8ddaecc2
---
>             image: quay.io/redhat-appstudio/integration-service:60be0fd0b8a656cf924431ba30bccdc85ad297b9 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from cdbc78c1 to 4fcb3cb4 on Tue Feb 20 20:14:04 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 813d0b8c..74d6e431 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
+  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index afb8ce2d..51c84570 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
+  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-cdbc78c1/development/components/integration/development/kustomize.out.yaml
1175c1175
<         image: quay.io/redhat-appstudio/integration-service:4991b9f708950233ca29f03bcadb715a8ddaecc2
---
>         image: quay.io/redhat-appstudio/integration-service:60be0fd0b8a656cf924431ba30bccdc85ad297b9
1260c1260
<             image: quay.io/redhat-appstudio/integration-service:4991b9f708950233ca29f03bcadb715a8ddaecc2
---
>             image: quay.io/redhat-appstudio/integration-service:60be0fd0b8a656cf924431ba30bccdc85ad297b9 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 40829c4e to cdbc78c1 on Tue Feb 20 19:10:49 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 752535da..53c7e512 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
+- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 0ba033ed..45b9f228 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 7494ce80..db18d93d 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 8915784f..529036d7 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/hack/preview.sh b/hack/preview.sh
index 26a07131..5631fc0c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -202,7 +202,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 40829c4e to cdbc78c1 on Tue Feb 20 19:10:49 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 752535da..53c7e512 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
+- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 0ba033ed..45b9f228 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 7494ce80..db18d93d 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 8915784f..529036d7 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/hack/preview.sh b/hack/preview.sh
index 26a07131..5631fc0c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -202,7 +202,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 40829c4e to cdbc78c1 on Tue Feb 20 19:10:49 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 752535da..53c7e512 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
+- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 0ba033ed..45b9f228 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 7494ce80..db18d93d 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 8915784f..529036d7 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/hack/preview.sh b/hack/preview.sh
index 26a07131..5631fc0c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -202,7 +202,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from d1d51ce7 to 40829c4e on Tue Feb 20 17:48:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 83a000da..813d0b8c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,3 +14,7 @@ namespace: integration-service
 
 patches:
   - path: manager_resources_patch.yaml
+  - path: snapshotgc_inputs_patch.yaml
+    target:
+      kind: CronJob
+      name: snapshot-garbage-collector
diff --git a/components/integration/development/snapshotgc_inputs_patch.yaml b/components/integration/development/snapshotgc_inputs_patch.yaml
new file mode 100644
index 00000000..234e7d13
--- /dev/null
+++ b/components/integration/development/snapshotgc_inputs_patch.yaml
@@ -0,0 +1,5 @@
+- op: add
+  path: /spec/jobTemplate/spec/template/spec/containers/0/env
+  value:
+    - name: PR_SNAPSHOTS_TO_KEEP
+      value: "10" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from d1d51ce7 to 40829c4e on Tue Feb 20 17:48:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 83a000da..813d0b8c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,3 +14,7 @@ namespace: integration-service
 
 patches:
   - path: manager_resources_patch.yaml
+  - path: snapshotgc_inputs_patch.yaml
+    target:
+      kind: CronJob
+      name: snapshot-garbage-collector
diff --git a/components/integration/development/snapshotgc_inputs_patch.yaml b/components/integration/development/snapshotgc_inputs_patch.yaml
new file mode 100644
index 00000000..234e7d13
--- /dev/null
+++ b/components/integration/development/snapshotgc_inputs_patch.yaml
@@ -0,0 +1,5 @@
+- op: add
+  path: /spec/jobTemplate/spec/template/spec/containers/0/env
+  value:
+    - name: PR_SNAPSHOTS_TO_KEEP
+      value: "10" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from d1d51ce7 to 40829c4e on Tue Feb 20 17:48:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 83a000da..813d0b8c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,3 +14,7 @@ namespace: integration-service
 
 patches:
   - path: manager_resources_patch.yaml
+  - path: snapshotgc_inputs_patch.yaml
+    target:
+      kind: CronJob
+      name: snapshot-garbage-collector
diff --git a/components/integration/development/snapshotgc_inputs_patch.yaml b/components/integration/development/snapshotgc_inputs_patch.yaml
new file mode 100644
index 00000000..234e7d13
--- /dev/null
+++ b/components/integration/development/snapshotgc_inputs_patch.yaml
@@ -0,0 +1,5 @@
+- op: add
+  path: /spec/jobTemplate/spec/template/spec/containers/0/env
+  value:
+    - name: PR_SNAPSHOTS_TO_KEEP
+      value: "10" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d1d51ce7/development/components/integration/development/kustomize.out.yaml
1257,1259d1256
<             env:
<             - name: PR_SNAPSHOTS_TO_KEEP
<               value: "10" 
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
```
 
</details> 
<br> 


</div>
