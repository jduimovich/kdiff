# kustomize changes tracked by commits 
### This file generated at Sat Mar 30 16:02:23 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from efec85c5 to a895a1a8 on Fri Mar 29 11:19:03 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 880c6428..25976cbc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f0bb04e5..30c0827c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c1aaa4e60c985b8b7093ab7a4f63eb8ec4fe50ce
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a394b328165f670ddd31cd97e4f8c918cc0f73e2
+      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-efec85c5/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
378c378
<   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
---
>   verify_ec_task_git_revision: a394b328165f670ddd31cd97e4f8c918cc0f73e2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49 
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
<h3>1: Staging changes from efec85c5 to a895a1a8 on Fri Mar 29 11:19:03 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 880c6428..25976cbc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f0bb04e5..30c0827c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c1aaa4e60c985b8b7093ab7a4f63eb8ec4fe50ce
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a394b328165f670ddd31cd97e4f8c918cc0f73e2
+      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-efec85c5/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
378c378
<   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
---
>   verify_ec_task_git_revision: a394b328165f670ddd31cd97e4f8c918cc0f73e2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49 
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
<h3>1: Development changes from efec85c5 to a895a1a8 on Fri Mar 29 11:19:03 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 880c6428..25976cbc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index f0bb04e5..30c0827c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c1aaa4e60c985b8b7093ab7a4f63eb8ec4fe50ce
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6b6bb73ab147024f9dfc643d08f6926fdbd59c24
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a394b328165f670ddd31cd97e4f8c918cc0f73e2
+      - verify_ec_task_git_revision=0cde75c123c4269dca16f16b0c9d5cabb33064e4
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-efec85c5/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0cde75c123c4269dca16f16b0c9d5cabb33064e4@sha256:30aea26174cc84081dbdedd64055b8ff577992f65abac1c8d4ad4cde8f134561
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a394b328165f670ddd31cd97e4f8c918cc0f73e2@sha256:ec493de81f631aca3a551421537e16f008513afca9e6e5d4c570312bf2eccee3
378c378
<   verify_ec_task_git_revision: 0cde75c123c4269dca16f16b0c9d5cabb33064e4
---
>   verify_ec_task_git_revision: a394b328165f670ddd31cd97e4f8c918cc0f73e2
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d471eb4@sha256:3a0a498da1eed0c64d12d75ad5ab8fa0af480d542f0bf99afa7a7cac631d3956
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49 
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
<h3>2: Production changes from d48dd381 to efec85c5 on Thu Mar 28 19:21:21 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index c07849a3..3935172f 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c 
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
<h3>2: Staging changes from d48dd381 to efec85c5 on Thu Mar 28 19:21:21 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index c07849a3..3935172f 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from d48dd381 to efec85c5 on Thu Mar 28 19:21:21 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index c07849a3..3935172f 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 0ae57726 to d48dd381 on Thu Mar 28 18:32:04 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 26cb9801..89d3a619 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -23,7 +23,7 @@ spec:
     deactivation:
       deactivationDomainsExcluded: '@redhat.com'
     notifications:
-      adminEmail: rhtap-infra@redhat.com
+      adminEmail: konflux-infra@redhat.com
       secret:
         mailgunAPIKey: mailgun.api.key
         mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 2458ac53..0853c0ac 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -20,7 +20,7 @@ spec:
     deactivation:
       deactivationDomainsExcluded: '@redhat.com'
     notifications:
-      adminEmail: rhtap-infra@redhat.com
+      adminEmail: konflux-infra@redhat.com
       secret:
         mailgunAPIKey: mailgun.api.key
         mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index f47d0651..6991ff0e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -21,7 +21,7 @@ spec:
       deactivation:
         deactivationDomainsExcluded: '@redhat.com'
       notifications:
-        adminEmail: rhtap-infra@redhat.com
+        adminEmail: konflux-infra@redhat.com
         secret:
           mailgunAPIKey: mailgun.api.key
           mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 03b57a59..085493c7 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -23,7 +23,7 @@ spec:
       deactivation:
         deactivationDomainsExcluded: '@redhat.com'
       notifications:
