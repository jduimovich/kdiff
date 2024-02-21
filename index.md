# kustomize changes tracked by commits 
### This file generated at Wed Feb 21 12:05:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e35dcf62 to b4000355 on Wed Feb 21 11:22:47 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 6f41bf65..a153f367 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
+- https://github.com/redhat-appstudio/build-service/config/default?ref=749e814bc93b04a095ec93782955e1a8b324c729
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
+  newTag: 749e814bc93b04a095ec93782955e1a8b324c729
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 7cb289a4..271a5abb 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
+- https://github.com/redhat-appstudio/build-service/config/default?ref=749e814bc93b04a095ec93782955e1a8b324c729
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
+  newTag: 749e814bc93b04a095ec93782955e1a8b324c729
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e35dcf62 to b4000355 on Wed Feb 21 11:22:47 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 6f41bf65..a153f367 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
+- https://github.com/redhat-appstudio/build-service/config/default?ref=749e814bc93b04a095ec93782955e1a8b324c729
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
+  newTag: 749e814bc93b04a095ec93782955e1a8b324c729
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 7cb289a4..271a5abb 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
+- https://github.com/redhat-appstudio/build-service/config/default?ref=749e814bc93b04a095ec93782955e1a8b324c729
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
+  newTag: 749e814bc93b04a095ec93782955e1a8b324c729
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e35dcf62/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
754c754
<         image: quay.io/redhat-appstudio/build-service:749e814bc93b04a095ec93782955e1a8b324c729
---
>         image: quay.io/redhat-appstudio/build-service:1268e589644feccfed33af1a44beb04f43b5a1b2 
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
<h3>1: Development changes from e35dcf62 to b4000355 on Wed Feb 21 11:22:47 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 6f41bf65..a153f367 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
+- https://github.com/redhat-appstudio/build-service/config/default?ref=749e814bc93b04a095ec93782955e1a8b324c729
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
+  newTag: 749e814bc93b04a095ec93782955e1a8b324c729
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 7cb289a4..271a5abb 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
+- https://github.com/redhat-appstudio/build-service/config/default?ref=749e814bc93b04a095ec93782955e1a8b324c729
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
+  newTag: 749e814bc93b04a095ec93782955e1a8b324c729
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e35dcf62/development/components/build-service/development/kustomize.out.yaml
761c761
<         image: quay.io/redhat-appstudio/build-service:749e814bc93b04a095ec93782955e1a8b324c729
---
>         image: quay.io/redhat-appstudio/build-service:1268e589644feccfed33af1a44beb04f43b5a1b2 
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
<h3>2: Production changes from 7361d356 to e35dcf62 on Wed Feb 21 10:16:47 2024 </h3>  
 
