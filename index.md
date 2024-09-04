# kustomize changes tracked by commits 
### This file generated at Wed Sep  4 12:04:45 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5cc35bc4 to 0ef4c9bd on Wed Sep 4 11:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8f5e6d2b..a807873a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index d1947b8f..f21607b6 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
+    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 5cc35bc4 to 0ef4c9bd on Wed Sep 4 11:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8f5e6d2b..a807873a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index d1947b8f..f21607b6 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
+    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 5cc35bc4 to 0ef4c9bd on Wed Sep 4 11:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8f5e6d2b..a807873a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index d1947b8f..f21607b6 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
+    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (81 lines)</summary>  

``` 
./commit-5cc35bc4/development/components/release/development/kustomize.out.yaml
64,100d63
<               collectors:
<                 description: Collectors is a list of data collectors to be executed
<                   as part of the release process
<                 items:
<                   description: Collector represents a reference to a Collector to
<                     be executed as part of the release workflow.
<                   properties:
<                     name:
<                       description: Name of the collector
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                     params:
<                       description: Params is a slice of parameters for a given collector
<                       items:
<                         description: Param represents a parameter for a collector
<                         properties:
<                           name:
<                             description: Name is the name of the parameter
<                             type: string
<                           value:
<                             description: Value is the value of the parameter
<                             type: string
<                         required:
<                         - name
<                         - value
<                         type: object
<                       type: array
<                     type:
<                       description: Type is the type of collector to be used
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - name
<                   - params
<                   - type
<                   type: object
<                 type: array
337,373d299
<               collectors:
<                 description: Collectors is a list of data collectors to be executed
<                   as part of the release process
<                 items:
<                   description: Collector represents a reference to a Collector to
<                     be executed as part of the release workflow.
<                   properties:
<                     name:
<                       description: Name of the collector
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                     params:
<                       description: Params is a slice of parameters for a given collector
<                       items:
<                         description: Param represents a parameter for a collector
<                         properties:
<                           name:
<                             description: Name is the name of the parameter
<                             type: string
<                           value:
<                             description: Value is the value of the parameter
<                             type: string
<                         required:
<                         - name
<                         - value
<                         type: object
<                       type: array
<                     type:
<                       description: Type is the type of collector to be used
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - name
<                   - params
<                   - type
<                   type: object
<                 type: array
1935c1861
<         image: quay.io/konflux-ci/release-service:e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
---
>         image: quay.io/konflux-ci/release-service:64bd76e4fce9e30164e65f4385c1ae094417b91d 
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
<h3>2: Production changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
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
<h3>2: Staging changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
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
<h3>2: Development changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
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
<h3>3: Production changes from 2a3009df to e8ee1e0d on Tue Sep 3 20:08:46 2024 </h3>  
 
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
<h3>3: Staging changes from 2a3009df to e8ee1e0d on Tue Sep 3 20:08:46 2024 </h3>  
 
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
<h3>3: Development changes from 2a3009df to e8ee1e0d on Tue Sep 3 20:08:46 2024 </h3>  
 
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
<h3>4: Production changes from 862d42cf to 2a3009df on Tue Sep 3 17:28:44 2024 </h3>  
 
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
<h3>4: Staging changes from 862d42cf to 2a3009df on Tue Sep 3 17:28:44 2024 </h3>  
 
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
<h3>4: Development changes from 862d42cf to 2a3009df on Tue Sep 3 17:28:44 2024 </h3>  
 
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
