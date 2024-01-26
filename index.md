# kustomize changes tracked by commits 
### This file generated at Fri Jan 26 04:03:39 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f77b87c6 to 69824e8d on Fri Jan 26 00:44:15 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index db9bb56f..58b7f08f 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index e054b291..41a21540 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c041423e..6c6b8a1e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a25eba6d..2a9d1723 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2cd4a696..7158552c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4fd7a7a3..b78f3791 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>1: Staging changes from f77b87c6 to 69824e8d on Fri Jan 26 00:44:15 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index db9bb56f..58b7f08f 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index e054b291..41a21540 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c041423e..6c6b8a1e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a25eba6d..2a9d1723 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2cd4a696..7158552c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4fd7a7a3..b78f3791 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-f77b87c6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1203c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
./commit-f77b87c6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1203c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
./commit-f77b87c6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1203c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b 
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
<h3>1: Development changes from f77b87c6 to 69824e8d on Fri Jan 26 00:44:15 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index db9bb56f..58b7f08f 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index e054b291..41a21540 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c041423e..6c6b8a1e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a25eba6d..2a9d1723 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2cd4a696..7158552c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4fd7a7a3..b78f3791 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f77b87c6/development/components/pipeline-service/development/kustomize.out.yaml
1204c1204
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from dc3674cc to f77b87c6 on Thu Jan 25 19:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index b207bf90..66342ea7 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: Red Hat Trusted App Pipeline
-    custom-console-name: Red Hat Trusted App Pipeline
+    application-name: Red Hat Konflux
+    custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline 
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
<h3>2: Staging changes from dc3674cc to f77b87c6 on Thu Jan 25 19:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index b207bf90..66342ea7 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: Red Hat Trusted App Pipeline
-    custom-console-name: Red Hat Trusted App Pipeline
+    application-name: Red Hat Konflux
+    custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline 
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
<h3>2: Development changes from dc3674cc to f77b87c6 on Thu Jan 25 19:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index b207bf90..66342ea7 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: Red Hat Trusted App Pipeline
-    custom-console-name: Red Hat Trusted App Pipeline
+    application-name: Red Hat Konflux
+    custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from ad431b0a to dc3674cc on Thu Jan 25 19:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f069fe47..d1d14177 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46945111..462c615e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
+      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-ad431b0a/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
378c378
<   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
---
>   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2 
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
<h3>3: Staging changes from ad431b0a to dc3674cc on Thu Jan 25 19:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f069fe47..d1d14177 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46945111..462c615e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
+      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-ad431b0a/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
378c378
<   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
---
>   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2 
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
<h3>3: Development changes from ad431b0a to dc3674cc on Thu Jan 25 19:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f069fe47..d1d14177 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46945111..462c615e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
+      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-ad431b0a/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
378c378
<   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
---
>   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 334c72ea to ad431b0a on Thu Jan 25 18:17:12 2024 </h3>  
 
<details> 
<summary>Git Diff (4 lines)</summary>  

``` 
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml.disabled
similarity index 100%
rename from .tekton/rhtap-staging-e2e-ci.yaml
rename to .tekton/rhtap-staging-e2e-ci.yaml.disabled 
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
<h3>4: Staging changes from 334c72ea to ad431b0a on Thu Jan 25 18:17:12 2024 </h3>  
 
<details> 
<summary>Git Diff (4 lines)</summary>  

``` 
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml.disabled
similarity index 100%
rename from .tekton/rhtap-staging-e2e-ci.yaml
rename to .tekton/rhtap-staging-e2e-ci.yaml.disabled 
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
<h3>4: Development changes from 334c72ea to ad431b0a on Thu Jan 25 18:17:12 2024 </h3>  
 
<details> 
<summary>Git Diff (4 lines)</summary>  

``` 
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml.disabled
similarity index 100%
rename from .tekton/rhtap-staging-e2e-ci.yaml
rename to .tekton/rhtap-staging-e2e-ci.yaml.disabled 
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
```
 
</details> 
<br> 


</div>
