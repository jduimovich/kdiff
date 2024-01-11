# kustomize changes tracked by commits 
### This file generated at Thu Jan 11 12:08:32 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2badf5e8 to e4b40876 on Thu Jan 11 11:12:22 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a4c51bcc..91b827ad 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
+  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index c747c0f7..1bc970e2 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
+  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
 
 namespace: image-controller
  
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
<h3>1: Staging changes from 2badf5e8 to e4b40876 on Thu Jan 11 11:12:22 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a4c51bcc..91b827ad 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
+  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index c747c0f7..1bc970e2 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
+  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2badf5e8/staging/components/image-controller/staging/kustomize.out.yaml
611c611
<         image: quay.io/redhat-appstudio/image-controller:73747651941a35a4f4e1047688f0ca3487893eee
---
>         image: quay.io/redhat-appstudio/image-controller:8208ff372b880773b911062dc828f050e45c5312 
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
<h3>1: Development changes from 2badf5e8 to e4b40876 on Thu Jan 11 11:12:22 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index a4c51bcc..91b827ad 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
+  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index c747c0f7..1bc970e2 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8208ff372b880773b911062dc828f050e45c5312
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8208ff372b880773b911062dc828f050e45c5312
+  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2badf5e8/development/components/image-controller/development/kustomize.out.yaml
612c612
<         image: quay.io/redhat-appstudio/image-controller:73747651941a35a4f4e1047688f0ca3487893eee
---
>         image: quay.io/redhat-appstudio/image-controller:8208ff372b880773b911062dc828f050e45c5312 
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
<h3>2: Production changes from dd48d04f to 2badf5e8 on Thu Jan 11 10:23:03 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 4c50151d..3457d6b8 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 80f0dab4..275165a4 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index a92a7e17..3ff30e95 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index eda70283..4e3475e7 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
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
<h3>2: Staging changes from dd48d04f to 2badf5e8 on Thu Jan 11 10:23:03 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 4c50151d..3457d6b8 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 80f0dab4..275165a4 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index a92a7e17..3ff30e95 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index eda70283..4e3475e7 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
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
<h3>2: Development changes from dd48d04f to 2badf5e8 on Thu Jan 11 10:23:03 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 4c50151d..3457d6b8 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 80f0dab4..275165a4 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index a92a7e17..3ff30e95 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index eda70283..4e3475e7 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a4e0148a4fb906410a2b8631b23f4be5e92c2a72
+    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
 
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
<h3>3: Production changes from 29ac7aa7 to dd48d04f on Thu Jan 11 10:22:56 2024 </h3>  
 
