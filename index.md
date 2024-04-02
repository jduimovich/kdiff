# kustomize changes tracked by commits 
### This file generated at Tue Apr  2 20:03:45 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4ae52595 to 12f5d9c2 on Tue Apr 2 16:32:49 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 25976cbc..354e6924 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 30c0827c..57bfd5f8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6a3f89ca049b00166d4ff21ac11859a951ff2329
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
+      - verify_ec_task_git_revision=5682f93d16166df81248343b21c5d843522acaf2
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-4ae52595/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
378c378
<   verify_ec_task_git_revision: 5682f93d16166df81248343b21c5d843522acaf2
---
>   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 4ae52595 to 12f5d9c2 on Tue Apr 2 16:32:49 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 25976cbc..354e6924 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 30c0827c..57bfd5f8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6a3f89ca049b00166d4ff21ac11859a951ff2329
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
+      - verify_ec_task_git_revision=5682f93d16166df81248343b21c5d843522acaf2
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-4ae52595/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
378c378
<   verify_ec_task_git_revision: 5682f93d16166df81248343b21c5d843522acaf2
---
>   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 4ae52595 to 12f5d9c2 on Tue Apr 2 16:32:49 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 25976cbc..354e6924 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 30c0827c..57bfd5f8 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6a3f89ca049b00166d4ff21ac11859a951ff2329
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
+      - verify_ec_task_git_revision=5682f93d16166df81248343b21c5d843522acaf2
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-4ae52595/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5682f93d16166df81248343b21c5d843522acaf2@sha256:c3f1a210299075e4c719ea503f10343dc7ac28b08c67e1c25ee3fefd8123d27e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
378c378
<   verify_ec_task_git_revision: 5682f93d16166df81248343b21c5d843522acaf2
---
>   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-13034fc@sha256:965c2ef01e2a13cb9774acff438d8b76b5b440be57f0a6ebddb64fe7aa66b8d5
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-13034fc@sha256:cd9e22d106cb740e3355f35fb86f3baf63cc8339f7361ee04045cf4795d02a5e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956 
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
<h3>2: Production changes from 1037cb45 to 4ae52595 on Tue Apr 2 15:43:19 2024 </h3>  
 
<details> 
<summary>Git Diff (487 lines)</summary>  

