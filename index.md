# kustomize changes tracked by commits 
### This file generated at Thu Sep 26 12:05:27 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c64ce545 to 6819aae5 on Thu Sep 26 10:41:40 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index da421997..a244e75c 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 33dd638a..024af953 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=54cded685c2bee18637d863ae76267580f195775
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
+      - verify_ec_task_git_revision=7f092114b9879067f0afa1cee877ce318eeedb39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-c64ce545/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
332c332
<   verify_ec_task_git_revision: 7f092114b9879067f0afa1cee877ce318eeedb39
---
>   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from c64ce545 to 6819aae5 on Thu Sep 26 10:41:40 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index da421997..a244e75c 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 33dd638a..024af953 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=54cded685c2bee18637d863ae76267580f195775
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
+      - verify_ec_task_git_revision=7f092114b9879067f0afa1cee877ce318eeedb39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-c64ce545/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
332c332
<   verify_ec_task_git_revision: 7f092114b9879067f0afa1cee877ce318eeedb39
---
>   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from c64ce545 to 6819aae5 on Thu Sep 26 10:41:40 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index da421997..a244e75c 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 33dd638a..024af953 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=54cded685c2bee18637d863ae76267580f195775
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
+      - verify_ec_task_git_revision=7f092114b9879067f0afa1cee877ce318eeedb39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-c64ce545/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
332c332
<   verify_ec_task_git_revision: 7f092114b9879067f0afa1cee877ce318eeedb39
---
>   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709 
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
<h3>2: Production changes from 3cfbc7ea to c64ce545 on Thu Sep 26 02:23:53 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 3d95abe1..ade79e52 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -32,3 +32,11 @@ rules:
   verbs:
   - get
   - patch
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-3cfbc7ea/production/components/release/production/kustomize.out.yaml
931,938d930
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 3cfbc7ea to c64ce545 on Thu Sep 26 02:23:53 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 3d95abe1..ade79e52 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -32,3 +32,11 @@ rules:
   verbs:
   - get
   - patch
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-3cfbc7ea/staging/components/release/staging/kustomize.out.yaml
931,938d930
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 3cfbc7ea to c64ce545 on Thu Sep 26 02:23:53 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 3d95abe1..ade79e52 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -32,3 +32,11 @@ rules:
   verbs:
   - get
   - patch
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-3cfbc7ea/development/components/release/development/kustomize.out.yaml
1005,1012d1004
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch 
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
<h3>3: Production changes from cbd57b52 to 3cfbc7ea on Wed Sep 25 15:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 2a5b7c54..49fc8a86 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,8 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|le|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun|schedule|check|grpc_service|grpc_code"
+          pipeline|pipelinename|pipelinerun|schedule|check|grpc_service|grpc_code|\
+          lease|lease_holder"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1
@@ -113,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}'
         - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from cbd57b52 to 3cfbc7ea on Wed Sep 25 15:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 2a5b7c54..49fc8a86 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,8 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|le|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun|schedule|check|grpc_service|grpc_code"
+          pipeline|pipelinename|pipelinerun|schedule|check|grpc_service|grpc_code|\
+          lease|lease_holder"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1
@@ -113,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}'
         - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from cbd57b52 to 3cfbc7ea on Wed Sep 25 15:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 2a5b7c54..49fc8a86 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,8 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|le|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun|schedule|check|grpc_service|grpc_code"
+          pipeline|pipelinename|pipelinerun|schedule|check|grpc_service|grpc_code|\
+          lease|lease_holder"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1
@@ -113,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}'
         - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 71061d0a to cbd57b52 on Wed Sep 25 15:22:53 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 1c7a6d42..5dc73bd9 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=65816f098965561665b0521eeb229d282272d242
+- https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 65816f098965561665b0521eeb229d282272d242
+  newTag: 6773b77f353cc019166754ecd4d563035968019c
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index dd68b811..9e2091b5 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=65816f098965561665b0521eeb229d282272d242
+  - https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 65816f098965561665b0521eeb229d282272d242
+  newTag: 6773b77f353cc019166754ecd4d563035968019c
 
 namespace: project-controller 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 71061d0a to cbd57b52 on Wed Sep 25 15:22:53 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 1c7a6d42..5dc73bd9 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=65816f098965561665b0521eeb229d282272d242
+- https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 65816f098965561665b0521eeb229d282272d242
+  newTag: 6773b77f353cc019166754ecd4d563035968019c
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index dd68b811..9e2091b5 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=65816f098965561665b0521eeb229d282272d242
+  - https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 65816f098965561665b0521eeb229d282272d242
+  newTag: 6773b77f353cc019166754ecd4d563035968019c
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-71061d0a/staging/components/project-controller/staging/kustomize.out.yaml
727c727
<         image: quay.io/redhat-appstudio/project-controller:6773b77f353cc019166754ecd4d563035968019c
---
>         image: quay.io/redhat-appstudio/project-controller:65816f098965561665b0521eeb229d282272d242 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 71061d0a to cbd57b52 on Wed Sep 25 15:22:53 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 1c7a6d42..5dc73bd9 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=65816f098965561665b0521eeb229d282272d242
+- https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 65816f098965561665b0521eeb229d282272d242
+  newTag: 6773b77f353cc019166754ecd4d563035968019c
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index dd68b811..9e2091b5 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=65816f098965561665b0521eeb229d282272d242
+  - https://github.com/konflux-ci/project-controller/config/default?ref=6773b77f353cc019166754ecd4d563035968019c
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 65816f098965561665b0521eeb229d282272d242
+  newTag: 6773b77f353cc019166754ecd4d563035968019c
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-71061d0a/development/components/project-controller/development/kustomize.out.yaml
727c727
<         image: quay.io/redhat-appstudio/project-controller:6773b77f353cc019166754ecd4d563035968019c
---
>         image: quay.io/redhat-appstudio/project-controller:65816f098965561665b0521eeb229d282272d242 
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
