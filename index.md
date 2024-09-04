# kustomize changes tracked by commits 
### This file generated at Wed Sep  4 08:04:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 905be112..9738f3b2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04894186..e0089d72 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config 
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
<h3>1: Staging changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 905be112..9738f3b2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04894186..e0089d72 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e8ee1e0d/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>         image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>             image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d 
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
<h3>1: Development changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 905be112..9738f3b2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04894186..e0089d72 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e8ee1e0d/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>         image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>             image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d 
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
<h3>2: Production changes from 2a3009df to e8ee1e0d on Tue Sep 3 20:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 819954c7..1f18913f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-2a3009df/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
./commit-2a3009df/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
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
<h3>2: Staging changes from 2a3009df to e8ee1e0d on Tue Sep 3 20:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 819954c7..1f18913f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2a3009df/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
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
<h3>2: Development changes from 2a3009df to e8ee1e0d on Tue Sep 3 20:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 819954c7..1f18913f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2a3009df/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:bc757a094012c94a2074674dbae66a407b7d725d
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
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
<h3>3: Production changes from 862d42cf to 2a3009df on Tue Sep 3 17:28:44 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 3c90cdd6..6bb51b1e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 295e1467..3c6db2b4 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
+      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-862d42cf/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
388c388
<   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
---
>   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159 
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
<h3>3: Staging changes from 862d42cf to 2a3009df on Tue Sep 3 17:28:44 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 3c90cdd6..6bb51b1e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 295e1467..3c6db2b4 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
+      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-862d42cf/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
388c388
<   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
---
>   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159 
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
<h3>3: Development changes from 862d42cf to 2a3009df on Tue Sep 3 17:28:44 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 3c90cdd6..6bb51b1e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 295e1467..3c6db2b4 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
+      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-862d42cf/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
388c388
<   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
---
>   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159 
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
<h3>4: Production changes from c72334c4 to 862d42cf on Tue Sep 3 16:03:10 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 3b8c9d36..98e2e4a0 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index e8b66851..c99a3ebc 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index e8b66851..c99a3ebc 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index cdfdea48..bc97a099 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-c72334c4/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
452c452
<       - image: quay.io/cloudservices/hac-dev-frontend:f97289a
---
>       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021
./commit-c72334c4/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
452c452
<       - image: quay.io/cloudservices/hac-dev-frontend:f97289a
---
>       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021 
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
<h3>4: Staging changes from c72334c4 to 862d42cf on Tue Sep 3 16:03:10 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 3b8c9d36..98e2e4a0 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index e8b66851..c99a3ebc 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index e8b66851..c99a3ebc 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index cdfdea48..bc97a099 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c72334c4/staging/components/ui/staging/kustomize.out.yaml
452c452
<       - image: quay.io/cloudservices/hac-dev-frontend:f97289a
---
>       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021 
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
<h3>4: Development changes from c72334c4 to 862d42cf on Tue Sep 3 16:03:10 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 3b8c9d36..98e2e4a0 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index e8b66851..c99a3ebc 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index e8b66851..c99a3ebc 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index cdfdea48..bc97a099 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 0d8b021
+    newTag: f97289a
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c72334c4/development/components/ui/development/kustomize.out.yaml
452c452
<       - image: quay.io/cloudservices/hac-dev-frontend:f97289a
---
>       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021 
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