``` 
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index 8d2b1560..6afd5433 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
-      event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
+      event == "push" && target_branch == "main" && "components/image-controller/staging/base/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
 spec:
@@ -19,9 +19,9 @@ spec:
             value: image-controller
           - name: SCRIPT
             value: |
-              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/kustomization.yaml -m1)
-              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/kustomization.yaml -m1)
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/base/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/base/kustomization.yaml -m1)
               echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
-              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/base/kustomization.yaml
         taskRef:
           name: promote-component
diff --git a/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml b/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
index e6c94450..aac75e1a 100644
--- a/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/image-controller
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prd-rh01
+                  values.clusterDir: stone-prd-rh01
   template:
     metadata:
       name: image-controller-{{nameNormalized}}
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
similarity index 93%
rename from components/image-controller/production/kustomization.yaml
rename to components/image-controller/production/base/kustomization.yaml
index 38fba437..45aef0a2 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
diff --git a/components/image-controller/production/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/production/manager_resources_patch.yaml
rename to components/image-controller/production/base/manager_resources_patch.yaml
diff --git a/components/image-controller/production/quaytoken.yaml b/components/image-controller/production/base/quaytoken.yaml
similarity index 100%
rename from components/image-controller/production/quaytoken.yaml
rename to components/image-controller/production/base/quaytoken.yaml
diff --git a/components/image-controller/production/stone-prd-rh01/kustomization.yaml b/components/image-controller/production/stone-prd-rh01/kustomization.yaml
new file mode 100644
index 00000000..441e9e42
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ./resources
diff --git a/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py b/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py
new file mode 100644
index 00000000..9edb43cf
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py
@@ -0,0 +1,197 @@
+import argparse
+import itertools
+import json
+import logging
+import os
+import re
+import time
+
+from collections.abc import Iterator
+from http.client import HTTPResponse
+from typing import Any, Dict, List
+from urllib.error import HTTPError
+from urllib.parse import urlencode
+from urllib.request import Request, urlopen
+from datetime import datetime
+
+logging.basicConfig(
+    format="%(asctime)s - %(levelname)s - %(message)s", level=logging.INFO
+)
+LOGGER = logging.getLogger(__name__)
+QUAY_API_URL = "https://quay.io/api/v1"
+DAY_OLD_TS = int(datetime.now().timestamp()) - (60 * 60 * 24)
+KEEP_MAX = 3
+
+ImageRepo = Dict[str, Any]
+
+
+def get_quay_tags(quay_token: str, namespace: str, name: str) -> ImageRepo:
+    next_page = None
+    resp: HTTPResponse
+
+    all_tags = []
+    while True:
+        query_args = {"limit": 100, "onlyActiveTags": True}
+        if next_page is not None:
+            query_args["page"] = next_page
+
+        api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/?{urlencode(query_args)}"
+        request = Request(api_url, headers={
+            "Authorization": f"Bearer {quay_token}",
+        })
+
+        with urlopen(request) as resp:
+            if resp.status != 200:
+                raise RuntimeError(resp.reason)
+            json_data = json.loads(resp.read())
+
+        tags = json_data.get("tags", [])
+        all_tags.extend(tags)
+
+        if not tags:
+            LOGGER.debug("No tags found.")
+            break
+
+        page = json_data.get("page", None)
+        additional = json_data.get("has_additional", False)
+
+        if additional:
+            next_page = page + 1
+        else:
+            break
+
+    return all_tags
+
+
+def quay_test_token(quay_token: str, namespace: str) -> None:
+    api_url = f"{QUAY_API_URL}/organization/{namespace}/applications"
+    request = Request(api_url, headers={
+        "Authorization": f"Bearer {quay_token}",
+    })
+    try:
+        urlopen(request)
+    except HTTPError as ex:
+        # if status is 401 that means that token is wrong
+        if ex.status == 401:
+            raise RuntimeError("Wrong quay token")
+
+
+def delete_image_tag(quay_token: str, namespace: str, name: str, tag: str) -> None:
+    api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/{tag}"
+    request = Request(api_url, method="DELETE", headers={
+        "Authorization": f"Bearer {quay_token}",
+    })
+    resp: HTTPResponse
+
+    while True:
+        try:
+            with urlopen(request) as resp:
+                if resp.status != 200 and resp.status != 204 and resp.status != 404:
+                    raise RuntimeError(resp.reason)
+                else:
+                    break
+        except HTTPError as ex:
+            LOGGER.info("HTTPError exception: %s", ex)
+
+
+def remove_leftover_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str,
+                         dry_run: bool = False) -> None:
+    tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src|\.sig)$")
+
+    # remove att/sbom/src/sig for which is missing manifest digest
+    image_digests = [image["manifest_digest"] for image in tags]
+
+    for tag in tags:
+        if (match := tag_regex.match(tag["name"])) is not None:
+            if f"sha256:{match.group(1)}" not in image_digests:
+                if dry_run:
+                    LOGGER.info("Leftover image %s from %s/%s should be removed", tag["name"], namespace, name)
+                else:
+                    LOGGER.info("Removing leftover image %s from %s/%s", tag["name"], namespace, name)
+                    delete_image_tag(quay_token, namespace, name, tag["name"])
+
+
+def remove_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str,
+                days_old: int, keep_max: int, dry_run: bool = False) -> None:
+    unique_names = {}
+    removed_digests = []
+
+    # first remove only named tags
+    for tag in tags:
+        # skip att/sbom/src/sig
+        if tag["name"].startswith("sha256-") or "-" not in tag["name"]:
+            continue
+
+        tag_name, _ = tag["name"].rsplit('-', 1)
+
+        count = unique_names.get(tag_name, 0)
+
+        # keep at least first x per tag name
+        if count < keep_max:
+            unique_names[tag_name] = count + 1
+
+        # remove older than x
+        elif tag["start_ts"] < days_old:
+            if dry_run:
+                LOGGER.info("Image %s from %s/%s should be removed", tag["name"], namespace, name)
+                removed_digests.append(tag["manifest_digest"])
+            else:
+                LOGGER.info("Removing image %s from %s/%s", tag["name"], namespace, name)
+                delete_image_tag(quay_token, namespace, name, tag["name"])
+                removed_digests.append(tag["manifest_digest"])
+
+    tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src|\.sig)$")
+    # when named tags are removed, remove obsolete sbom/att/src
+    for tag in tags:
+        if (match := tag_regex.match(tag["name"])) is not None:
+            if f"sha256:{match.group(1)}" in removed_digests:
+                if dry_run:
+                    LOGGER.info("Image %s from %s/%s should be removed", tag["name"], namespace, name)
+                else:
+                    LOGGER.info("Removing image %s from %s/%s", tag["name"], namespace, name)
+                    delete_image_tag(quay_token, namespace, name, tag["name"])
+
+
+def process_repository(quay_token: str, namespace: str, repo_name: str, days_old: int,
+                       keep_max: int, dry_run: bool = False) -> None:
+    LOGGER.info("Processing repository: %s/%s", namespace, repo_name)
+
+    quay_test_token(quay_token, namespace)
+
+    all_tags = get_quay_tags(quay_token, namespace, repo_name)
+    LOGGER.info("Tag count in repository: %s", len(all_tags))
+
+    if all_tags:
+        remove_tags(all_tags, quay_token, namespace, repo_name, days_old, keep_max, dry_run=dry_run)
+
+    all_tags = get_quay_tags(quay_token, namespace, repo_name)
+    LOGGER.info("Tag count in repository: %s", len(all_tags))
+
+    if all_tags:
+        remove_leftover_tags(all_tags, quay_token, namespace, repo_name, dry_run=dry_run)
+
+
+def main():
+    token = os.getenv("QUAY_TOKEN")
+    if not token:
+        raise ValueError("The token required for access to Quay API is missing!")
+
+    args = parse_args()
+    process_repository(token, args.namespace, args.repo_name, days_old=args.old_days,
+                       keep_max=args.keep_max, dry_run=args.dry_run)
+
+
+def parse_args():
+    parser = argparse.ArgumentParser()
+    parser.add_argument("--namespace", required=True)
+    parser.add_argument("--repo-name", required=True)
+    parser.add_argument("--dry-run", action="store_true")
+    parser.add_argument("--old-days", type=int, default=DAY_OLD_TS)
+    parser.add_argument("--keep-max", type=int, default=KEEP_MAX)
+
+    args = parser.parse_args()
+    return args
+
+
+if __name__ == "__main__":
+    main()
diff --git a/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml b/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml
new file mode 100644
index 00000000..72dd7f0c
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- redhat-appstudio-pr-token.yaml
+- redhat-appstudio-tekton-catalog-pr-token.yaml
+- redhat-appstudio-pr-cronjob.yaml
+- redhat-appstudio-tekton-catalog-pr-cronjob.yaml
+configMapGenerator:
+- name: single-image-pruner-configmap
+  files:
+  - image_pruner/prune_images.py
+namespace: image-controller
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml
new file mode 100644
index 00000000..6a44e8f1
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml
@@ -0,0 +1,47 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: redhat-appstudio-pr-cronjob
+spec:
+  schedule: "0 0 * * *"
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+          - name: redhat-appstudio-pr-pruner
+            image: registry.redhat.io/rhel8/python-39:1-120.1684740828
+            env:
+              - name: QUAY_TOKEN
+                valueFrom:
+                  secretKeyRef:
+                    name: redhat-appstudio-pr-token
+                    key: quaytoken
+            imagePullPolicy: IfNotPresent
+            command:
+              - /bin/bash
+              - '-c'
+              - python /image-pruner/prune_images.py --namespace=redhat-appstudio --repo-name=pull-request-builds
+            volumeMounts:
+              - name: redhat-appstudio-pr-volume
+                mountPath: /image-pruner
+            resources:
+              limits:
+                cpu: 500m
+                memory: 512Mi
+              requests:
+                cpu: 150m
+                memory: 128Mi
+            securityContext:
+              readOnlyRootFilesystem: true
+          restartPolicy: OnFailure
+          securityContext:
+            runAsNonRoot: true
+          volumes:
+            - name: redhat-appstudio-pr-volume
+              configMap:
+                name: single-image-pruner-configmap
+            - name: redhat-appstudio-pr-token
+              secret:
+                secretName: redhat-appstudio-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml
new file mode 100644
index 00000000..ea74c682
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: redhat-appstudio-pr-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/redhat-appstudio-pr-token
+  refreshInterval: 20h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: redhat-appstudio-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml
new file mode 100644
index 00000000..b1d888b7
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml
@@ -0,0 +1,47 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: redhat-appstudio-tekton-catalog-pr-cronjob
+spec:
+  schedule: "0 1 * * *"
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+          - name: redhat-appstudio-tekton-catalog-pr-pruner
+            image: registry.redhat.io/rhel8/python-39:1-120.1684740828
+            env:
+              - name: QUAY_TOKEN
+                valueFrom:
+                  secretKeyRef:
+                    name: redhat-appstudio-tekton-catalog-pr-token
+                    key: quaytoken
+            imagePullPolicy: IfNotPresent
+            command:
+              - /bin/bash
+              - '-c'
+              - python /image-pruner/prune_images.py --namespace=redhat-appstudio-tekton-catalog --repo-name=pull-request-builds
+            volumeMounts:
+              - name: redhat-appstudio-tekton-catalog-pr-volume
+                mountPath: /image-pruner
+            resources:
+              limits:
+                cpu: 500m
+                memory: 512Mi
+              requests:
+                cpu: 150m
+                memory: 128Mi
+            securityContext:
+              readOnlyRootFilesystem: true
+          restartPolicy: OnFailure
+          securityContext:
+            runAsNonRoot: true
+          volumes:
+            - name: redhat-appstudio-tekton-catalog-pr-volume
+              configMap:
+                name: single-image-pruner-configmap
+            - name: redhat-appstudio-tekton-catalog-pr-token
+              secret:
+                secretName: redhat-appstudio-tekton-catalog-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml
new file mode 100644
index 00000000..4a75be79
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: redhat-appstudio-tekton-catalog-pr-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/redhat-appstudio-tekton-catalog-pr-token
+  refreshInterval: 20h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: redhat-appstudio-tekton-catalog-pr-token
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
similarity index 82%
rename from components/image-controller/staging/kustomization.yaml
rename to components/image-controller/staging/base/kustomization.yaml
index db906be6..5c039c43 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
@@ -13,4 +13,4 @@ images:
 namespace: image-controller
 
 patches:
-  - path: ./manager_resources_patch.yaml
\ No newline at end of file
+  - path: ./manager_resources_patch.yaml
diff --git a/components/image-controller/staging/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/staging/manager_resources_patch.yaml
rename to components/image-controller/staging/base/manager_resources_patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2 lines)</summary>  

``` 
./commit-1037cb45/production/components/image-controller/production: kustomize.out.yaml
./commit-4ae52595/production/components/image-controller/production: stone-prd-rh01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 1037cb45 to 4ae52595 on Tue Apr 2 15:43:19 2024 </h3>  
 
