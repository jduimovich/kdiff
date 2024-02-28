# kustomize changes tracked by commits 
### This file generated at Wed Feb 28 08:03:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5edd4c0a to 300eff88 on Wed Feb 28 06:13:33 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 414c8884..5f4bbe72 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 14c32f54..39f837e3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=66e45b90362999a5e2e271ec05fe71453dff5426
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2981ac570764e7ad954ab7e97bcaa7c2fed15ceb
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=d8eb39f4d4019208d4635cbc6226d11af01bd8fd
+      - verify_ec_task_git_revision=f1fdfbde74a46100854c3528db0795f7b949eb15
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-5edd4c0a/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
378c378
<   verify_ec_task_git_revision: f1fdfbde74a46100854c3528db0795f7b949eb15
---
>   verify_ec_task_git_revision: d8eb39f4d4019208d4635cbc6226d11af01bd8fd
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9 
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
<h3>1: Staging changes from 5edd4c0a to 300eff88 on Wed Feb 28 06:13:33 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 414c8884..5f4bbe72 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 14c32f54..39f837e3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=66e45b90362999a5e2e271ec05fe71453dff5426
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2981ac570764e7ad954ab7e97bcaa7c2fed15ceb
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=d8eb39f4d4019208d4635cbc6226d11af01bd8fd
+      - verify_ec_task_git_revision=f1fdfbde74a46100854c3528db0795f7b949eb15
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-5edd4c0a/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
378c378
<   verify_ec_task_git_revision: f1fdfbde74a46100854c3528db0795f7b949eb15
---
>   verify_ec_task_git_revision: d8eb39f4d4019208d4635cbc6226d11af01bd8fd
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9 
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
<h3>1: Development changes from 5edd4c0a to 300eff88 on Wed Feb 28 06:13:33 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 414c8884..5f4bbe72 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 14c32f54..39f837e3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=66e45b90362999a5e2e271ec05fe71453dff5426
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2981ac570764e7ad954ab7e97bcaa7c2fed15ceb
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=d8eb39f4d4019208d4635cbc6226d11af01bd8fd
+      - verify_ec_task_git_revision=f1fdfbde74a46100854c3528db0795f7b949eb15
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-5edd4c0a/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
378c378
<   verify_ec_task_git_revision: f1fdfbde74a46100854c3528db0795f7b949eb15
---
>   verify_ec_task_git_revision: d8eb39f4d4019208d4635cbc6226d11af01bd8fd
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9 
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
<h3>2: Production changes from 074ba3e7 to 5edd4c0a on Tue Feb 27 22:36:53 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 83372f19..ed8b532d 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
+    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 074ba3e7 to 5edd4c0a on Tue Feb 27 22:36:53 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 83372f19..ed8b532d 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
+    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (41 lines)</summary>  