-        adminEmail: rhtap-infra@redhat.com
+        adminEmail: konflux-infra@redhat.com
         secret:
           mailgunAPIKey: mailgun.api.key
           mailgunDomain: mailgun.domain 
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
<h3>3: Staging changes from 0ae57726 to d48dd381 on Thu Mar 28 18:32:04 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 26cb9801..89d3a619 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -23,7 +23,7 @@ spec:
     deactivation:
       deactivationDomainsExcluded: '@redhat.com'
     notifications:
-      adminEmail: rhtap-infra@redhat.com
+      adminEmail: konflux-infra@redhat.com
       secret:
         mailgunAPIKey: mailgun.api.key
         mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 2458ac53..0853c0ac 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -20,7 +20,7 @@ spec:
     deactivation:
       deactivationDomainsExcluded: '@redhat.com'
     notifications:
-      adminEmail: rhtap-infra@redhat.com
+      adminEmail: konflux-infra@redhat.com
       secret:
         mailgunAPIKey: mailgun.api.key
         mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index f47d0651..6991ff0e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -21,7 +21,7 @@ spec:
       deactivation:
         deactivationDomainsExcluded: '@redhat.com'
       notifications:
-        adminEmail: rhtap-infra@redhat.com
+        adminEmail: konflux-infra@redhat.com
         secret:
           mailgunAPIKey: mailgun.api.key
           mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 03b57a59..085493c7 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -23,7 +23,7 @@ spec:
       deactivation:
         deactivationDomainsExcluded: '@redhat.com'
       notifications:
-        adminEmail: rhtap-infra@redhat.com
+        adminEmail: konflux-infra@redhat.com
         secret:
           mailgunAPIKey: mailgun.api.key
           mailgunDomain: mailgun.domain 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 0ae57726 to d48dd381 on Thu Mar 28 18:32:04 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 26cb9801..89d3a619 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -23,7 +23,7 @@ spec:
     deactivation:
       deactivationDomainsExcluded: '@redhat.com'
     notifications:
-      adminEmail: rhtap-infra@redhat.com
+      adminEmail: konflux-infra@redhat.com
       secret:
         mailgunAPIKey: mailgun.api.key
         mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 2458ac53..0853c0ac 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -20,7 +20,7 @@ spec:
     deactivation:
       deactivationDomainsExcluded: '@redhat.com'
     notifications:
-      adminEmail: rhtap-infra@redhat.com
+      adminEmail: konflux-infra@redhat.com
       secret:
         mailgunAPIKey: mailgun.api.key
         mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index f47d0651..6991ff0e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -21,7 +21,7 @@ spec:
       deactivation:
         deactivationDomainsExcluded: '@redhat.com'
       notifications:
-        adminEmail: rhtap-infra@redhat.com
+        adminEmail: konflux-infra@redhat.com
         secret:
           mailgunAPIKey: mailgun.api.key
           mailgunDomain: mailgun.domain
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 03b57a59..085493c7 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -23,7 +23,7 @@ spec:
       deactivation:
         deactivationDomainsExcluded: '@redhat.com'
       notifications:
-        adminEmail: rhtap-infra@redhat.com
+        adminEmail: konflux-infra@redhat.com
         secret:
           mailgunAPIKey: mailgun.api.key
           mailgunDomain: mailgun.domain 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 858cbba6 to 0ae57726 on Thu Mar 28 16:39:04 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4e19c3ef..e6c9a6a6 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,6 +14,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL=""