<details> 
<summary>Git Diff (487 lines)</summary>  

``` 
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index 8d2b1560..6afd5433 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
-      event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
+      event == "push" && target_branch == "main" && "components/image-controller/staging/base/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
 spec:
@@ -19,9 +19,9 @@ spec:
             value: image-controller
           - name: SCRIPT
             value: |
-              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/kustomization.yaml -m1)
-              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/kustomization.yaml -m1)
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/base/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/base/kustomization.yaml -m1)
               echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
-              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/base/kustomization.yaml
         taskRef:
           name: promote-component
diff --git a/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml b/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
index e6c94450..aac75e1a 100644
--- a/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/image-controller
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prd-rh01
+                  values.clusterDir: stone-prd-rh01
   template:
     metadata:
       name: image-controller-{{nameNormalized}}
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
similarity index 93%
rename from components/image-controller/production/kustomization.yaml
rename to components/image-controller/production/base/kustomization.yaml
index 38fba437..45aef0a2 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
diff --git a/components/image-controller/production/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/production/manager_resources_patch.yaml
rename to components/image-controller/production/base/manager_resources_patch.yaml
diff --git a/components/image-controller/production/quaytoken.yaml b/components/image-controller/production/base/quaytoken.yaml
similarity index 100%
rename from components/image-controller/production/quaytoken.yaml
rename to components/image-controller/production/base/quaytoken.yaml
diff --git a/components/image-controller/production/stone-prd-rh01/kustomization.yaml b/components/image-controller/production/stone-prd-rh01/kustomization.yaml
new file mode 100644
index 00000000..441e9e42
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ./resources
diff --git a/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py b/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py
new file mode 100644
index 00000000..9edb43cf
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py
@@ -0,0 +1,197 @@
+import argparse
+import itertools
+import json
+import logging
+import os
+import re
+import time
+
+from collections.abc import Iterator
+from http.client import HTTPResponse
+from typing import Any, Dict, List
+from urllib.error import HTTPError
+from urllib.parse import urlencode
+from urllib.request import Request, urlopen
+from datetime import datetime
+
+logging.basicConfig(
+    format="%(asctime)s - %(levelname)s - %(message)s", level=logging.INFO
+)
+LOGGER = logging.getLogger(__name__)
+QUAY_API_URL = "https://quay.io/api/v1"
+DAY_OLD_TS = int(datetime.now().timestamp()) - (60 * 60 * 24)
+KEEP_MAX = 3
+
+ImageRepo = Dict[str, Any]
+
+
+def get_quay_tags(quay_token: str, namespace: str, name: str) -> ImageRepo:
+    next_page = None
+    resp: HTTPResponse
+
+    all_tags = []
+    while True:
+        query_args = {"limit": 100, "onlyActiveTags": True}
+        if next_page is not None:
+            query_args["page"] = next_page
+
+        api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/?{urlencode(query_args)}"
+        request = Request(api_url, headers={
+            "Authorization": f"Bearer {quay_token}",
+        })
+
+        with urlopen(request) as resp:
+            if resp.status != 200:
+                raise RuntimeError(resp.reason)
+            json_data = json.loads(resp.read())
+
+        tags = json_data.get("tags", [])
+        all_tags.extend(tags)
+
+        if not tags:
+            LOGGER.debug("No tags found.")
+            break
+
+        page = json_data.get("page", None)
+        additional = json_data.get("has_additional", False)
+
+        if additional:
+            next_page = page + 1
+        else:
+            break
+
+    return all_tags
+
+
+def quay_test_token(quay_token: str, namespace: str) -> None:
+    api_url = f"{QUAY_API_URL}/organization/{namespace}/applications"
+    request = Request(api_url, headers={
+        "Authorization": f"Bearer {quay_token}",
+    })
+    try:
+        urlopen(request)
+    except HTTPError as ex:
+        # if status is 401 that means that token is wrong
+        if ex.status == 401:
+            raise RuntimeError("Wrong quay token")
+
+
+def delete_image_tag(quay_token: str, namespace: str, name: str, tag: str) -> None:
+    api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/{tag}"
+    request = Request(api_url, method="DELETE", headers={
+        "Authorization": f"Bearer {quay_token}",
+    })
+    resp: HTTPResponse
+
+    while True:
+        try:
+            with urlopen(request) as resp:
+                if resp.status != 200 and resp.status != 204 and resp.status != 404:
+                    raise RuntimeError(resp.reason)
+                else:
+                    break
+        except HTTPError as ex:
+            LOGGER.info("HTTPError exception: %s", ex)
+
+
+def remove_leftover_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str,
+                         dry_run: bool = False) -> None:
+    tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src|\.sig)$")
+
+    # remove att/sbom/src/sig for which is missing manifest digest
+    image_digests = [image["manifest_digest"] for image in tags]
+
+    for tag in tags:
+        if (match := tag_regex.match(tag["name"])) is not None:
+            if f"sha256:{match.group(1)}" not in image_digests:
+                if dry_run:
+                    LOGGER.info("Leftover image %s from %s/%s should be removed", tag["name"], namespace, name)
+                else:
+                    LOGGER.info("Removing leftover image %s from %s/%s", tag["name"], namespace, name)
+                    delete_image_tag(quay_token, namespace, name, tag["name"])
+
+
+def remove_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str,
+                days_old: int, keep_max: int, dry_run: bool = False) -> None:
+    unique_names = {}
+    removed_digests = []
+
+    # first remove only named tags
+    for tag in tags:
+        # skip att/sbom/src/sig
+        if tag["name"].startswith("sha256-") or "-" not in tag["name"]:
+            continue
+
+        tag_name, _ = tag["name"].rsplit('-', 1)
+
+        count = unique_names.get(tag_name, 0)
+
+        # keep at least first x per tag name
+        if count < keep_max:
+            unique_names[tag_name] = count + 1
+
+        # remove older than x
+        elif tag["start_ts"] < days_old:
+            if dry_run:
+                LOGGER.info("Image %s from %s/%s should be removed", tag["name"], namespace, name)
+                removed_digests.append(tag["manifest_digest"])
+            else:
+                LOGGER.info("Removing image %s from %s/%s", tag["name"], namespace, name)
+                delete_image_tag(quay_token, namespace, name, tag["name"])
+                removed_digests.append(tag["manifest_digest"])
+
+    tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src|\.sig)$")
+    # when named tags are removed, remove obsolete sbom/att/src
+    for tag in tags:
+        if (match := tag_regex.match(tag["name"])) is not None:
+            if f"sha256:{match.group(1)}" in removed_digests:
+                if dry_run:
+                    LOGGER.info("Image %s from %s/%s should be removed", tag["name"], namespace, name)
+                else:
+                    LOGGER.info("Removing image %s from %s/%s", tag["name"], namespace, name)
+                    delete_image_tag(quay_token, namespace, name, tag["name"])
+
+
+def process_repository(quay_token: str, namespace: str, repo_name: str, days_old: int,
+                       keep_max: int, dry_run: bool = False) -> None:
+    LOGGER.info("Processing repository: %s/%s", namespace, repo_name)
+
+    quay_test_token(quay_token, namespace)
+
+    all_tags = get_quay_tags(quay_token, namespace, repo_name)
+    LOGGER.info("Tag count in repository: %s", len(all_tags))
+
+    if all_tags:
+        remove_tags(all_tags, quay_token, namespace, repo_name, days_old, keep_max, dry_run=dry_run)
+
+    all_tags = get_quay_tags(quay_token, namespace, repo_name)
+    LOGGER.info("Tag count in repository: %s", len(all_tags))
+
+    if all_tags:
+        remove_leftover_tags(all_tags, quay_token, namespace, repo_name, dry_run=dry_run)
+
+
+def main():
+    token = os.getenv("QUAY_TOKEN")
+    if not token:
+        raise ValueError("The token required for access to Quay API is missing!")
+
+    args = parse_args()
+    process_repository(token, args.namespace, args.repo_name, days_old=args.old_days,
+                       keep_max=args.keep_max, dry_run=args.dry_run)
+
+
+def parse_args():
+    parser = argparse.ArgumentParser()
+    parser.add_argument("--namespace", required=True)
+    parser.add_argument("--repo-name", required=True)
+    parser.add_argument("--dry-run", action="store_true")
+    parser.add_argument("--old-days", type=int, default=DAY_OLD_TS)
+    parser.add_argument("--keep-max", type=int, default=KEEP_MAX)
+
+    args = parser.parse_args()
+    return args
+
+
+if __name__ == "__main__":
+    main()
diff --git a/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml b/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml
new file mode 100644
index 00000000..72dd7f0c
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- redhat-appstudio-pr-token.yaml
+- redhat-appstudio-tekton-catalog-pr-token.yaml
+- redhat-appstudio-pr-cronjob.yaml
+- redhat-appstudio-tekton-catalog-pr-cronjob.yaml
+configMapGenerator:
+- name: single-image-pruner-configmap
+  files:
+  - image_pruner/prune_images.py
+namespace: image-controller
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml
new file mode 100644
index 00000000..6a44e8f1
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml
@@ -0,0 +1,47 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: redhat-appstudio-pr-cronjob
+spec:
+  schedule: "0 0 * * *"
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+          - name: redhat-appstudio-pr-pruner
+            image: registry.redhat.io/rhel8/python-39:1-120.1684740828
+            env:
+              - name: QUAY_TOKEN
+                valueFrom:
+                  secretKeyRef:
+                    name: redhat-appstudio-pr-token
+                    key: quaytoken
+            imagePullPolicy: IfNotPresent
+            command:
+              - /bin/bash
+              - '-c'
+              - python /image-pruner/prune_images.py --namespace=redhat-appstudio --repo-name=pull-request-builds
+            volumeMounts:
+              - name: redhat-appstudio-pr-volume
+                mountPath: /image-pruner
+            resources:
+              limits:
+                cpu: 500m
+                memory: 512Mi
+              requests:
+                cpu: 150m
+                memory: 128Mi
+            securityContext:
+              readOnlyRootFilesystem: true
+          restartPolicy: OnFailure
+          securityContext:
+            runAsNonRoot: true
+          volumes:
+            - name: redhat-appstudio-pr-volume
+              configMap:
+                name: single-image-pruner-configmap
+            - name: redhat-appstudio-pr-token
+              secret:
+                secretName: redhat-appstudio-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml
new file mode 100644
index 00000000..ea74c682
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: redhat-appstudio-pr-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/redhat-appstudio-pr-token
+  refreshInterval: 20h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: redhat-appstudio-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml
new file mode 100644
index 00000000..b1d888b7
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml
@@ -0,0 +1,47 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: redhat-appstudio-tekton-catalog-pr-cronjob
+spec:
+  schedule: "0 1 * * *"
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+          - name: redhat-appstudio-tekton-catalog-pr-pruner
+            image: registry.redhat.io/rhel8/python-39:1-120.1684740828
+            env:
+              - name: QUAY_TOKEN
+                valueFrom:
+                  secretKeyRef:
+                    name: redhat-appstudio-tekton-catalog-pr-token
+                    key: quaytoken
+            imagePullPolicy: IfNotPresent
+            command:
+              - /bin/bash
+              - '-c'
+              - python /image-pruner/prune_images.py --namespace=redhat-appstudio-tekton-catalog --repo-name=pull-request-builds
+            volumeMounts:
+              - name: redhat-appstudio-tekton-catalog-pr-volume
+                mountPath: /image-pruner
+            resources:
+              limits:
+                cpu: 500m
+                memory: 512Mi
+              requests:
+                cpu: 150m
+                memory: 128Mi
+            securityContext:
+              readOnlyRootFilesystem: true
+          restartPolicy: OnFailure
+          securityContext:
+            runAsNonRoot: true
+          volumes:
+            - name: redhat-appstudio-tekton-catalog-pr-volume
+              configMap:
+                name: single-image-pruner-configmap
+            - name: redhat-appstudio-tekton-catalog-pr-token
+              secret:
+                secretName: redhat-appstudio-tekton-catalog-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml
new file mode 100644
index 00000000..4a75be79
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: redhat-appstudio-tekton-catalog-pr-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/redhat-appstudio-tekton-catalog-pr-token
+  refreshInterval: 20h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: redhat-appstudio-tekton-catalog-pr-token
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
similarity index 82%
rename from components/image-controller/staging/kustomization.yaml
rename to components/image-controller/staging/base/kustomization.yaml
index db906be6..5c039c43 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
@@ -13,4 +13,4 @@ images:
 namespace: image-controller
 
 patches:
-  - path: ./manager_resources_patch.yaml
\ No newline at end of file
+  - path: ./manager_resources_patch.yaml
diff --git a/components/image-controller/staging/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/staging/manager_resources_patch.yaml
rename to components/image-controller/staging/base/manager_resources_patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1037cb45/staging/components: image-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 1037cb45 to 4ae52595 on Tue Apr 2 15:43:19 2024 </h3>  
 
<details> 
<summary>Git Diff (487 lines)</summary>  

``` 
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index 8d2b1560..6afd5433 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: tekton-ci
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
-      event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
+      event == "push" && target_branch == "main" && "components/image-controller/staging/base/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
 spec:
