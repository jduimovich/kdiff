# kustomize changes tracked by commits 
### This file generated at Wed Jun  5 12:04:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from da1a7ac7 to 59a6d2e4 on Wed Jun 5 09:52:45 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 882b0a80..66da2c54 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+    newTag: 34ae088dc064be78744886fff32e956cfd475591
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+    newTag: 34ae088dc064be78744886fff32e956cfd475591
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from da1a7ac7 to 59a6d2e4 on Wed Jun 5 09:52:45 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 882b0a80..66da2c54 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+    newTag: 34ae088dc064be78744886fff32e956cfd475591
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+    newTag: 34ae088dc064be78744886fff32e956cfd475591
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from da1a7ac7 to 59a6d2e4 on Wed Jun 5 09:52:45 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 882b0a80..66da2c54 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+    newTag: 34ae088dc064be78744886fff32e956cfd475591
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+    newTag: 34ae088dc064be78744886fff32e956cfd475591
 
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
<h3>2: Production changes from 5b466c13 to da1a7ac7 on Wed Jun 5 06:34:34 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 7736ab4b..603fc299 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2db0adc5..e3d7d54d 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5b466c13 to da1a7ac7 on Wed Jun 5 06:34:34 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 7736ab4b..603fc299 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2db0adc5..e3d7d54d 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5b466c13/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
743c743
<         image: quay.io/konflux-ci/build-service:632b0096f304baf3949cf58f066814d0dc19ae6c
---
>         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c 
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
<h3>2: Development changes from 5b466c13 to da1a7ac7 on Wed Jun 5 06:34:34 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 7736ab4b..603fc299 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2db0adc5..e3d7d54d 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
+- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 02a07050a31bf08e813f962d54225583cd67189c
+  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5b466c13/development/components/build-service/development/kustomize.out.yaml
738c738
<         image: quay.io/konflux-ci/build-service:632b0096f304baf3949cf58f066814d0dc19ae6c
---
>         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c 
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
<h3>3: Production changes from 92c408cc to 5b466c13 on Wed Jun 5 02:29:51 2024 </h3>  
 
<details> 
<summary>Git Diff (201 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 268b267d..448a9b2d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 55f96b7c..ccb0dfbd 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,70 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c439eb2b..67d693f4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,71 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
+
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
./commit-92c408cc/production/components/multi-platform-controller/production/kustomize.out.yaml
171c171,173
<   dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
---
>   dynamic.linux-root-amd64.disk: "200"
>   dynamic.linux-root-amd64.instance-type: m5.2xlarge
>   dynamic.linux-root-amd64.iops: "16000"
178a181
>   dynamic.linux-root-amd64.throughput: "1000"
180,243d182
<   dynamic.linux-root-amd64.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<      echo "File system exists on the disk."
<     else
<      echo "No file system found on the disk /dev/nvme1n1"
<      mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<      echo "Directory '/home/var-lib-containers' exist"
<     else
<      echo "Directory '/home/var-lib-containers' doesn't exist"
<      mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<      echo "Directory '/home/var-tmp' exist"
<     else
<      echo "Directory '/home/var-tmp' doesn't exist"
<      mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<     echo "ec2-user home exists"
<     else
<     echo "ec2-user home doesn't exist"
<     mkdir -p /home/ec2-user/.ssh
<     chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     --//--
359c298
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
401c340
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 92c408cc to 5b466c13 on Wed Jun 5 02:29:51 2024 </h3>  
 
<details> 
<summary>Git Diff (201 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 268b267d..448a9b2d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 55f96b7c..ccb0dfbd 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,70 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c439eb2b..67d693f4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,71 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
+
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-92c408cc/staging/components/multi-platform-controller/staging/kustomize.out.yaml
284c284
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
326c326
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5 
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
<h3>3: Development changes from 92c408cc to 5b466c13 on Wed Jun 5 02:29:51 2024 </h3>  
 
<details> 
<summary>Git Diff (201 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 268b267d..448a9b2d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 55f96b7c..ccb0dfbd 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,70 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c439eb2b..67d693f4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,71 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
+
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-92c408cc/development/components/multi-platform-controller/development/kustomize.out.yaml
220c220
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
262c262
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5 
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
<h3>4: Production changes from c757a1d2 to 92c408cc on Tue Jun 4 20:09:58 2024 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 42b14d47..c04e0a6b 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,6 +4,7 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
 # otel-collector is dev only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 3cb9b66d..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -4,3 +4,10 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from c757a1d2 to 92c408cc on Tue Jun 4 20:09:58 2024 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 42b14d47..c04e0a6b 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,6 +4,7 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
 # otel-collector is dev only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 3cb9b66d..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -4,3 +4,10 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from c757a1d2 to 92c408cc on Tue Jun 4 20:09:58 2024 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 42b14d47..c04e0a6b 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,6 +4,7 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
 # otel-collector is dev only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 3cb9b66d..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -4,3 +4,10 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
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
