# kustomize changes tracked by commits 
### This file generated at Mon May 27 08:04:47 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 75cc1cf0 to d73a3aef on Mon May 27 06:26:03 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3edf1a36..5ab00813 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=34ae088dc064be78744886fff32e956cfd475591
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 46a3727a..8acd6815 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=34ae088dc064be78744886fff32e956cfd475591
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index f08f5c5d..70b9347c 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=34ae088dc064be78744886fff32e956cfd475591
 
 namespace: spi-system
 
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
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 882b0a80..66da2c54 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 75cc1cf0 to d73a3aef on Mon May 27 06:26:03 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3edf1a36..5ab00813 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=34ae088dc064be78744886fff32e956cfd475591
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 46a3727a..8acd6815 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=34ae088dc064be78744886fff32e956cfd475591
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index f08f5c5d..70b9347c 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=34ae088dc064be78744886fff32e956cfd475591
 
 namespace: spi-system
 
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
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 882b0a80..66da2c54 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 75cc1cf0 to d73a3aef on Mon May 27 06:26:03 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3edf1a36..5ab00813 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=34ae088dc064be78744886fff32e956cfd475591
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 46a3727a..8acd6815 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=34ae088dc064be78744886fff32e956cfd475591
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index f08f5c5d..70b9347c 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=a07e8305e1713f841a8fefff4ec9b9517b3c65ca
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=34ae088dc064be78744886fff32e956cfd475591
 
 namespace: spi-system
 
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
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 882b0a80..66da2c54 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 9270df8e to 75cc1cf0 on Sun May 26 13:20:14 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/oadp/dpa.yaml b/components/backup/base/all-clusters/oadp/dpa.yaml
index 4e4d32bc..873b28c8 100644
--- a/components/backup/base/all-clusters/oadp/dpa.yaml
+++ b/components/backup/base/all-clusters/oadp/dpa.yaml
@@ -4,6 +4,7 @@ metadata:
   name: velero-aws
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   backupLocations:
     - velero:
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 83ba107e..d4ba9545 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-host
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index c2895f5d..583137f9 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-tenants
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
index 652a9ffc..d5a85aaa 100644
--- a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-member
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-9270df8e/production/components/backup/production/stone-prd-host1/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prod-p01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
186,187d180
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prod-p02/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
186,187d180
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 9270df8e to 75cc1cf0 on Sun May 26 13:20:14 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/oadp/dpa.yaml b/components/backup/base/all-clusters/oadp/dpa.yaml
index 4e4d32bc..873b28c8 100644
--- a/components/backup/base/all-clusters/oadp/dpa.yaml
+++ b/components/backup/base/all-clusters/oadp/dpa.yaml
@@ -4,6 +4,7 @@ metadata:
   name: velero-aws
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   backupLocations:
     - velero:
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 83ba107e..d4ba9545 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-host
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index c2895f5d..583137f9 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-tenants
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
index 652a9ffc..d5a85aaa 100644
--- a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-member
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-9270df8e/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
186,187d180
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 9270df8e to 75cc1cf0 on Sun May 26 13:20:14 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/oadp/dpa.yaml b/components/backup/base/all-clusters/oadp/dpa.yaml
index 4e4d32bc..873b28c8 100644
--- a/components/backup/base/all-clusters/oadp/dpa.yaml
+++ b/components/backup/base/all-clusters/oadp/dpa.yaml
@@ -4,6 +4,7 @@ metadata:
   name: velero-aws
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   backupLocations:
     - velero:
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 83ba107e..d4ba9545 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-host
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index c2895f5d..583137f9 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-tenants
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
index 652a9ffc..d5a85aaa 100644
--- a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-member
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from dee28678 to 9270df8e on Sun May 26 12:50:41 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index b1da9e84..aef9e370 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -20,6 +20,8 @@ metadata:
   labels:
     app: sso
   name: keycloak
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   external:
     enabled: false
@@ -40,6 +42,8 @@ metadata:
   labels:
     realm: redhat-external
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   instanceSelector:
     matchLabels:
@@ -284,6 +288,8 @@ metadata:
   name: cloud-services
   labels:
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   client:
     enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-dee28678/production/components/keycloak/production/stone-prod-p02/kustomize.out.yaml