<details> 
<summary>Git Diff (143 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index dbcd1695..312c5b46 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/monitoring/logging
                 environment: staging
-                clusterDir: ""
+                clusterDir: "base"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml b/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
index c66aa63d..d05b7cf8 100644
--- a/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
@@ -6,6 +6,7 @@ metadata:
   annotations:
     logging.openshift.io/preview-vector-collector: enabled
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
 spec:
   collection:
     logs:
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index b4503aa0..9e41cb7d 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -4,6 +4,7 @@ kind: ClusterLogForwarder
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
   name: instance
 spec:
   outputs:
diff --git a/components/monitoring/logging/base/install-logging-operator.yaml b/components/monitoring/logging/base/install-logging-operator.yaml
index c092aaee..b87aa484 100644
--- a/components/monitoring/logging/base/install-logging-operator.yaml
+++ b/components/monitoring/logging/base/install-logging-operator.yaml
@@ -5,7 +5,9 @@ apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   name: cluster-logging
-  namespace: openshift-logging 
+  namespace: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
 spec:
   channel: "stable" 
   name: cluster-logging
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
new file mode 100644
index 00000000..57cef1be
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
+- operatorgroup.yaml
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
new file mode 100644
index 00000000..22559d14
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml
new file mode 100644
index 00000000..4541359e
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml
@@ -0,0 +1,10 @@
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: cluster-logging
+  namespace: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  targetNamespaces:
+  - openshift-logging
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/base/kustomization.yaml
similarity index 94%
rename from components/monitoring/logging/production/kustomization.yaml
rename to components/monitoring/logging/production/base/kustomization.yaml
index 3eee4ac5..32a56c63 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 patches:
   - target:
       group: external-secrets.io
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/base/kustomization.yaml
similarity index 94%
rename from components/monitoring/logging/staging/kustomization.yaml
rename to components/monitoring/logging/staging/base/kustomization.yaml
index 2d89aa0c..0b350aa2 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 patches:
   - target:
       group: external-secrets.io
diff --git a/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml b/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-29ac7aa7/production/app-of-apps-production.yaml
943c943
<             clusterDir: base
---
>             clusterDir: ""
947,949c947
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: [] 
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
<h3>3: Staging changes from 29ac7aa7 to dd48d04f on Thu Jan 11 10:22:56 2024 </h3>  
 
<details> 
<summary>Git Diff (143 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index dbcd1695..312c5b46 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/monitoring/logging
                 environment: staging
-                clusterDir: ""
+                clusterDir: "base"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml b/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
index c66aa63d..d05b7cf8 100644
--- a/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
@@ -6,6 +6,7 @@ metadata:
   annotations:
     logging.openshift.io/preview-vector-collector: enabled
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
 spec:
   collection:
     logs:
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index b4503aa0..9e41cb7d 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -4,6 +4,7 @@ kind: ClusterLogForwarder
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
   name: instance
 spec:
   outputs:
diff --git a/components/monitoring/logging/base/install-logging-operator.yaml b/components/monitoring/logging/base/install-logging-operator.yaml
index c092aaee..b87aa484 100644
--- a/components/monitoring/logging/base/install-logging-operator.yaml
+++ b/components/monitoring/logging/base/install-logging-operator.yaml
@@ -5,7 +5,9 @@ apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   name: cluster-logging
-  namespace: openshift-logging 
+  namespace: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
 spec:
   channel: "stable" 
   name: cluster-logging
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
new file mode 100644
index 00000000..57cef1be
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
+- operatorgroup.yaml
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
new file mode 100644
index 00000000..22559d14
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml
new file mode 100644
index 00000000..4541359e
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml
@@ -0,0 +1,10 @@
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: cluster-logging
+  namespace: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  targetNamespaces:
+  - openshift-logging
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/base/kustomization.yaml
similarity index 94%
rename from components/monitoring/logging/production/kustomization.yaml
rename to components/monitoring/logging/production/base/kustomization.yaml
index 3eee4ac5..32a56c63 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 patches:
   - target:
       group: external-secrets.io
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/base/kustomization.yaml
similarity index 94%
rename from components/monitoring/logging/staging/kustomization.yaml
rename to components/monitoring/logging/staging/base/kustomization.yaml
index 2d89aa0c..0b350aa2 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 patches:
   - target:
       group: external-secrets.io
diff --git a/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml b/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-29ac7aa7/staging/app-of-apps-staging.yaml
897c897
<             clusterDir: base
---
>             clusterDir: ""
901,903c901
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: [] 
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
<h3>3: Development changes from 29ac7aa7 to dd48d04f on Thu Jan 11 10:22:56 2024 </h3>  
 
<details> 
<summary>Git Diff (143 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index dbcd1695..312c5b46 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/monitoring/logging
                 environment: staging
-                clusterDir: ""
+                clusterDir: "base"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml b/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
index c66aa63d..d05b7cf8 100644
--- a/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-log-collectors.yaml
@@ -6,6 +6,7 @@ metadata:
   annotations:
     logging.openshift.io/preview-vector-collector: enabled
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
 spec:
   collection:
     logs:
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index b4503aa0..9e41cb7d 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -4,6 +4,7 @@ kind: ClusterLogForwarder
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
   name: instance
 spec:
   outputs:
diff --git a/components/monitoring/logging/base/install-logging-operator.yaml b/components/monitoring/logging/base/install-logging-operator.yaml
index c092aaee..b87aa484 100644
--- a/components/monitoring/logging/base/install-logging-operator.yaml
+++ b/components/monitoring/logging/base/install-logging-operator.yaml
@@ -5,7 +5,9 @@ apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   name: cluster-logging
-  namespace: openshift-logging 
+  namespace: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
 spec:
   channel: "stable" 
   name: cluster-logging
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
new file mode 100644
index 00000000..57cef1be
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
+- operatorgroup.yaml
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
new file mode 100644
index 00000000..22559d14
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml
new file mode 100644
index 00000000..4541359e
--- /dev/null
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/operatorgroup.yaml
@@ -0,0 +1,10 @@
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: cluster-logging
+  namespace: openshift-logging
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  targetNamespaces:
+  - openshift-logging
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/base/kustomization.yaml
similarity index 94%
rename from components/monitoring/logging/production/kustomization.yaml
rename to components/monitoring/logging/production/base/kustomization.yaml
index 3eee4ac5..32a56c63 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 patches:
   - target:
       group: external-secrets.io
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/base/kustomization.yaml
similarity index 94%
rename from components/monitoring/logging/staging/kustomization.yaml
rename to components/monitoring/logging/staging/base/kustomization.yaml
index 2d89aa0c..0b350aa2 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 patches:
   - target:
       group: external-secrets.io
diff --git a/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml b/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
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
<h3>4: Production changes from a10245d4 to 29ac7aa7 on Thu Jan 11 09:00:24 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
index e7a2ab48..5014b416 100644
--- a/components/sandbox/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
@@ -35,7 +35,7 @@ rules:
 - apiGroups:
   - "toolchain.dev.openshift.com"
   resources:
-  - "spacebindingrequests"
+  - "*"
   verbs:
   - "*"
 - apiGroups:
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 3b3b8a81..37501832 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 namespace: toolchain-host-operator
 resources:
 - ../../base
+- rbac
diff --git a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
new file mode 100644
index 00000000..feab41c8
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
@@ -0,0 +1,45 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins
+  namespace: sandbox-sre-host
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+ ---
+ kind: RoleBinding
+ apiVersion: rbac.authorization.k8s.io/v1
+ metadata:
+   name: sandbox-sre-admins
+   namespace: toolchain-host-operator
+ subjects:
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: MatousJobanek
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: alexeykazakov
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: xcoulon
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: mfrancisc
+ roleRef:
+   apiGroup: rbac.authorization.k8s.io
+   kind: ClusterRole
+   name: admin
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
new file mode 100644
index 00000000..1a34b458
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
@@ -0,0 +1,45 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins
+  namespace: sandbox-sre-member
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+ ---
+ kind: RoleBinding
+ apiVersion: rbac.authorization.k8s.io/v1
+ metadata:
+   name: sandbox-sre-admins
+   namespace: toolchain-member-operator
+ subjects:
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: MatousJobanek
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: alexeykazakov
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: xcoulon
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: mfrancisc
+ roleRef:
+   apiGroup: rbac.authorization.k8s.io
+   kind: ClusterRole
+   name: admin
\ No newline at end of file 
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
<h3>4: Staging changes from a10245d4 to 29ac7aa7 on Thu Jan 11 09:00:24 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
index e7a2ab48..5014b416 100644
--- a/components/sandbox/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
@@ -35,7 +35,7 @@ rules:
 - apiGroups:
   - "toolchain.dev.openshift.com"
   resources:
-  - "spacebindingrequests"
+  - "*"
   verbs:
   - "*"
 - apiGroups:
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 3b3b8a81..37501832 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 namespace: toolchain-host-operator
 resources:
 - ../../base
+- rbac
diff --git a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
new file mode 100644
index 00000000..feab41c8
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
@@ -0,0 +1,45 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins
+  namespace: sandbox-sre-host
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+ ---
+ kind: RoleBinding
+ apiVersion: rbac.authorization.k8s.io/v1
+ metadata:
+   name: sandbox-sre-admins
+   namespace: toolchain-host-operator
+ subjects:
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: MatousJobanek
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: alexeykazakov
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: xcoulon
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: mfrancisc
+ roleRef:
+   apiGroup: rbac.authorization.k8s.io
+   kind: ClusterRole
+   name: admin
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
new file mode 100644
index 00000000..1a34b458
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
@@ -0,0 +1,45 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins
+  namespace: sandbox-sre-member
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+ ---
+ kind: RoleBinding
+ apiVersion: rbac.authorization.k8s.io/v1
+ metadata:
+   name: sandbox-sre-admins
+   namespace: toolchain-member-operator
+ subjects:
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: MatousJobanek
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: alexeykazakov
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: xcoulon
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: mfrancisc
+ roleRef:
+   apiGroup: rbac.authorization.k8s.io
+   kind: ClusterRole
+   name: admin
\ No newline at end of file 
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
<h3>4: Development changes from a10245d4 to 29ac7aa7 on Thu Jan 11 09:00:24 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
index e7a2ab48..5014b416 100644
--- a/components/sandbox/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
@@ -35,7 +35,7 @@ rules:
 - apiGroups:
   - "toolchain.dev.openshift.com"
   resources:
-  - "spacebindingrequests"
+  - "*"
   verbs:
   - "*"
 - apiGroups:
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 3b3b8a81..37501832 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 namespace: toolchain-host-operator
 resources:
 - ../../base
+- rbac
diff --git a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
new file mode 100644
index 00000000..feab41c8
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
@@ -0,0 +1,45 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins
+  namespace: sandbox-sre-host
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+ ---
+ kind: RoleBinding
+ apiVersion: rbac.authorization.k8s.io/v1
+ metadata:
+   name: sandbox-sre-admins
+   namespace: toolchain-host-operator
+ subjects:
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: MatousJobanek
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: alexeykazakov
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: xcoulon
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: mfrancisc
+ roleRef:
+   apiGroup: rbac.authorization.k8s.io
+   kind: ClusterRole
+   name: admin
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
new file mode 100644
index 00000000..1a34b458
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
@@ -0,0 +1,45 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins
+  namespace: sandbox-sre-member
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+ ---
+ kind: RoleBinding
+ apiVersion: rbac.authorization.k8s.io/v1
+ metadata:
+   name: sandbox-sre-admins
+   namespace: toolchain-member-operator
+ subjects:
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: MatousJobanek
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: alexeykazakov
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: xcoulon
+   - kind: User
+     apiGroup: rbac.authorization.k8s.io
+     name: mfrancisc
+ roleRef:
+   apiGroup: rbac.authorization.k8s.io
+   kind: ClusterRole
+   name: admin
\ No newline at end of file 
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