@@ -19,9 +19,9 @@ spec:
             value: image-controller
           - name: SCRIPT
             value: |
-              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/kustomization.yaml -m1)
-              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/kustomization.yaml -m1)
+              STAGE_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/staging/base/kustomization.yaml -m1)
+              OLD_PROD_SHA=$(grep -oE '[0-9a-f]{40}' components/image-controller/production/base/kustomization.yaml -m1)
               echo "Changing prod sha from ${OLD_PROD_SHA} to ${STAGE_SHA}"
-              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
+              sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/base/kustomization.yaml
         taskRef:
           name: promote-component
diff --git a/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml b/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
index e6c94450..aac75e1a 100644
--- a/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/image-controller/image-controller.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/image-controller
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prd-rh01
+                  values.clusterDir: stone-prd-rh01
   template:
     metadata:
       name: image-controller-{{nameNormalized}}
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
similarity index 93%
rename from components/image-controller/production/kustomization.yaml
rename to components/image-controller/production/base/kustomization.yaml
index 38fba437..45aef0a2 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
diff --git a/components/image-controller/production/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/production/manager_resources_patch.yaml
rename to components/image-controller/production/base/manager_resources_patch.yaml
diff --git a/components/image-controller/production/quaytoken.yaml b/components/image-controller/production/base/quaytoken.yaml
similarity index 100%
rename from components/image-controller/production/quaytoken.yaml
rename to components/image-controller/production/base/quaytoken.yaml
diff --git a/components/image-controller/production/stone-prd-rh01/kustomization.yaml b/components/image-controller/production/stone-prd-rh01/kustomization.yaml
new file mode 100644
index 00000000..441e9e42
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ./resources
diff --git a/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py b/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py
new file mode 100644
index 00000000..9edb43cf
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/image_pruner/prune_images.py
@@ -0,0 +1,197 @@
+import argparse
+import itertools
+import json
+import logging
+import os
+import re
+import time
+
+from collections.abc import Iterator
+from http.client import HTTPResponse
+from typing import Any, Dict, List
+from urllib.error import HTTPError
+from urllib.parse import urlencode
+from urllib.request import Request, urlopen
+from datetime import datetime
+
+logging.basicConfig(
+    format="%(asctime)s - %(levelname)s - %(message)s", level=logging.INFO
+)
+LOGGER = logging.getLogger(__name__)
+QUAY_API_URL = "https://quay.io/api/v1"
+DAY_OLD_TS = int(datetime.now().timestamp()) - (60 * 60 * 24)
+KEEP_MAX = 3
+
+ImageRepo = Dict[str, Any]
+
+
+def get_quay_tags(quay_token: str, namespace: str, name: str) -> ImageRepo:
+    next_page = None
+    resp: HTTPResponse
+
+    all_tags = []
+    while True:
+        query_args = {"limit": 100, "onlyActiveTags": True}
+        if next_page is not None:
+            query_args["page"] = next_page
+
+        api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/?{urlencode(query_args)}"
+        request = Request(api_url, headers={
+            "Authorization": f"Bearer {quay_token}",
+        })
+
+        with urlopen(request) as resp:
+            if resp.status != 200:
+                raise RuntimeError(resp.reason)
+            json_data = json.loads(resp.read())
+
+        tags = json_data.get("tags", [])
+        all_tags.extend(tags)
+
+        if not tags:
+            LOGGER.debug("No tags found.")
+            break
+
+        page = json_data.get("page", None)
+        additional = json_data.get("has_additional", False)
+
+        if additional:
+            next_page = page + 1
+        else:
+            break
+
+    return all_tags
+
+
+def quay_test_token(quay_token: str, namespace: str) -> None:
+    api_url = f"{QUAY_API_URL}/organization/{namespace}/applications"
+    request = Request(api_url, headers={
+        "Authorization": f"Bearer {quay_token}",
+    })
+    try:
+        urlopen(request)
+    except HTTPError as ex:
+        # if status is 401 that means that token is wrong
+        if ex.status == 401:
+            raise RuntimeError("Wrong quay token")
+
+
+def delete_image_tag(quay_token: str, namespace: str, name: str, tag: str) -> None:
+    api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/{tag}"
+    request = Request(api_url, method="DELETE", headers={
+        "Authorization": f"Bearer {quay_token}",
+    })
+    resp: HTTPResponse
+
+    while True:
+        try:
+            with urlopen(request) as resp:
+                if resp.status != 200 and resp.status != 204 and resp.status != 404:
+                    raise RuntimeError(resp.reason)
+                else:
+                    break
+        except HTTPError as ex:
+            LOGGER.info("HTTPError exception: %s", ex)
+
+
+def remove_leftover_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str,
+                         dry_run: bool = False) -> None:
+    tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src|\.sig)$")
+
+    # remove att/sbom/src/sig for which is missing manifest digest
+    image_digests = [image["manifest_digest"] for image in tags]
+
+    for tag in tags:
+        if (match := tag_regex.match(tag["name"])) is not None:
+            if f"sha256:{match.group(1)}" not in image_digests:
+                if dry_run:
+                    LOGGER.info("Leftover image %s from %s/%s should be removed", tag["name"], namespace, name)
+                else:
+                    LOGGER.info("Removing leftover image %s from %s/%s", tag["name"], namespace, name)
+                    delete_image_tag(quay_token, namespace, name, tag["name"])
+
+
+def remove_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str,
+                days_old: int, keep_max: int, dry_run: bool = False) -> None:
+    unique_names = {}
+    removed_digests = []
+
+    # first remove only named tags
+    for tag in tags:
+        # skip att/sbom/src/sig
+        if tag["name"].startswith("sha256-") or "-" not in tag["name"]:
+            continue
+
+        tag_name, _ = tag["name"].rsplit('-', 1)
+
+        count = unique_names.get(tag_name, 0)
+
+        # keep at least first x per tag name
+        if count < keep_max:
+            unique_names[tag_name] = count + 1
+
+        # remove older than x
+        elif tag["start_ts"] < days_old:
+            if dry_run:
+                LOGGER.info("Image %s from %s/%s should be removed", tag["name"], namespace, name)
+                removed_digests.append(tag["manifest_digest"])
+            else:
+                LOGGER.info("Removing image %s from %s/%s", tag["name"], namespace, name)
+                delete_image_tag(quay_token, namespace, name, tag["name"])
+                removed_digests.append(tag["manifest_digest"])
+
+    tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src|\.sig)$")
+    # when named tags are removed, remove obsolete sbom/att/src
+    for tag in tags:
+        if (match := tag_regex.match(tag["name"])) is not None:
+            if f"sha256:{match.group(1)}" in removed_digests:
+                if dry_run:
+                    LOGGER.info("Image %s from %s/%s should be removed", tag["name"], namespace, name)
+                else:
+                    LOGGER.info("Removing image %s from %s/%s", tag["name"], namespace, name)
+                    delete_image_tag(quay_token, namespace, name, tag["name"])
+
+
+def process_repository(quay_token: str, namespace: str, repo_name: str, days_old: int,
+                       keep_max: int, dry_run: bool = False) -> None:
+    LOGGER.info("Processing repository: %s/%s", namespace, repo_name)
+
+    quay_test_token(quay_token, namespace)
+
+    all_tags = get_quay_tags(quay_token, namespace, repo_name)
+    LOGGER.info("Tag count in repository: %s", len(all_tags))
+
+    if all_tags:
+        remove_tags(all_tags, quay_token, namespace, repo_name, days_old, keep_max, dry_run=dry_run)
+
+    all_tags = get_quay_tags(quay_token, namespace, repo_name)
+    LOGGER.info("Tag count in repository: %s", len(all_tags))
+
+    if all_tags:
+        remove_leftover_tags(all_tags, quay_token, namespace, repo_name, dry_run=dry_run)
+
+
+def main():
+    token = os.getenv("QUAY_TOKEN")
+    if not token:
+        raise ValueError("The token required for access to Quay API is missing!")
+
+    args = parse_args()
+    process_repository(token, args.namespace, args.repo_name, days_old=args.old_days,
+                       keep_max=args.keep_max, dry_run=args.dry_run)
+
+
+def parse_args():
+    parser = argparse.ArgumentParser()
+    parser.add_argument("--namespace", required=True)
+    parser.add_argument("--repo-name", required=True)
+    parser.add_argument("--dry-run", action="store_true")
+    parser.add_argument("--old-days", type=int, default=DAY_OLD_TS)
+    parser.add_argument("--keep-max", type=int, default=KEEP_MAX)
+
+    args = parser.parse_args()
+    return args
+
+
+if __name__ == "__main__":
+    main()
diff --git a/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml b/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml
new file mode 100644
index 00000000..72dd7f0c
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- redhat-appstudio-pr-token.yaml
+- redhat-appstudio-tekton-catalog-pr-token.yaml
+- redhat-appstudio-pr-cronjob.yaml
+- redhat-appstudio-tekton-catalog-pr-cronjob.yaml
+configMapGenerator:
+- name: single-image-pruner-configmap
+  files:
+  - image_pruner/prune_images.py
+namespace: image-controller
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml
new file mode 100644
index 00000000..6a44e8f1
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-cronjob.yaml
@@ -0,0 +1,47 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: redhat-appstudio-pr-cronjob
+spec:
+  schedule: "0 0 * * *"
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+          - name: redhat-appstudio-pr-pruner
+            image: registry.redhat.io/rhel8/python-39:1-120.1684740828
+            env:
+              - name: QUAY_TOKEN
+                valueFrom:
+                  secretKeyRef:
+                    name: redhat-appstudio-pr-token
+                    key: quaytoken
+            imagePullPolicy: IfNotPresent
+            command:
+              - /bin/bash
+              - '-c'
+              - python /image-pruner/prune_images.py --namespace=redhat-appstudio --repo-name=pull-request-builds
+            volumeMounts:
+              - name: redhat-appstudio-pr-volume
+                mountPath: /image-pruner
+            resources:
+              limits:
+                cpu: 500m
+                memory: 512Mi
+              requests:
+                cpu: 150m
+                memory: 128Mi
+            securityContext:
+              readOnlyRootFilesystem: true
+          restartPolicy: OnFailure
+          securityContext:
+            runAsNonRoot: true
+          volumes:
+            - name: redhat-appstudio-pr-volume
+              configMap:
+                name: single-image-pruner-configmap
+            - name: redhat-appstudio-pr-token
+              secret:
+                secretName: redhat-appstudio-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml
new file mode 100644
index 00000000..ea74c682
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-pr-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: redhat-appstudio-pr-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/redhat-appstudio-pr-token
+  refreshInterval: 20h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: redhat-appstudio-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml
new file mode 100644
index 00000000..b1d888b7
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-cronjob.yaml
@@ -0,0 +1,47 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: redhat-appstudio-tekton-catalog-pr-cronjob
+spec:
+  schedule: "0 1 * * *"
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+          - name: redhat-appstudio-tekton-catalog-pr-pruner
+            image: registry.redhat.io/rhel8/python-39:1-120.1684740828
+            env:
+              - name: QUAY_TOKEN
+                valueFrom:
+                  secretKeyRef:
+                    name: redhat-appstudio-tekton-catalog-pr-token
+                    key: quaytoken
+            imagePullPolicy: IfNotPresent
+            command:
+              - /bin/bash
+              - '-c'
+              - python /image-pruner/prune_images.py --namespace=redhat-appstudio-tekton-catalog --repo-name=pull-request-builds
+            volumeMounts:
+              - name: redhat-appstudio-tekton-catalog-pr-volume
+                mountPath: /image-pruner
+            resources:
+              limits:
+                cpu: 500m
+                memory: 512Mi
+              requests:
+                cpu: 150m
+                memory: 128Mi
+            securityContext:
+              readOnlyRootFilesystem: true
+          restartPolicy: OnFailure
+          securityContext:
+            runAsNonRoot: true
+          volumes:
+            - name: redhat-appstudio-tekton-catalog-pr-volume
+              configMap:
+                name: single-image-pruner-configmap
+            - name: redhat-appstudio-tekton-catalog-pr-token
+              secret:
+                secretName: redhat-appstudio-tekton-catalog-pr-token
diff --git a/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml
new file mode 100644
index 00000000..4a75be79
--- /dev/null
+++ b/components/image-controller/production/stone-prd-rh01/resources/redhat-appstudio-tekton-catalog-pr-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: redhat-appstudio-tekton-catalog-pr-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/redhat-appstudio-tekton-catalog-pr-token
+  refreshInterval: 20h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: redhat-appstudio-tekton-catalog-pr-token
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
similarity index 82%
rename from components/image-controller/staging/kustomization.yaml
rename to components/image-controller/staging/base/kustomization.yaml
index db906be6..5c039c43 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
@@ -13,4 +13,4 @@ images:
 namespace: image-controller
 
 patches:
-  - path: ./manager_resources_patch.yaml
\ No newline at end of file
+  - path: ./manager_resources_patch.yaml
diff --git a/components/image-controller/staging/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
similarity index 100%
rename from components/image-controller/staging/manager_resources_patch.yaml
rename to components/image-controller/staging/base/manager_resources_patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-1037cb45/development/app-of-apps-development.yaml
443,445c443
<           elements:
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from d2c30086 to 1037cb45 on Tue Apr 2 12:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e6c9a6a6..2982fc20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 96ede688..968472ad 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from d2c30086 to 1037cb45 on Tue Apr 2 12:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e6c9a6a6..2982fc20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 96ede688..968472ad 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-d2c30086/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c
---
>         image: quay.io/redhat-appstudio/integration-service:c25c29fb82da14a96095e3aeba6f0d17ee062f6c
1298c1298
<             image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c
---
>             image: quay.io/redhat-appstudio/integration-service:c25c29fb82da14a96095e3aeba6f0d17ee062f6c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from d2c30086 to 1037cb45 on Tue Apr 2 12:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e6c9a6a6..2982fc20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 96ede688..968472ad 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-d2c30086/development/components/integration/development/kustomize.out.yaml
1205c1205
<         image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c
---
>         image: quay.io/redhat-appstudio/integration-service:c25c29fb82da14a96095e3aeba6f0d17ee062f6c
1299c1299
<             image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c
---
>             image: quay.io/redhat-appstudio/integration-service:c25c29fb82da14a96095e3aeba6f0d17ee062f6c 
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
<h3>4: Production changes from 71466896 to d2c30086 on Tue Apr 2 03:56:31 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index e5c68931..f6fa2f89 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cac2c46771e4ce11554e7032b90aab221d928645
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cac2c46771e4ce11554e7032b90aab221d928645
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cac2c46771e4ce11554e7032b90aab221d928645
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: c09c4f874cdda8505909b3b2627771c76df44797
+  newTag: cac2c46771e4ce11554e7032b90aab221d928645
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index bc9c0065..25cdbcdc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: c09c4f874cdda8505909b3b2627771c76df44797
+    value: cac2c46771e4ce11554e7032b90aab221d928645
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 897403ee..fc284c95 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cac2c46771e4ce11554e7032b90aab221d928645
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-71466896/production/components/jvm-build-service/production/kustomize.out.yaml
328,329d327
<                     tool:
<                       type: string
1433c1431
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
1485c1483
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
1489c1487
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
1491c1489
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;7.6.3;7.5.1;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 71466896 to d2c30086 on Tue Apr 2 03:56:31 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index e5c68931..f6fa2f89 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cac2c46771e4ce11554e7032b90aab221d928645
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cac2c46771e4ce11554e7032b90aab221d928645
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cac2c46771e4ce11554e7032b90aab221d928645
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: c09c4f874cdda8505909b3b2627771c76df44797
+  newTag: cac2c46771e4ce11554e7032b90aab221d928645
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index bc9c0065..25cdbcdc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: c09c4f874cdda8505909b3b2627771c76df44797
+    value: cac2c46771e4ce11554e7032b90aab221d928645
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 897403ee..fc284c95 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cac2c46771e4ce11554e7032b90aab221d928645
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-71466896/staging/components/jvm-build-service/staging/kustomize.out.yaml
328,329d327
<                     tool:
<                       type: string
1433c1431
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
1485c1483
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
1489c1487
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
1491c1489
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;7.6.3;7.5.1;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 71466896 to d2c30086 on Tue Apr 2 03:56:31 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index e5c68931..f6fa2f89 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cac2c46771e4ce11554e7032b90aab221d928645
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cac2c46771e4ce11554e7032b90aab221d928645
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cac2c46771e4ce11554e7032b90aab221d928645
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: c09c4f874cdda8505909b3b2627771c76df44797
+  newTag: cac2c46771e4ce11554e7032b90aab221d928645
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index bc9c0065..25cdbcdc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: c09c4f874cdda8505909b3b2627771c76df44797
+    value: cac2c46771e4ce11554e7032b90aab221d928645
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 897403ee..fc284c95 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cac2c46771e4ce11554e7032b90aab221d928645
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-71466896/development/components/jvm-build-service/development/kustomize.out.yaml
328,329d327
<                     tool:
<                       type: string
1433c1431
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
1464c1462
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
1468c1466
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
1470c1468
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;7.6.3;7.5.1;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13 
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