<details> 
<summary>Git Diff (150 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 53c7e512..2831803b 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 01b74964..e368f724 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=ca6137684fa233572f288cbeae245f8b00c683ae
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 354b572f..6b89cbaa 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=ca6137684fa233572f288cbeae245f8b00c683ae
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index a26135a5..500a0c39 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index a26135a5..b1a6984d 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
 
 patches:
   - target:
diff --git a/docs/development/spi.md b/docs/development/spi.md
index 0598fa35..d6fc564d 100644
--- a/docs/development/spi.md
+++ b/docs/development/spi.md
@@ -4,17 +4,17 @@ title: Service Provider Integration Deployment
 
 ## SPI Deployment environment promotion
 
-SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/redhat-appstudio/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
+SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/konflux-ci/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
 
 ## Post-bootstrap Service Provider Integration(SPI) Configuration
 
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
+SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
 
 > **NOTE:**  Following process is automated in `preview` mode
 
 SPI components will fail to start right after the bootstrap as additional manual configuration is required before they are healthy.
 
-1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
+1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
 
 2. Create a `shared-configuration-file` Secret 
 
@@ -31,7 +31,7 @@ SPI Vault instance has to be manually initialized. There is a script to help wit
 2. Clone SPI operator repo 
 
 ```bash
-git clone https://github.com/redhat-appstudio/service-provider-integration-operator && cd service-provider-integration-operator
+git clone https://github.com/konflux-ci/service-provider-integration-operator && cd service-provider-integration-operator
 ```
 
 3. run `vault-init.sh` script from repo root directory 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 38315891..4dd5a413 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -61,7 +61,7 @@ export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
 ## SPI integration
-### Based on https://github.com/redhat-appstudio/service-provider-integration-operator#configuration
+### Based on https://github.com/konflux-ci/service-provider-integration-operator#configuration
 export SHARED_SECRET= # Random string
 export SPI_GITHUB_CLIENT_ID=
 export SPI_GITHUB_CLIENT_SECRET=
diff --git a/hack/preview.sh b/hack/preview.sh
index 5631fc0c..6f9b7949 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -195,7 +195,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
+[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
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
<h3>2: Staging changes from 7361d356 to e35dcf62 on Wed Feb 21 10:16:47 2024 </h3>  
 
<details> 
<summary>Git Diff (150 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 53c7e512..2831803b 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 01b74964..e368f724 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=ca6137684fa233572f288cbeae245f8b00c683ae
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 354b572f..6b89cbaa 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=ca6137684fa233572f288cbeae245f8b00c683ae
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index a26135a5..500a0c39 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index a26135a5..b1a6984d 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
 
 patches:
   - target:
diff --git a/docs/development/spi.md b/docs/development/spi.md
index 0598fa35..d6fc564d 100644
--- a/docs/development/spi.md
+++ b/docs/development/spi.md
@@ -4,17 +4,17 @@ title: Service Provider Integration Deployment
 
 ## SPI Deployment environment promotion
 
-SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/redhat-appstudio/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
+SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/konflux-ci/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
 
 ## Post-bootstrap Service Provider Integration(SPI) Configuration
 
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
+SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
 
 > **NOTE:**  Following process is automated in `preview` mode
 
 SPI components will fail to start right after the bootstrap as additional manual configuration is required before they are healthy.
 
-1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
+1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
 
 2. Create a `shared-configuration-file` Secret 
 
@@ -31,7 +31,7 @@ SPI Vault instance has to be manually initialized. There is a script to help wit
 2. Clone SPI operator repo 
 
 ```bash
-git clone https://github.com/redhat-appstudio/service-provider-integration-operator && cd service-provider-integration-operator
+git clone https://github.com/konflux-ci/service-provider-integration-operator && cd service-provider-integration-operator
 ```
 
 3. run `vault-init.sh` script from repo root directory 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 38315891..4dd5a413 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -61,7 +61,7 @@ export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
 ## SPI integration
-### Based on https://github.com/redhat-appstudio/service-provider-integration-operator#configuration
+### Based on https://github.com/konflux-ci/service-provider-integration-operator#configuration
 export SHARED_SECRET= # Random string
 export SPI_GITHUB_CLIENT_ID=
 export SPI_GITHUB_CLIENT_SECRET=
diff --git a/hack/preview.sh b/hack/preview.sh
index 5631fc0c..6f9b7949 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -195,7 +195,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
+[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
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
<h3>2: Development changes from 7361d356 to e35dcf62 on Wed Feb 21 10:16:47 2024 </h3>  
 
<details> 
<summary>Git Diff (150 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 53c7e512..2831803b 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 01b74964..e368f724 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=ca6137684fa233572f288cbeae245f8b00c683ae
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 354b572f..6b89cbaa 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=ca6137684fa233572f288cbeae245f8b00c683ae
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index a26135a5..500a0c39 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index a26135a5..b1a6984d 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
+    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
 
 patches:
   - target:
diff --git a/docs/development/spi.md b/docs/development/spi.md
index 0598fa35..d6fc564d 100644
--- a/docs/development/spi.md
+++ b/docs/development/spi.md
@@ -4,17 +4,17 @@ title: Service Provider Integration Deployment
 
 ## SPI Deployment environment promotion
 
-SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/redhat-appstudio/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
+SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/konflux-ci/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
 
 ## Post-bootstrap Service Provider Integration(SPI) Configuration
 
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
+SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
 
 > **NOTE:**  Following process is automated in `preview` mode
 
 SPI components will fail to start right after the bootstrap as additional manual configuration is required before they are healthy.
 
-1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
+1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
 
 2. Create a `shared-configuration-file` Secret 
 
@@ -31,7 +31,7 @@ SPI Vault instance has to be manually initialized. There is a script to help wit
 2. Clone SPI operator repo 
 
 ```bash
-git clone https://github.com/redhat-appstudio/service-provider-integration-operator && cd service-provider-integration-operator
+git clone https://github.com/konflux-ci/service-provider-integration-operator && cd service-provider-integration-operator
 ```
 
 3. run `vault-init.sh` script from repo root directory 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 38315891..4dd5a413 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -61,7 +61,7 @@ export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
 ## SPI integration
-### Based on https://github.com/redhat-appstudio/service-provider-integration-operator#configuration
+### Based on https://github.com/konflux-ci/service-provider-integration-operator#configuration
 export SHARED_SECRET= # Random string
 export SPI_GITHUB_CLIENT_ID=
 export SPI_GITHUB_CLIENT_SECRET=
diff --git a/hack/preview.sh b/hack/preview.sh
index 5631fc0c..6f9b7949 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -195,7 +195,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
+[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
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
<h3>3: Production changes from 3040799b to 7361d356 on Wed Feb 21 07:45:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index de7f8061..fc1bc646 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
+  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-3040799b/production/components/integration/production/kustomize.out.yaml
1175c1175
<         image: quay.io/redhat-appstudio/integration-service:4991b9f708950233ca29f03bcadb715a8ddaecc2
---
>         image: quay.io/redhat-appstudio/integration-service:60be0fd0b8a656cf924431ba30bccdc85ad297b9 
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
<h3>3: Staging changes from 3040799b to 7361d356 on Wed Feb 21 07:45:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index de7f8061..fc1bc646 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 3040799b to 7361d356 on Wed Feb 21 07:45:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index de7f8061..fc1bc646 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 4fcb3cb4 to 3040799b on Tue Feb 20 21:09:48 2024 </h3>  
 
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
<h3>4: Staging changes from 4fcb3cb4 to 3040799b on Tue Feb 20 21:09:48 2024 </h3>  
 
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
<h3>4: Development changes from 4fcb3cb4 to 3040799b on Tue Feb 20 21:09:48 2024 </h3>  
 
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
