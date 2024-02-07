# kustomize changes tracked by commits 
### This file generated at Wed Feb  7 00:09:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4a630950 to a63912d0 on Tue Feb 6 21:27:34 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index f66a78a8..81b3c2d1 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=29e4eb7800118504f1f367cb151f3f08c720c066
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 29db6bc1..92680e59 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=29e4eb7800118504f1f367cb151f3f08c720c066
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: 29e4eb7800118504f1f367cb151f3f08c720c066
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 4a630950 to a63912d0 on Tue Feb 6 21:27:34 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index f66a78a8..81b3c2d1 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=29e4eb7800118504f1f367cb151f3f08c720c066
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 29db6bc1..92680e59 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=29e4eb7800118504f1f367cb151f3f08c720c066
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: 29e4eb7800118504f1f367cb151f3f08c720c066
 
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
<h3>1: Development changes from 4a630950 to a63912d0 on Tue Feb 6 21:27:34 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index f66a78a8..81b3c2d1 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=29e4eb7800118504f1f367cb151f3f08c720c066
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 29db6bc1..92680e59 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=29e4eb7800118504f1f367cb151f3f08c720c066
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: 29e4eb7800118504f1f367cb151f3f08c720c066
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4a630950/development/components/release/development/kustomize.out.yaml
1697c1697
<         image: quay.io/redhat-appstudio/release-service:29e4eb7800118504f1f367cb151f3f08c720c066
---
>         image: quay.io/redhat-appstudio/release-service:5bb55c88e868015d2b62412eef174bd6c842441c 
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
<h3>2: Production changes from 26237d09 to 4a630950 on Tue Feb 6 20:07:57 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 1de7a037..03b57a59 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -8,7 +8,6 @@ metadata:
 spec:
     host:
       tiers:
-        defaultTier: 'appstudio'
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true 
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
<h3>2: Staging changes from 26237d09 to 4a630950 on Tue Feb 6 20:07:57 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 1de7a037..03b57a59 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -8,7 +8,6 @@ metadata:
 spec:
     host:
       tiers:
-        defaultTier: 'appstudio'
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true 
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
<h3>2: Development changes from 26237d09 to 4a630950 on Tue Feb 6 20:07:57 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 1de7a037..03b57a59 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -8,7 +8,6 @@ metadata:
 spec:
     host:
       tiers:
-        defaultTier: 'appstudio'
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true 
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
<h3>3: Production changes from 9547d590 to 26237d09 on Tue Feb 6 20:07:50 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 90c058c7..43005227 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-9547d590/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6 
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
<h3>3: Staging changes from 9547d590 to 26237d09 on Tue Feb 6 20:07:50 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 90c058c7..43005227 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-9547d590/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6 
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
<h3>3: Development changes from 9547d590 to 26237d09 on Tue Feb 6 20:07:50 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 90c058c7..43005227 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-9547d590/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:db7d057a3a3cf1f9ea2d78c45baa553da6335eeb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7c31b2587ce0f0782bf8287b0dc62c3d967745b6 
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
<h3>4: Production changes from 13e48c64 to 9547d590 on Tue Feb 6 19:15:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 6a62a436..c855e485 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -24,18 +24,9 @@ metadata:
   name: has-admin
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
-  - kind: User
-    name: kim-tsao
-  - kind: User
-    name: maysunfaisal
-  - kind: User
-    name: yangcao77
-  - kind: User
-    name: thepetk
-  - kind: User
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index fca9525a..5840a468 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,27 +4,9 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: johnmcollier
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jduimovich
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: kim-tsao
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: yangcao77
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: maysunfaisal
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/staging/rbac/has-exec.yaml b/components/has/staging/rbac/has-exec.yaml
index 41f5039e..6d691941 100644
--- a/components/has/staging/rbac/has-exec.yaml
+++ b/components/has/staging/rbac/has-exec.yaml
@@ -17,8 +17,9 @@ metadata:
   name: has-exec
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
./commit-13e48c64/production/components/has/production/kustomize.out.yaml
548,549c548,567
<   kind: Group
<   name: konflux-has
---
>   kind: User
>   name: johnmcollier
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: kim-tsao
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: yangcao77
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: maysunfaisal
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: thepetk
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: michael-valdron
575,577c593,604
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier
> - kind: User
>   name: kim-tsao
> - kind: User
>   name: maysunfaisal
> - kind: User
>   name: yangcao77
> - kind: User
>   name: thepetk
> - kind: User
>   name: michael-valdron 
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
<h3>4: Staging changes from 13e48c64 to 9547d590 on Tue Feb 6 19:15:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 6a62a436..c855e485 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -24,18 +24,9 @@ metadata:
   name: has-admin
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
-  - kind: User
-    name: kim-tsao
-  - kind: User
-    name: maysunfaisal
-  - kind: User
-    name: yangcao77
-  - kind: User
-    name: thepetk
-  - kind: User
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index fca9525a..5840a468 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,27 +4,9 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: johnmcollier
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jduimovich
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: kim-tsao
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: yangcao77
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: maysunfaisal
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/staging/rbac/has-exec.yaml b/components/has/staging/rbac/has-exec.yaml
index 41f5039e..6d691941 100644
--- a/components/has/staging/rbac/has-exec.yaml
+++ b/components/has/staging/rbac/has-exec.yaml
@@ -17,8 +17,9 @@ metadata:
   name: has-exec
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (49 lines)</summary>  

``` 
./commit-13e48c64/staging/components/has/staging/kustomize.out.yaml
561,562c561,580
<   kind: Group
<   name: konflux-has
---
>   kind: User
>   name: johnmcollier
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: kim-tsao
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: yangcao77
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: maysunfaisal
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: thepetk
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: michael-valdron
588,590c606,617
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier
> - kind: User
>   name: kim-tsao
> - kind: User
>   name: maysunfaisal
> - kind: User
>   name: yangcao77
> - kind: User
>   name: thepetk
> - kind: User
>   name: michael-valdron
602,604c629,630
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier 
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
<h3>4: Development changes from 13e48c64 to 9547d590 on Tue Feb 6 19:15:44 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 6a62a436..c855e485 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -24,18 +24,9 @@ metadata:
   name: has-admin
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
-  - kind: User
-    name: kim-tsao
-  - kind: User
-    name: maysunfaisal
-  - kind: User
-    name: yangcao77
-  - kind: User
-    name: thepetk
-  - kind: User
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index fca9525a..5840a468 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,27 +4,9 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: johnmcollier
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jduimovich
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: kim-tsao
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: yangcao77
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: maysunfaisal
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: michael-valdron
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/staging/rbac/has-exec.yaml b/components/has/staging/rbac/has-exec.yaml
index 41f5039e..6d691941 100644
--- a/components/has/staging/rbac/has-exec.yaml
+++ b/components/has/staging/rbac/has-exec.yaml
@@ -17,8 +17,9 @@ metadata:
   name: has-exec
   namespace: application-service
 subjects:
-  - kind: User
-    name: johnmcollier
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-has
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
./commit-13e48c64/development/components/has/development/kustomize.out.yaml
542,543c542,561
<   kind: Group
<   name: konflux-has
---
>   kind: User
>   name: johnmcollier
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: kim-tsao
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: yangcao77
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: maysunfaisal
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: thepetk
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: michael-valdron
569,571c587,598
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
---
> - kind: User
>   name: johnmcollier
> - kind: User
>   name: kim-tsao
> - kind: User
>   name: maysunfaisal
> - kind: User
>   name: yangcao77
> - kind: User
>   name: thepetk
> - kind: User
>   name: michael-valdron 
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