60,61d59
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
82,83d79
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
124,125d119
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from dee28678 to 9270df8e on Sun May 26 12:50:41 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index b1da9e84..aef9e370 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -20,6 +20,8 @@ metadata:
   labels:
     app: sso
   name: keycloak
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   external:
     enabled: false
@@ -40,6 +42,8 @@ metadata:
   labels:
     realm: redhat-external
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   instanceSelector:
     matchLabels:
@@ -284,6 +288,8 @@ metadata:
   name: cloud-services
   labels:
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   client:
     enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-dee28678/staging/components/keycloak/staging/stone-stage-p01/kustomize.out.yaml
60,61d59
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
82,83d79
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
124,125d119
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from dee28678 to 9270df8e on Sun May 26 12:50:41 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index b1da9e84..aef9e370 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -20,6 +20,8 @@ metadata:
   labels:
     app: sso
   name: keycloak
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   external:
     enabled: false
@@ -40,6 +42,8 @@ metadata:
   labels:
     realm: redhat-external
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   instanceSelector:
     matchLabels:
@@ -284,6 +288,8 @@ metadata:
   name: cloud-services
   labels:
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   client:
     enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-dee28678/development/components/keycloak/development/kustomize.out.yaml
28,29d27
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
50,51d47
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
92,93d87
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from d6c51759 to dee28678 on Sun May 26 12:42:32 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
index c5eeb9a0..0f640327 100644
--- a/components/keycloak/production/stone-prod-p02/kustomization.yaml
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -1,14 +1,14 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-#  - ../../base
+  - ../../base
   - ../../base/konflux-workspace-admins
-#patches:
-#  - path: set-redirect-uri.yaml
-#    target:
-#      name: openshift-provider
-#      kind: ServiceAccount
-#  - path: set-ocp-idp.yaml
-#    target:
-#      name: redhat-external
-#      kind: KeycloakRealm
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (357 lines)</summary>  

