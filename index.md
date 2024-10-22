# kustomize changes tracked by commits 
### This file generated at Tue Oct 22 12:05:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a209dc5c to e8e07b35 on Tue Oct 22 10:39:25 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 52ccbae8..8487f5e3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b19190c1..46054ce8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
+      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-a209dc5c/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
332c332
<   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
---
>   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40 
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
<h3>1: Staging changes from a209dc5c to e8e07b35 on Tue Oct 22 10:39:25 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 52ccbae8..8487f5e3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b19190c1..46054ce8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
+      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-a209dc5c/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
332c332
<   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
---
>   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40 
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
<h3>1: Development changes from a209dc5c to e8e07b35 on Tue Oct 22 10:39:25 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 52ccbae8..8487f5e3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b19190c1..46054ce8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
+      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-a209dc5c/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
332c332
<   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
---
>   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40 
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
<h3>2: Production changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
<h3>2: Staging changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
<h3>2: Development changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-75a9be91/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:69ae8399bf3b5961b672a5962a7d806376b7296f
---
>         image: quay.io/konflux-ci/release-service:e091a3b077f7b1743c17869a043b8fd8856c6112 
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
<h3>4: Production changes from 2bb3d6cd to 75a9be91 on Mon Oct 21 16:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 517cf89e..33160e1f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-2bb3d6cd/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
./commit-2bb3d6cd/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
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
<h3>4: Staging changes from 2bb3d6cd to 75a9be91 on Mon Oct 21 16:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 517cf89e..33160e1f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2bb3d6cd/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
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
<h3>4: Development changes from 2bb3d6cd to 75a9be91 on Mon Oct 21 16:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 517cf89e..33160e1f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2bb3d6cd/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
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