+    - CONSOLE_URL_TASKLOG=""
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 90c5a26b..b84108dc 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 8804f12b..362b54b1 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,6 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG=""="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b9a05eb2..f02c8b95 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/production/stone-prod-p01/console-url-config-patch.json b/components/integration/production/stone-prod-p01/console-url-config-patch.json
new file mode 100644
index 00000000..5c41a385
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index 2a4f99d1..2f086e27 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index bc880af2..96ede688 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,6 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 90c5a26b..b84108dc 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/staging/stone-stage-p01/console-url-config-patch.json b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
new file mode 100644
index 00000000..9340e821
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index 2a4f99d1..2f086e27 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
 components:
   - ../../rh-certs
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-858cbba6/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1085,1088c1085,1086
<   CONSOLE_URL: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
<     .Namespace }}/pipelinerun/{{ .PipelineRunName }}
<   CONSOLE_URL_TASKLOG: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{
<     .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}
---
>   CONSOLE_URL: https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace
>     }}/pipelinerun/{{ .PipelineRunName }}
1091c1089
<   name: console-url-dht2mt84b9
---
>   name: console-url-h2kgf6tmbb
1199,1205c1197
<               name: console-url-dht2mt84b9
<               optional: true
<         - name: CONSOLE_URL_TASKLOG
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL_TASKLOG
<               name: console-url-dht2mt84b9
---
>               name: console-url-h2kgf6tmbb 
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
<h3>4: Staging changes from 858cbba6 to 0ae57726 on Thu Mar 28 16:39:04 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4e19c3ef..e6c9a6a6 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,6 +14,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL=""
+    - CONSOLE_URL_TASKLOG=""
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 90c5a26b..b84108dc 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 8804f12b..362b54b1 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,6 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG=""="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b9a05eb2..f02c8b95 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/production/stone-prod-p01/console-url-config-patch.json b/components/integration/production/stone-prod-p01/console-url-config-patch.json
new file mode 100644
index 00000000..5c41a385
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index 2a4f99d1..2f086e27 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index bc880af2..96ede688 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,6 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 90c5a26b..b84108dc 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/staging/stone-stage-p01/console-url-config-patch.json b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
new file mode 100644
index 00000000..9340e821
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index 2a4f99d1..2f086e27 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
 components:
   - ../../rh-certs
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-858cbba6/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1085,1088c1085,1086
<   CONSOLE_URL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
<     .Namespace }}/pipelinerun/{{ .PipelineRunName }}
<   CONSOLE_URL_TASKLOG: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
<     .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}
---
>   CONSOLE_URL: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace
>     }}/pipelinerun/{{ .PipelineRunName }}
1091c1089
<   name: console-url-tkt7bh5md9
---
>   name: console-url-9bttdkbk4f
1199,1205c1197
<               name: console-url-tkt7bh5md9
<               optional: true
<         - name: CONSOLE_URL_TASKLOG
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL_TASKLOG
<               name: console-url-tkt7bh5md9
---
>               name: console-url-9bttdkbk4f 
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
<h3>4: Development changes from 858cbba6 to 0ae57726 on Thu Mar 28 16:39:04 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4e19c3ef..e6c9a6a6 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,6 +14,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL=""
+    - CONSOLE_URL_TASKLOG=""
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 90c5a26b..b84108dc 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 8804f12b..362b54b1 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,6 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG=""="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b9a05eb2..f02c8b95 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/production/stone-prod-p01/console-url-config-patch.json b/components/integration/production/stone-prod-p01/console-url-config-patch.json
new file mode 100644
index 00000000..5c41a385
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index 2a4f99d1..2f086e27 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index bc880af2..96ede688 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,6 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 90c5a26b..b84108dc 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -22,3 +22,9 @@ spec:
                 name: console-url
                 key: CONSOLE_URL
                 optional: true
+        - name: CONSOLE_URL_TASKLOG
+          valueFrom:
+            configMapKeyRef:
+              name: console-url
+              key: CONSOLE_URL_TASKLOG
+              optional: true
diff --git a/components/integration/staging/stone-stage-p01/console-url-config-patch.json b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
new file mode 100644
index 00000000..9340e821
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index 2a4f99d1..2f086e27 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-url
 components:
   - ../../rh-certs
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-858cbba6/development/components/integration/development/kustomize.out.yaml
1086d1085
<   CONSOLE_URL_TASKLOG: ""
1089c1088
<   name: console-url-cc96c44t2h
---
>   name: console-url-b957927t67
1197,1203c1196
<               name: console-url-cc96c44t2h
<               optional: true
<         - name: CONSOLE_URL_TASKLOG
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL_TASKLOG
<               name: console-url-cc96c44t2h
---
>               name: console-url-b957927t67 
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