``` 
./commit-d6c51759/production/components/keycloak/production/stone-prod-p02/kustomize.out.yaml
1,15d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
<   name: rhtap-auth
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     serviceaccounts.openshift.io/oauth-redirecturi.rhtap: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
<   name: openshift-provider
<   namespace: rhtap-auth
< ---
47,385d31
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: openshift-provider
<   name: openshift-provider
<   namespace: rhtap-auth
< type: kubernetes.io/service-account-token
< ---
< apiVersion: keycloak.org/v1alpha1
< kind: Keycloak
< metadata:
<   labels:
<     app: sso
<   name: keycloak
<   namespace: rhtap-auth
< spec:
<   external:
<     enabled: false
<   externalAccess:
<     enabled: true
<   instances: 3
<   keycloakDeploymentSpec:
<     imagePullPolicy: Always
<   multiAvailablityZones:
<     enabled: true
<   postgresDeploymentSpec:
<     imagePullPolicy: Always
< ---
< apiVersion: keycloak.org/v1alpha1
< kind: KeycloakClient
< metadata:
<   labels:
<     app: sso
<   name: cloud-services
<   namespace: rhtap-auth
< spec:
<   client:
<     clientAuthenticatorType: client-secret
<     clientId: cloud-services
<     defaultClientScopes:
<     - web-origins
<     - acr
<     - nameandterms
<     - profile
<     - roles
<     - email
<     directAccessGrantsEnabled: false
<     enabled: true
<     id: e3e1d703-62c1-46f4-b706-e3d7eebafd01
<     implicitFlowEnabled: false
<     optionalClientScopes:
<     - address
<     - phone
<     - profile_level.name_and_dev_terms
<     - offline_access
<     - microprofile-jwt
<     publicClient: true
<     redirectUris:
<     - '*'
<     secret: client-secret
<     standardFlowEnabled: true
<     webOrigins:
<     - '*'
<   realmSelector:
<     matchLabels:
<       realm: redhat-external
<   scopeMappings: {}
< ---
< apiVersion: keycloak.org/v1alpha1
< kind: KeycloakRealm
< metadata:
<   labels:
<     app: sso
<     realm: redhat-external
<   name: redhat-external
<   namespace: rhtap-auth
< spec:
<   instanceSelector:
<     matchLabels:
<       app: sso
<   realm:
<     clientScopes:
<     - attributes:
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 672455b2-1e92-44f6-9fb6-fe2017995aed
<       name: profile_level.name_and_dev_terms
<       protocol: openid-connect
<     - attributes:
<         consent.screen.text: ${profileScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: profile'
<       id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
<       name: profile
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: locale
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: locale
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
<         name: locale
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           id.token.claim: "true"
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
<         name: full name
<         protocol: openid-connect
<         protocolMapper: oidc-full-name-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: family_name
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: lastName
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
<         name: family name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: updated_at
<           id.token.claim: "true"
<           jsonType.label: long
<           user.attribute: updatedAt
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 71c6caff-3f17-47db-8dc1-42f9af01832e
<         name: updated at
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: picture
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: picture
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
<         name: picture
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: nickname
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: nickname
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
<         name: nickname
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: website
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: website
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: f8167604-073d-47ea-9fd1-6ec754ce5c49
<         name: website
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: profile
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: profile
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
<         name: profile
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: preferred_username
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: username
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 463f80df-1554-4f0b-889f-1e6f2308ba17
<         name: username
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: given_name
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: firstName
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
<         name: given name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: zoneinfo
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: zoneinfo
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
<         name: zoneinfo
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: gender
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: gender
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
<         name: gender
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: birthdate
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: birthdate
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
<         name: birthdate
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: middle_name
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: middleName
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
<         name: middle name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<     - attributes:
<         consent.screen.text: ${emailScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: email'
<       id: 45e1900d-2199-45fc-9028-a39497a6cdd5
<       name: email
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: email
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: email
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
<         name: email
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: email_verified
<           id.token.claim: "true"
<           jsonType.label: boolean
<           user.attribute: emailVerified
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 26f0791c-93cf-4241-9c92-5528e67b9817
<         name: email verified
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<     displayName: redhat-external
<     enabled: true
<     id: redhat-external
<     identityProviders:
<     - alias: openshift-v4
<       config:
<         authorizationUrl: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/authorize
<         baseUrl: https://api.stone-prod-p02.hjvn.p1.openshiftapps.com:6443
<         clientId: system:serviceaccount:rhtap-auth:openshift-provider
<         clientSecret: To be added manually in the keycloak UI see the readme
<         syncMode: FORCE
<         tokenUrl: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/token
<       enabled: true
<       internalId: openshift-v4
<       providerId: openshift-v4
<     realm: redhat-external
<     sslRequired: all
< ---
< apiVersion: operators.coreos.com/v1
< kind: OperatorGroup
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
<   name: keycloak-operatorgroup
<   namespace: rhtap-auth
< spec:
<   targetNamespaces:
<   - rhtap-auth
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2"
<   name: rhsso-operator
<   namespace: rhtap-auth
< spec:
<   channel: stable
<   installPlanApproval: Automatic
<   name: rhsso-operator
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from d6c51759 to dee28678 on Sun May 26 12:42:32 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
index c5eeb9a0..0f640327 100644
--- a/components/keycloak/production/stone-prod-p02/kustomization.yaml
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -1,14 +1,14 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-#  - ../../base
+  - ../../base
   - ../../base/konflux-workspace-admins
-#patches:
-#  - path: set-redirect-uri.yaml
-#    target:
-#      name: openshift-provider
-#      kind: ServiceAccount
-#  - path: set-ocp-idp.yaml
-#    target:
-#      name: redhat-external
-#      kind: KeycloakRealm
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from d6c51759 to dee28678 on Sun May 26 12:42:32 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
index c5eeb9a0..0f640327 100644
--- a/components/keycloak/production/stone-prod-p02/kustomization.yaml
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -1,14 +1,14 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-#  - ../../base
+  - ../../base
   - ../../base/konflux-workspace-admins
-#patches:
-#  - path: set-redirect-uri.yaml
-#    target:
-#      name: openshift-provider
-#      kind: ServiceAccount
-#  - path: set-ocp-idp.yaml
-#    target:
-#      name: redhat-external
-#      kind: KeycloakRealm
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm 
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
```
 
</details> 
<br> 


</div>
