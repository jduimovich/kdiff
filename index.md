# kustomize changes tracked by commits 
### This file generated at Fri Jan 19 16:05:48 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1cf5bf20 to de52b8d2 on Fri Jan 19 15:28:22 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index a326c1dc..ee90f32b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 491bfd3c..2b4719d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d802f90c..a92e4ddc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-1cf5bf20/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1202c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
./commit-1cf5bf20/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1202c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2 
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
<h3>1: Staging changes from 1cf5bf20 to de52b8d2 on Fri Jan 19 15:28:22 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index a326c1dc..ee90f32b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 491bfd3c..2b4719d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d802f90c..a92e4ddc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 1cf5bf20 to de52b8d2 on Fri Jan 19 15:28:22 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index a326c1dc..ee90f32b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 491bfd3c..2b4719d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d802f90c..a92e4ddc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 99d5ea5f to 1cf5bf20 on Fri Jan 19 14:27:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f18d3bab..c8772385 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=99b3d180b4f70fecc99bcee284beffcbe0f92cb7
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 99d5ea5f to 1cf5bf20 on Fri Jan 19 14:27:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f18d3bab..c8772385 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=99b3d180b4f70fecc99bcee284beffcbe0f92cb7
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
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
<h3>2: Development changes from 99d5ea5f to 1cf5bf20 on Fri Jan 19 14:27:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f18d3bab..c8772385 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=99b3d180b4f70fecc99bcee284beffcbe0f92cb7
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
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
<h3>3: Production changes from b7cc9547 to 99d5ea5f on Fri Jan 19 13:13:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8185485e..374bb49e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template:
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index f7583390..8f6952fc 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/staging/manager_resources_patch.yaml
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template: 
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
<h3>3: Staging changes from b7cc9547 to 99d5ea5f on Fri Jan 19 13:13:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8185485e..374bb49e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template:
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index f7583390..8f6952fc 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/staging/manager_resources_patch.yaml
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-b7cc9547/staging/components/integration/staging/kustomize.out.yaml
1108c1108
<   name: integration-service-controller-manager
---
>   name: integration-service-integration-service-controller-manager
1129c1129
<         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
---
>         image: quay.io/redhat-appstudio/integration-service:cb0b172ed6bc1a9619440058eecc1b2f5feafafc 
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
<h3>3: Development changes from b7cc9547 to 99d5ea5f on Fri Jan 19 13:13:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8185485e..374bb49e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template:
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index f7583390..8f6952fc 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/staging/manager_resources_patch.yaml
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-b7cc9547/development/components/integration/development/kustomize.out.yaml
1108c1108
<   name: integration-service-controller-manager
---
>   name: integration-service-integration-service-controller-manager
1129c1129
<         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
---
>         image: quay.io/redhat-appstudio/integration-service:cb0b172ed6bc1a9619440058eecc1b2f5feafafc 
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
<h3>4: Production changes from 6e057428 to b7cc9547 on Fri Jan 19 12:13:09 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5d8e50e9..8185485e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -11,5 +11,5 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/k-components/manager-resources-patch/manager_resources_patch.yaml
rename to components/integration/development/manager_resources_patch.yaml
diff --git a/components/integration/k-components/manager-resources-patch/kustomization.yaml b/components/integration/k-components/manager-resources-patch/kustomization.yaml
deleted file mode 100644
index 918316c7..00000000
--- a/components/integration/k-components/manager-resources-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: manager_resources_patch.yaml
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index 1dddb145..2061dbc7 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -12,9 +12,6 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
-
 patches:
   - path: pipelines-as-code-secret.yaml
     target:
@@ -22,3 +19,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/production/manager_resources_patch.yaml b/components/integration/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..5d3aa167
--- /dev/null
+++ b/components/integration/production/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: integration-service-controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 5ae4929c..f7583390 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -12,5 +12,5 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
new file mode 100644
index 00000000..5d3aa167
--- /dev/null
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: integration-service-controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi 
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
<h3>4: Staging changes from 6e057428 to b7cc9547 on Fri Jan 19 12:13:09 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5d8e50e9..8185485e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -11,5 +11,5 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/k-components/manager-resources-patch/manager_resources_patch.yaml
rename to components/integration/development/manager_resources_patch.yaml
diff --git a/components/integration/k-components/manager-resources-patch/kustomization.yaml b/components/integration/k-components/manager-resources-patch/kustomization.yaml
deleted file mode 100644
index 918316c7..00000000
--- a/components/integration/k-components/manager-resources-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: manager_resources_patch.yaml
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index 1dddb145..2061dbc7 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -12,9 +12,6 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
-
 patches:
   - path: pipelines-as-code-secret.yaml
     target:
@@ -22,3 +19,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/production/manager_resources_patch.yaml b/components/integration/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..5d3aa167
--- /dev/null
+++ b/components/integration/production/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: integration-service-controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 5ae4929c..f7583390 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -12,5 +12,5 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
new file mode 100644
index 00000000..5d3aa167
--- /dev/null
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: integration-service-controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi 
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
<h3>4: Development changes from 6e057428 to b7cc9547 on Fri Jan 19 12:13:09 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5d8e50e9..8185485e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -11,5 +11,5 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/k-components/manager-resources-patch/manager_resources_patch.yaml
rename to components/integration/development/manager_resources_patch.yaml
diff --git a/components/integration/k-components/manager-resources-patch/kustomization.yaml b/components/integration/k-components/manager-resources-patch/kustomization.yaml
deleted file mode 100644
index 918316c7..00000000
--- a/components/integration/k-components/manager-resources-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: manager_resources_patch.yaml
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index 1dddb145..2061dbc7 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -12,9 +12,6 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
-
 patches:
   - path: pipelines-as-code-secret.yaml
     target:
@@ -22,3 +19,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/production/manager_resources_patch.yaml b/components/integration/production/manager_resources_patch.yaml
new file mode 100644
index 00000000..5d3aa167
--- /dev/null
+++ b/components/integration/production/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: integration-service-controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 5ae4929c..f7583390 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -12,5 +12,5 @@ images:
 
 namespace: integration-service
 
-components:
-  - ../k-components/manager-resources-patch
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
new file mode 100644
index 00000000..5d3aa167
--- /dev/null
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: integration-service-controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi 
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
