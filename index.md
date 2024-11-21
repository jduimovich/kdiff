# kustomize changes tracked by commits 
### This file generated at Thu Nov 21 00:11:05 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c77f0270 to 994bf9e3 on Wed Nov 20 21:43:55 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 121a30df..14016ae0 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=615a33197cb90e3c08390b2bec80596928290de8
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index c4a3a7cb..c3096396 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+  - https://github.com/konflux-ci/release-service/config/default?ref=615a33197cb90e3c08390b2bec80596928290de8
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+    newTag: 615a33197cb90e3c08390b2bec80596928290de8
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from c77f0270 to 994bf9e3 on Wed Nov 20 21:43:55 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 121a30df..14016ae0 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=615a33197cb90e3c08390b2bec80596928290de8
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index c4a3a7cb..c3096396 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+  - https://github.com/konflux-ci/release-service/config/default?ref=615a33197cb90e3c08390b2bec80596928290de8
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+    newTag: 615a33197cb90e3c08390b2bec80596928290de8
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from c77f0270 to 994bf9e3 on Wed Nov 20 21:43:55 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 121a30df..14016ae0 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=615a33197cb90e3c08390b2bec80596928290de8
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index c4a3a7cb..c3096396 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+  - https://github.com/konflux-ci/release-service/config/default?ref=615a33197cb90e3c08390b2bec80596928290de8
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 7eb2e4bceee9fa44daa16541bfd0922bcf6d8371
+    newTag: 615a33197cb90e3c08390b2bec80596928290de8
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c77f0270/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:615a33197cb90e3c08390b2bec80596928290de8
---
>         image: quay.io/konflux-ci/release-service:7eb2e4bceee9fa44daa16541bfd0922bcf6d8371 
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
<h3>2: Production changes from 6fc052da to c77f0270 on Wed Nov 20 20:29:38 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6165f903..46134f14 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-c320aca@sha256:503ed73a038621118440227971d84630175f1b994f89974ad1e0c8bea649affb
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 06e125c7..b83a2c7f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a0fbf32b609200ff9169c95b3d2425e90caae7a5
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=88e97ff82c162f8dde3064d21c29329d74f17e35
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:3420832ae0a1ff309cf900fa5e3b854717f2a5b0@sha256:1f8be035908946f69a15de500570597990c6011c776cb4eb2aad9a681b2cbff0
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=6bcf86d3354769ee4807d0c7d735fda234b2ed07
+      - verify_ec_task_git_revision=3420832ae0a1ff309cf900fa5e3b854717f2a5b0
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-6fc052da/production/components/enterprise-contract/kustomize.out.yaml
187a188,190
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
212a216,218
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
324c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:3420832ae0a1ff309cf900fa5e3b854717f2a5b0@sha256:1f8be035908946f69a15de500570597990c6011c776cb4eb2aad9a681b2cbff0
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
326c332
<   verify_ec_task_git_revision: 3420832ae0a1ff309cf900fa5e3b854717f2a5b0
---
>   verify_ec_task_git_revision: 6bcf86d3354769ee4807d0c7d735fda234b2ed07
353c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
375c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
400c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
419c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-c320aca@sha256:503ed73a038621118440227971d84630175f1b994f89974ad1e0c8bea649affb
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
443c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba 
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
<h3>2: Staging changes from 6fc052da to c77f0270 on Wed Nov 20 20:29:38 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6165f903..46134f14 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-c320aca@sha256:503ed73a038621118440227971d84630175f1b994f89974ad1e0c8bea649affb
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 06e125c7..b83a2c7f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a0fbf32b609200ff9169c95b3d2425e90caae7a5
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=88e97ff82c162f8dde3064d21c29329d74f17e35
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:3420832ae0a1ff309cf900fa5e3b854717f2a5b0@sha256:1f8be035908946f69a15de500570597990c6011c776cb4eb2aad9a681b2cbff0
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=6bcf86d3354769ee4807d0c7d735fda234b2ed07
+      - verify_ec_task_git_revision=3420832ae0a1ff309cf900fa5e3b854717f2a5b0
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-6fc052da/staging/components/enterprise-contract/kustomize.out.yaml
187a188,190
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
212a216,218
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
324c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:3420832ae0a1ff309cf900fa5e3b854717f2a5b0@sha256:1f8be035908946f69a15de500570597990c6011c776cb4eb2aad9a681b2cbff0
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
326c332
<   verify_ec_task_git_revision: 3420832ae0a1ff309cf900fa5e3b854717f2a5b0
---
>   verify_ec_task_git_revision: 6bcf86d3354769ee4807d0c7d735fda234b2ed07
353c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
375c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
400c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
419c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-c320aca@sha256:503ed73a038621118440227971d84630175f1b994f89974ad1e0c8bea649affb
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
443c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba 
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
<h3>2: Development changes from 6fc052da to c77f0270 on Wed Nov 20 20:29:38 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6165f903..46134f14 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-c320aca@sha256:503ed73a038621118440227971d84630175f1b994f89974ad1e0c8bea649affb
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 06e125c7..b83a2c7f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a0fbf32b609200ff9169c95b3d2425e90caae7a5
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=88e97ff82c162f8dde3064d21c29329d74f17e35
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:3420832ae0a1ff309cf900fa5e3b854717f2a5b0@sha256:1f8be035908946f69a15de500570597990c6011c776cb4eb2aad9a681b2cbff0
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=6bcf86d3354769ee4807d0c7d735fda234b2ed07
+      - verify_ec_task_git_revision=3420832ae0a1ff309cf900fa5e3b854717f2a5b0
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-6fc052da/development/components/enterprise-contract/kustomize.out.yaml
187a188,190
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
212a216,218
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
324c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:3420832ae0a1ff309cf900fa5e3b854717f2a5b0@sha256:1f8be035908946f69a15de500570597990c6011c776cb4eb2aad9a681b2cbff0
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
326c332
<   verify_ec_task_git_revision: 3420832ae0a1ff309cf900fa5e3b854717f2a5b0
---
>   verify_ec_task_git_revision: 6bcf86d3354769ee4807d0c7d735fda234b2ed07
353c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
375c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
400c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
419c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-c320aca@sha256:503ed73a038621118440227971d84630175f1b994f89974ad1e0c8bea649affb
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
443c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-c320aca@sha256:35acab5e8226d4bd4c06a91e3d5dbf59bf287f5ac2bd6494d9cad6c57cf13596
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba 
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
<h3>3: Production changes from 299ff114 to 6fc052da on Wed Nov 20 16:11:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index e0448ea8..30b368fb 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
+  schedule: "0 */4 * * 5-6" # every 4 hours from Friday to Saturday
   jobTemplate:
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 299ff114 to 6fc052da on Wed Nov 20 16:11:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index e0448ea8..30b368fb 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
+  schedule: "0 */4 * * 5-6" # every 4 hours from Friday to Saturday
   jobTemplate:
     spec:
       template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-299ff114/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
