# kustomize changes tracked by commits 
### This file generated at Mon Feb 26 12:06:26 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 655a03f7 to 53175b3e on Mon Feb 26 10:35:27 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index fc1bc646..9f99cbcb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
+  newTag: b37833f64c8017c942ba95ca648d3b880b39af62
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-655a03f7/production/components/integration/production/kustomize.out.yaml
1175c1175
<         image: quay.io/redhat-appstudio/integration-service:b37833f64c8017c942ba95ca648d3b880b39af62
---
>         image: quay.io/redhat-appstudio/integration-service:4991b9f708950233ca29f03bcadb715a8ddaecc2 
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
<h3>1: Staging changes from 655a03f7 to 53175b3e on Mon Feb 26 10:35:27 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index fc1bc646..9f99cbcb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
+  newTag: b37833f64c8017c942ba95ca648d3b880b39af62
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 655a03f7 to 53175b3e on Mon Feb 26 10:35:27 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index fc1bc646..9f99cbcb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
+  newTag: b37833f64c8017c942ba95ca648d3b880b39af62
 
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
<h3>2: Production changes from 8637e113 to 655a03f7 on Mon Feb 26 08:42:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index db18d93d..cc31020b 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a6a2d4d7a6179fa695aa615910f7b6073f9ee465
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a6a2d4d7a6179fa695aa615910f7b6073f9ee465
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 500a0c39..b1a6984d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
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
<h3>2: Staging changes from 8637e113 to 655a03f7 on Mon Feb 26 08:42:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index db18d93d..cc31020b 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a6a2d4d7a6179fa695aa615910f7b6073f9ee465
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a6a2d4d7a6179fa695aa615910f7b6073f9ee465
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 500a0c39..b1a6984d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
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
<h3>2: Development changes from 8637e113 to 655a03f7 on Mon Feb 26 08:42:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index db18d93d..cc31020b 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a6a2d4d7a6179fa695aa615910f7b6073f9ee465
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a6a2d4d7a6179fa695aa615910f7b6073f9ee465
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: a4bbfec9e7dcfa4515258146f3ef22404640b02e
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 500a0c39..b1a6984d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
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
<h3>3: Production changes from d4490267 to 8637e113 on Mon Feb 26 08:42:42 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/bump-replicas.yaml b/components/sprayproxy/staging/bump-replicas.yaml
new file mode 100644
index 00000000..a6c13522
--- /dev/null
+++ b/components/sprayproxy/staging/bump-replicas.yaml
@@ -0,0 +1,24 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: sprayproxy
+  namespace: sprayproxy
+spec:
+  replicas: 2
+  template:
+    metadata:
+      labels:
+        app: sprayproxy
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - sprayproxy
+                topologyKey: kubernetes.io/hostname
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index e4e6d515..1143aa48 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -13,3 +13,4 @@ images:
 patches:
   - path: change-backends.yaml
   - path: change-webhook-secret.yaml
+  - path: bump-replicas.yaml 
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
<h3>3: Staging changes from d4490267 to 8637e113 on Mon Feb 26 08:42:42 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/bump-replicas.yaml b/components/sprayproxy/staging/bump-replicas.yaml
new file mode 100644
index 00000000..a6c13522
--- /dev/null
+++ b/components/sprayproxy/staging/bump-replicas.yaml
@@ -0,0 +1,24 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: sprayproxy
+  namespace: sprayproxy
+spec:
+  replicas: 2
+  template:
+    metadata:
+      labels:
+        app: sprayproxy
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - sprayproxy
+                topologyKey: kubernetes.io/hostname
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index e4e6d515..1143aa48 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -13,3 +13,4 @@ images:
 patches:
   - path: change-backends.yaml
   - path: change-webhook-secret.yaml
+  - path: bump-replicas.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-d4490267/staging/components/sprayproxy/staging/kustomize.out.yaml
163c163
<   replicas: 2
---
>   replicas: 1
170d169
<         app: sprayproxy
173,184d171
<       affinity:
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchExpressions:
<                 - key: app
<                   operator: In
<                   values:
<                   - sprayproxy
<               topologyKey: kubernetes.io/hostname
<             weight: 100 
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
<h3>3: Development changes from d4490267 to 8637e113 on Mon Feb 26 08:42:42 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/bump-replicas.yaml b/components/sprayproxy/staging/bump-replicas.yaml
new file mode 100644
index 00000000..a6c13522
--- /dev/null
+++ b/components/sprayproxy/staging/bump-replicas.yaml
@@ -0,0 +1,24 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: sprayproxy
+  namespace: sprayproxy
+spec:
+  replicas: 2
+  template:
+    metadata:
+      labels:
+        app: sprayproxy
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - sprayproxy
+                topologyKey: kubernetes.io/hostname
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index e4e6d515..1143aa48 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -13,3 +13,4 @@ images:
 patches:
   - path: change-backends.yaml
   - path: change-webhook-secret.yaml
+  - path: bump-replicas.yaml 
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
<h3>4: Production changes from bda72eae to d4490267 on Mon Feb 26 07:47:47 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 2831803b..f3f95944 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=e1078f1d6028a08c16b177be8774774512b97f3a
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e368f724..7cf44c0e 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=e1078f1d6028a08c16b177be8774774512b97f3a
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 6b89cbaa..e890c6e7 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=e1078f1d6028a08c16b177be8774774512b97f3a
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index b1a6984d..5f5f59bb 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=ca6137684fa233572f288cbeae245f8b00c683ae
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=e1078f1d6028a08c16b177be8774774512b97f3a
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=e1078f1d6028a08c16b177be8774774512b97f3a
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from bda72eae to d4490267 on Mon Feb 26 07:47:47 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 2831803b..f3f95944 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=e1078f1d6028a08c16b177be8774774512b97f3a
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e368f724..7cf44c0e 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=e1078f1d6028a08c16b177be8774774512b97f3a
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 6b89cbaa..e890c6e7 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=e1078f1d6028a08c16b177be8774774512b97f3a
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index b1a6984d..5f5f59bb 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=ca6137684fa233572f288cbeae245f8b00c683ae
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=e1078f1d6028a08c16b177be8774774512b97f3a
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=e1078f1d6028a08c16b177be8774774512b97f3a
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
 
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
<h3>4: Development changes from bda72eae to d4490267 on Mon Feb 26 07:47:47 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 2831803b..f3f95944 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=e1078f1d6028a08c16b177be8774774512b97f3a
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e368f724..7cf44c0e 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=e1078f1d6028a08c16b177be8774774512b97f3a
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 6b89cbaa..e890c6e7 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=e1078f1d6028a08c16b177be8774774512b97f3a
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index b1a6984d..5f5f59bb 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=ca6137684fa233572f288cbeae245f8b00c683ae
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ca6137684fa233572f288cbeae245f8b00c683ae
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=e1078f1d6028a08c16b177be8774774512b97f3a
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=e1078f1d6028a08c16b177be8774774512b97f3a
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ca6137684fa233572f288cbeae245f8b00c683ae
+    newTag: e1078f1d6028a08c16b177be8774774512b97f3a
 
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
```
 
</details> 
<br> 


</div>
