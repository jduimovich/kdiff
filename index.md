# kustomize changes tracked by commits 
### This file generated at Tue Jul  9 12:07:24 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4b574efc to 2e631e1a on Tue Jul 9 11:27:50 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d0c3945a..5a99b17e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1d37e206..6ac28786 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ea0b2b07bf8ebfc69af77500524b200cf4c8d91
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:560f36913ccf39b31acf820bde38749fbad6f247@sha256:f990044ce173db9865dea5a83b8eb9480e1acdb696aa1d0a5e3e69a275b6f7ac
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
+      - verify_ec_task_git_revision=560f36913ccf39b31acf820bde38749fbad6f247
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-4b574efc/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:560f36913ccf39b31acf820bde38749fbad6f247@sha256:f990044ce173db9865dea5a83b8eb9480e1acdb696aa1d0a5e3e69a275b6f7ac
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
388c388
<   verify_ec_task_git_revision: 560f36913ccf39b31acf820bde38749fbad6f247
---
>   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 4b574efc to 2e631e1a on Tue Jul 9 11:27:50 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d0c3945a..5a99b17e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1d37e206..6ac28786 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ea0b2b07bf8ebfc69af77500524b200cf4c8d91
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:560f36913ccf39b31acf820bde38749fbad6f247@sha256:f990044ce173db9865dea5a83b8eb9480e1acdb696aa1d0a5e3e69a275b6f7ac
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
+      - verify_ec_task_git_revision=560f36913ccf39b31acf820bde38749fbad6f247
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-4b574efc/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:560f36913ccf39b31acf820bde38749fbad6f247@sha256:f990044ce173db9865dea5a83b8eb9480e1acdb696aa1d0a5e3e69a275b6f7ac
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
388c388
<   verify_ec_task_git_revision: 560f36913ccf39b31acf820bde38749fbad6f247
---
>   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 4b574efc to 2e631e1a on Tue Jul 9 11:27:50 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d0c3945a..5a99b17e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1d37e206..6ac28786 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ea0b2b07bf8ebfc69af77500524b200cf4c8d91
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:560f36913ccf39b31acf820bde38749fbad6f247@sha256:f990044ce173db9865dea5a83b8eb9480e1acdb696aa1d0a5e3e69a275b6f7ac
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
+      - verify_ec_task_git_revision=560f36913ccf39b31acf820bde38749fbad6f247
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-4b574efc/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:560f36913ccf39b31acf820bde38749fbad6f247@sha256:f990044ce173db9865dea5a83b8eb9480e1acdb696aa1d0a5e3e69a275b6f7ac
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
388c388
<   verify_ec_task_git_revision: 560f36913ccf39b31acf820bde38749fbad6f247
---
>   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0cdcba3@sha256:febe9ada08701fad1cec392dfde8e66cc2408989d1396adb4073af6f646855d1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6 
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
<h3>2: Production changes from 7103b9c6 to 4b574efc on Tue Jul 9 10:27:21 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ea6f3d21..f73a3722 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-7103b9c6/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>         image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>             image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
./commit-7103b9c6/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>         image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>             image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 7103b9c6 to 4b574efc on Tue Jul 9 10:27:21 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ea6f3d21..f73a3722 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 7103b9c6 to 4b574efc on Tue Jul 9 10:27:21 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ea6f3d21..f73a3722 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config 
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
<h3>3: Production changes from 6842688d to 7103b9c6 on Tue Jul 9 09:40:42 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 9407e9cf..ba28aba1 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:83a22dc82f7ae6ce8868ad2594aec8641884505f
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:83a22dc82f7ae6ce8868ad2594aec8641884505f
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-6842688d/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:83a22dc82f7ae6ce8868ad2594aec8641884505f
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:83a22dc82f7ae6ce8868ad2594aec8641884505f
./commit-6842688d/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:83a22dc82f7ae6ce8868ad2594aec8641884505f
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:83a22dc82f7ae6ce8868ad2594aec8641884505f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 6842688d to 7103b9c6 on Tue Jul 9 09:40:42 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 9407e9cf..ba28aba1 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:83a22dc82f7ae6ce8868ad2594aec8641884505f
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:83a22dc82f7ae6ce8868ad2594aec8641884505f
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6842688d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:83a22dc82f7ae6ce8868ad2594aec8641884505f
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:83a22dc82f7ae6ce8868ad2594aec8641884505f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 6842688d to 7103b9c6 on Tue Jul 9 09:40:42 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 9407e9cf..ba28aba1 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:83a22dc82f7ae6ce8868ad2594aec8641884505f
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:83a22dc82f7ae6ce8868ad2594aec8641884505f
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6842688d/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:83a22dc82f7ae6ce8868ad2594aec8641884505f
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9707aeace2d3b18db621c79466f744efd1249650
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:83a22dc82f7ae6ce8868ad2594aec8641884505f 
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
<h3>4: Production changes from 9ee2657e to 6842688d on Tue Jul 9 04:46:20 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 76adcfc7..7c0e5480 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -9,8 +9,10 @@ data:
       "$schema": "https://docs.renovatebot.com/renovate-schema.json",
       "extends": [
         "config:recommended",
-        ":gitSignOff"
+        ":gitSignOff",
+        ":disableDependencyDashboard"
       ],
+      "ignorePresets": [":dependencyDashboard"],
       "onboarding": false,
       "requireConfig": "optional",
       "platformCommit": true, 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-9ee2657e/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"],
./commit-9ee2657e/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"], 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 9ee2657e to 6842688d on Tue Jul 9 04:46:20 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 76adcfc7..7c0e5480 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -9,8 +9,10 @@ data:
       "$schema": "https://docs.renovatebot.com/renovate-schema.json",
       "extends": [
         "config:recommended",
-        ":gitSignOff"
+        ":gitSignOff",
+        ":disableDependencyDashboard"
       ],
+      "ignorePresets": [":dependencyDashboard"],
       "onboarding": false,
       "requireConfig": "optional",
       "platformCommit": true, 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-9ee2657e/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"], 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 9ee2657e to 6842688d on Tue Jul 9 04:46:20 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 76adcfc7..7c0e5480 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -9,8 +9,10 @@ data:
       "$schema": "https://docs.renovatebot.com/renovate-schema.json",
       "extends": [
         "config:recommended",
-        ":gitSignOff"
+        ":gitSignOff",
+        ":disableDependencyDashboard"
       ],
+      "ignorePresets": [":dependencyDashboard"],
       "onboarding": false,
       "requireConfig": "optional",
       "platformCommit": true, 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-9ee2657e/development/components/mintmaker/development/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"], 
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