1023c1023
<   schedule: 0 */4 * * 5-6
---
>   schedule: 0 */4 * * 5-7 
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
<h3>3: Development changes from 299ff114 to 6fc052da on Wed Nov 20 16:11:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index e0448ea8..30b368fb 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
+  schedule: "0 */4 * * 5-6" # every 4 hours from Friday to Saturday
   jobTemplate:
     spec:
       template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-299ff114/development/components/mintmaker/development/kustomize.out.yaml
907c907
<   schedule: 0 */4 * * 5-6
---
>   schedule: 0 */4 * * 5-7 
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
<h3>4: Production changes from 2b753fe6 to 299ff114 on Wed Nov 20 15:29:23 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 1641463b..e0448ea8 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * *" # every 4 hours
+  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
   jobTemplate:
     spec:
       template:
diff --git a/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p01/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p02/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs 
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
<h3>4: Staging changes from 2b753fe6 to 299ff114 on Wed Nov 20 15:29:23 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 1641463b..e0448ea8 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * *" # every 4 hours
+  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
   jobTemplate:
     spec:
       template:
diff --git a/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p01/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p02/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2b753fe6/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
1023c1023
<   schedule: 0 */4 * * 5-7
---
>   schedule: 0 */4 * * * 
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
<h3>4: Development changes from 2b753fe6 to 299ff114 on Wed Nov 20 15:29:23 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 1641463b..e0448ea8 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * *" # every 4 hours
+  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
   jobTemplate:
     spec:
       template:
diff --git a/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p01/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p02/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2b753fe6/development/components/mintmaker/development/kustomize.out.yaml
907c907
<   schedule: 0 */4 * * 5-7
---
>   schedule: 0 */4 * * * 
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
