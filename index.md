# kustomize changes tracked by commits 
### This file generated at Mon Dec  2 20:05:08 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 04cc7d96 to 83e6c191 on Mon Dec 2 18:05:49 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ef20f630..d7d0d246 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-04cc7d96/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
./commit-04cc7d96/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 04cc7d96 to 83e6c191 on Mon Dec 2 18:05:49 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ef20f630..d7d0d246 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-04cc7d96/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73 
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
<h3>1: Development changes from 04cc7d96 to 83e6c191 on Mon Dec 2 18:05:49 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ef20f630..d7d0d246 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-04cc7d96/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b2d4ae5e14e80d01166b482219b15982f7f3c2ad
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 0c1c6e1c to 04cc7d96 on Mon Dec 2 17:39:41 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 75829e32..0349a5d2 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1875,7 +1875,7 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
+            key: konflux-ci.dev/workload
             operator: Exists
         securityContext:
           allowPrivilegeEscalation: false
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 0356c007..b4059b09 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1827,8 +1827,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index cdd39ba0..f54e2472 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1816,8 +1816,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 98fb0e01..6dbbd6c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1816,8 +1816,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 0c1c6e1c to 04cc7d96 on Mon Dec 2 17:39:41 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 75829e32..0349a5d2 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1875,7 +1875,7 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
+            key: konflux-ci.dev/workload
             operator: Exists
         securityContext:
           allowPrivilegeEscalation: false
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 0356c007..b4059b09 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1827,8 +1827,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index cdd39ba0..f54e2472 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1816,8 +1816,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 98fb0e01..6dbbd6c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1816,8 +1816,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-0c1c6e1c/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1815,1817c1815,1816
<             key: konflux-ci.dev/workload
<             operator: Equal
<             value: konflux-tenants
---
>             key: node-role.kubernetes.io/master
>             operator: Exists
./commit-0c1c6e1c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1815,1817c1815,1816
<             key: konflux-ci.dev/workload
<             operator: Equal
<             value: konflux-tenants
---
>             key: node-role.kubernetes.io/master
>             operator: Exists 
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
<h3>2: Development changes from 0c1c6e1c to 04cc7d96 on Mon Dec 2 17:39:41 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 75829e32..0349a5d2 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1875,7 +1875,7 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
+            key: konflux-ci.dev/workload
             operator: Exists
         securityContext:
           allowPrivilegeEscalation: false
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 0356c007..b4059b09 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1827,8 +1827,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index cdd39ba0..f54e2472 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1816,8 +1816,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 98fb0e01..6dbbd6c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1816,8 +1816,9 @@ spec:
                 key: endpoint
         tolerations:
           - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
+            key: konflux-ci.dev/workload
+            operator: Equal
+            value: konflux-tenants
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0c1c6e1c/development/components/pipeline-service/development/kustomize.out.yaml
1743c1743
<             key: konflux-ci.dev/workload
---
>             key: node-role.kubernetes.io/master 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 08836b9e to 0c1c6e1c on Mon Dec 2 16:51:53 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index bbd7641e..63d2139e 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=dc703eea96e6409ae545c54e58ff2bf3d745011e
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=3dc287ac1766892ec5392cfcb183abdb23eeb08b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 08836b9e to 0c1c6e1c on Mon Dec 2 16:51:53 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index bbd7641e..63d2139e 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=dc703eea96e6409ae545c54e58ff2bf3d745011e
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=3dc287ac1766892ec5392cfcb183abdb23eeb08b 
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
<h3>3: Development changes from 08836b9e to 0c1c6e1c on Mon Dec 2 16:51:53 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index bbd7641e..63d2139e 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=dc703eea96e6409ae545c54e58ff2bf3d745011e
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=3dc287ac1766892ec5392cfcb183abdb23eeb08b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 35f903fe to 08836b9e on Mon Dec 2 15:48:39 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/base/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 1a0740d5..fc22a80d 100644
--- a/components/multi-platform-controller/production-downstream/base/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - external-secrets.yaml
 
 components:
@@ -15,7 +15,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index f9320e90..ccc55028 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -7,8 +7,8 @@ resources:
 - ../base/common
 - host-config.yaml
 - external-secrets.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 
 components:
   - ../k-components/manager-resources
@@ -16,7 +16,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-35f903fe/production/components/multi-platform-controller/production/kustomize.out.yaml
818c818
<         image: quay.io/konflux-ci/multi-platform-controller:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
---
>         image: quay.io/konflux-ci/multi-platform-controller:6f8abf513a9da030c16286ef9fffa4084db33cca
902c902
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:6f8abf513a9da030c16286ef9fffa4084db33cca 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 35f903fe to 08836b9e on Mon Dec 2 15:48:39 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/base/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 1a0740d5..fc22a80d 100644
--- a/components/multi-platform-controller/production-downstream/base/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - external-secrets.yaml
 
 components:
@@ -15,7 +15,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index f9320e90..ccc55028 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -7,8 +7,8 @@ resources:
 - ../base/common
 - host-config.yaml
 - external-secrets.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 
 components:
   - ../k-components/manager-resources
@@ -16,7 +16,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
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
<h3>4: Development changes from 35f903fe to 08836b9e on Mon Dec 2 15:48:39 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/base/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 1a0740d5..fc22a80d 100644
--- a/components/multi-platform-controller/production-downstream/base/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - external-secrets.yaml
 
 components:
@@ -15,7 +15,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index f9320e90..ccc55028 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -7,8 +7,8 @@ resources:
 - ../base/common
 - host-config.yaml
 - external-secrets.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 
 components:
   - ../k-components/manager-resources
@@ -16,7 +16,7 @@ components:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
+  newTag: 143b83fa5a2b2fe6a8abe02cc669c05b5c3f4f15 
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
```
 
</details> 
<br> 


</div>