``` 
./commit-074ba3e7/staging/components/release/staging/kustomize.out.yaml
111a112,117
>                   timeout:
>                     default: "0"
>                     description: "Timeout is a value to use to override the tekton
>                       default Pipelinerun timeout \n This field is DEPRECATED and
>                       will be replaced by Timeouts in a future change."
>                     type: string
764,782d769
<               defaultTimeouts:
<                 description: DefaultTimeouts contain the default Tekton timeouts to
<                   be used in case they are not specified in the ReleasePlanAdmission
<                   resource.
<                 properties:
<                   finally:
<                     description: Finally sets the maximum allowed duration of this
<                       pipeline's finally
<                     type: string
<                   pipeline:
<                     description: Pipeline sets the maximum allowed duration for execution
<                       of the entire pipeline. The sum of individual timeouts for tasks
<                       and finally must not exceed this value.
<                     type: string
<                   tasks:
<                     description: Tasks sets the maximum allowed duration of this pipeline's
<                       tasks
<                     type: string
<                 type: object
1667d1653
<   DEFAULT_RELEASE_WORKSPACE_SIZE: ""
1752,1757d1737
<         - name: DEFAULT_RELEASE_WORKSPACE_SIZE
<           valueFrom:
<             configMapKeyRef:
<               key: DEFAULT_RELEASE_WORKSPACE_SIZE
<               name: release-service-manager-properties
<               optional: true
1762c1742
<         image: quay.io/redhat-appstudio/release-service:4a125b85f681fbecde7113e3a5765be8388ba459
---
>         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86 
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
<h3>2: Development changes from 074ba3e7 to 5edd4c0a on Tue Feb 27 22:36:53 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 83372f19..ed8b532d 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
+    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from f22b6a6c to 074ba3e7 on Tue Feb 27 20:05:38 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6a141cdc..71dcfd1a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=4a125b85f681fbecde7113e3a5765be8388ba459
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index cd26b792..f10c02f7 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from f22b6a6c to 074ba3e7 on Tue Feb 27 20:05:38 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6a141cdc..71dcfd1a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=4a125b85f681fbecde7113e3a5765be8388ba459
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index cd26b792..f10c02f7 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
 
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
<h3>3: Development changes from f22b6a6c to 074ba3e7 on Tue Feb 27 20:05:38 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6a141cdc..71dcfd1a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=4a125b85f681fbecde7113e3a5765be8388ba459
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index cd26b792..f10c02f7 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: b8e29a427e787bfae1125dd9c40cf54c3a7e4755
+    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (41 lines)</summary>  

``` 
./commit-f22b6a6c/development/components/release/development/kustomize.out.yaml
111a112,117
>                   timeout:
>                     default: "0"
>                     description: "Timeout is a value to use to override the tekton
>                       default Pipelinerun timeout \n This field is DEPRECATED and
>                       will be replaced by Timeouts in a future change."
>                     type: string
764,782d769
<               defaultTimeouts:
<                 description: DefaultTimeouts contain the default Tekton timeouts to
<                   be used in case they are not specified in the ReleasePlanAdmission
<                   resource.
<                 properties:
<                   finally:
<                     description: Finally sets the maximum allowed duration of this
<                       pipeline's finally
<                     type: string
<                   pipeline:
<                     description: Pipeline sets the maximum allowed duration for execution
<                       of the entire pipeline. The sum of individual timeouts for tasks
<                       and finally must not exceed this value.
<                     type: string
<                   tasks:
<                     description: Tasks sets the maximum allowed duration of this pipeline's
<                       tasks
<                     type: string
<                 type: object
1667d1653
<   DEFAULT_RELEASE_WORKSPACE_SIZE: ""
1752,1757d1737
<         - name: DEFAULT_RELEASE_WORKSPACE_SIZE
<           valueFrom:
<             configMapKeyRef:
<               key: DEFAULT_RELEASE_WORKSPACE_SIZE
<               name: release-service-manager-properties
<               optional: true
1762c1742
<         image: quay.io/redhat-appstudio/release-service:4a125b85f681fbecde7113e3a5765be8388ba459
---
>         image: quay.io/redhat-appstudio/release-service:b8e29a427e787bfae1125dd9c40cf54c3a7e4755 
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
<h3>4: Production changes from d22b5867 to f22b6a6c on Tue Feb 27 17:48:11 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0e887017..42a40b44 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=f74e7617a84c10459817523d5e857d2885f7783f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 31474b48..7cd06d73 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=f74e7617a84c10459817523d5e857d2885f7783f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 374aa9d6..4943765e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 754accdc..2ff5dab0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1975,7 +1975,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
<h3>4: Staging changes from d22b5867 to f22b6a6c on Tue Feb 27 17:48:11 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0e887017..42a40b44 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=f74e7617a84c10459817523d5e857d2885f7783f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 31474b48..7cd06d73 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=f74e7617a84c10459817523d5e857d2885f7783f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 374aa9d6..4943765e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 754accdc..2ff5dab0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1975,7 +1975,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d22b5867/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1978c1978
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7 
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
<h3>4: Development changes from d22b5867 to f22b6a6c on Tue Feb 27 17:48:11 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0e887017..42a40b44 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=f74e7617a84c10459817523d5e857d2885f7783f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 31474b48..7cd06d73 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=f74e7617a84c10459817523d5e857d2885f7783f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 374aa9d6..4943765e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 754accdc..2ff5dab0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1975,7 +1975,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d22b5867/development/components/pipeline-service/development/kustomize.out.yaml
2082c2082
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7 
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
