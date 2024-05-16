# kustomize changes tracked by commits 
### This file generated at Thu May 16 04:02:20 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b0c801b5 to 1eb67e72 on Wed May 15 22:40:20 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1529f218..6c8a82a3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6d0544@sha256:7324d24c4f55b336c1890649c7068fbe779dfb0440b6ff109e4d794e383145e9
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 23d2c9b5..dd5ba881 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=31192dc232ad49cfb852479d046f6dda101a4602
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5c0827cab9af9ed8ac51ebf9ff3dbc229da46144
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
+      - verify_ec_task_git_revision=20834d428d339b5af505af5daf79f823a83ee913
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-b0c801b5/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
378c378
<   verify_ec_task_git_revision: 20834d428d339b5af505af5daf79f823a83ee913
---
>   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6d0544@sha256:7324d24c4f55b336c1890649c7068fbe779dfb0440b6ff109e4d794e383145e9
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b0c801b5 to 1eb67e72 on Wed May 15 22:40:20 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1529f218..6c8a82a3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6d0544@sha256:7324d24c4f55b336c1890649c7068fbe779dfb0440b6ff109e4d794e383145e9
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 23d2c9b5..dd5ba881 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=31192dc232ad49cfb852479d046f6dda101a4602
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5c0827cab9af9ed8ac51ebf9ff3dbc229da46144
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
+      - verify_ec_task_git_revision=20834d428d339b5af505af5daf79f823a83ee913
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-b0c801b5/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
378c378
<   verify_ec_task_git_revision: 20834d428d339b5af505af5daf79f823a83ee913
---
>   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6d0544@sha256:7324d24c4f55b336c1890649c7068fbe779dfb0440b6ff109e4d794e383145e9
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7 
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
<h3>1: Development changes from b0c801b5 to 1eb67e72 on Wed May 15 22:40:20 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1529f218..6c8a82a3 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6d0544@sha256:7324d24c4f55b336c1890649c7068fbe779dfb0440b6ff109e4d794e383145e9
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 23d2c9b5..dd5ba881 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=31192dc232ad49cfb852479d046f6dda101a4602
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5c0827cab9af9ed8ac51ebf9ff3dbc229da46144
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
+      - verify_ec_task_git_revision=20834d428d339b5af505af5daf79f823a83ee913
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-b0c801b5/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
378c378
<   verify_ec_task_git_revision: 20834d428d339b5af505af5daf79f823a83ee913
---
>   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6d0544@sha256:7324d24c4f55b336c1890649c7068fbe779dfb0440b6ff109e4d794e383145e9
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7 
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
<h3>2: Production changes from 7680be9b to b0c801b5 on Wed May 15 18:25:07 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/keycloak/base/namespace.yaml b/components/keycloak/base/namespace.yaml
index 117a05b7..5bf8efc0 100644
--- a/components/keycloak/base/namespace.yaml
+++ b/components/keycloak/base/namespace.yaml
@@ -3,3 +3,5 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: rhtap-auth
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
diff --git a/components/keycloak/base/rhsso-operator.yaml b/components/keycloak/base/rhsso-operator.yaml
index 29d0bb2b..da24b33a 100644
--- a/components/keycloak/base/rhsso-operator.yaml
+++ b/components/keycloak/base/rhsso-operator.yaml
@@ -3,6 +3,8 @@ apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   name: rhsso-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: stable
   name: rhsso-operator
@@ -14,6 +16,8 @@ apiVersion: operators.coreos.com/v1
 kind: OperatorGroup
 metadata:
   name: keycloak-operatorgroup
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
     - rhtap-auth
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index df54c578..0c26aaf6 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - ./monitoring
 - ./proxy
 - ./olm
+- ns.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/ns.yaml b/components/sandbox/toolchain-host-operator/base/ns.yaml
new file mode 100644
index 00000000..c57f5a77
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/ns.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+  name: to-be-added-by-kustomize
diff --git a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
index 37ff29d7..07ed827a 100644
--- a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
+++ b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
@@ -3,6 +3,8 @@ kind: CatalogSource
 metadata:
   labels:
     opsrc-provider: codeready-toolchain
+  annotations:
+    argocd.argoproj.io/sync-wave: "-4"
   name: dev-sandbox-host
   namespace: toolchain-host-operator
 spec:
@@ -18,6 +20,8 @@ kind: OperatorGroup
 metadata:
   name: dev-sandbox-host
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
   - toolchain-host-operator
@@ -27,9 +31,11 @@ kind: Subscription
 metadata:
   name: dev-sandbox-host
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: staging
   installPlanApproval: Automatic
   name: toolchain-host-operator
   source: dev-sandbox-host
-  sourceNamespace: toolchain-host-operator
\ No newline at end of file
+  sourceNamespace: toolchain-host-operator
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index f14a47f0..72ae3183 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-member-operator
 resources:
 - ./rbac
 - ./olm
+- ns.yaml
diff --git a/components/sandbox/toolchain-member-operator/base/ns.yaml b/components/sandbox/toolchain-member-operator/base/ns.yaml
new file mode 100644
index 00000000..c57f5a77
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/ns.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+  name: to-be-added-by-kustomize
diff --git a/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
index 093eb236..4d5fe500 100644
--- a/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
+++ b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
@@ -3,6 +3,8 @@ kind: CatalogSource
 metadata:
   labels:
     opsrc-provider: codeready-toolchain
+  annotations:
+    argocd.argoproj.io/sync-wave: "-4"
   name: dev-sandbox-member
   namespace: toolchain-member-operator
 spec:
@@ -18,6 +20,8 @@ kind: OperatorGroup
 metadata:
   name: dev-sandbox-member
   namespace: toolchain-member-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
   - toolchain-member-operator
@@ -27,6 +31,8 @@ kind: Subscription
 metadata:
   name: dev-sandbox-member
   namespace: toolchain-member-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: staging
   installPlanApproval: Automatic 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 7680be9b to b0c801b5 on Wed May 15 18:25:07 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/keycloak/base/namespace.yaml b/components/keycloak/base/namespace.yaml
index 117a05b7..5bf8efc0 100644
--- a/components/keycloak/base/namespace.yaml
+++ b/components/keycloak/base/namespace.yaml
@@ -3,3 +3,5 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: rhtap-auth
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
diff --git a/components/keycloak/base/rhsso-operator.yaml b/components/keycloak/base/rhsso-operator.yaml
index 29d0bb2b..da24b33a 100644
--- a/components/keycloak/base/rhsso-operator.yaml
+++ b/components/keycloak/base/rhsso-operator.yaml
@@ -3,6 +3,8 @@ apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   name: rhsso-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: stable
   name: rhsso-operator
@@ -14,6 +16,8 @@ apiVersion: operators.coreos.com/v1
 kind: OperatorGroup
 metadata:
   name: keycloak-operatorgroup
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
     - rhtap-auth
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index df54c578..0c26aaf6 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - ./monitoring
 - ./proxy
 - ./olm
+- ns.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/ns.yaml b/components/sandbox/toolchain-host-operator/base/ns.yaml
new file mode 100644
index 00000000..c57f5a77
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/ns.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+  name: to-be-added-by-kustomize
diff --git a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
index 37ff29d7..07ed827a 100644
--- a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
+++ b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
@@ -3,6 +3,8 @@ kind: CatalogSource
 metadata:
   labels:
     opsrc-provider: codeready-toolchain
+  annotations:
+    argocd.argoproj.io/sync-wave: "-4"
   name: dev-sandbox-host
   namespace: toolchain-host-operator
 spec:
@@ -18,6 +20,8 @@ kind: OperatorGroup
 metadata:
   name: dev-sandbox-host
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
   - toolchain-host-operator
@@ -27,9 +31,11 @@ kind: Subscription
 metadata:
   name: dev-sandbox-host
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: staging
   installPlanApproval: Automatic
   name: toolchain-host-operator
   source: dev-sandbox-host
-  sourceNamespace: toolchain-host-operator
\ No newline at end of file
+  sourceNamespace: toolchain-host-operator
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index f14a47f0..72ae3183 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-member-operator
 resources:
 - ./rbac
 - ./olm
+- ns.yaml
diff --git a/components/sandbox/toolchain-member-operator/base/ns.yaml b/components/sandbox/toolchain-member-operator/base/ns.yaml
new file mode 100644
index 00000000..c57f5a77
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/ns.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+  name: to-be-added-by-kustomize
diff --git a/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
index 093eb236..4d5fe500 100644
--- a/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
+++ b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
@@ -3,6 +3,8 @@ kind: CatalogSource
 metadata:
   labels:
     opsrc-provider: codeready-toolchain
+  annotations:
+    argocd.argoproj.io/sync-wave: "-4"
   name: dev-sandbox-member
   namespace: toolchain-member-operator
 spec:
@@ -18,6 +20,8 @@ kind: OperatorGroup
 metadata:
   name: dev-sandbox-member
   namespace: toolchain-member-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
   - toolchain-member-operator
@@ -27,6 +31,8 @@ kind: Subscription
 metadata:
   name: dev-sandbox-member
   namespace: toolchain-member-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: staging
   installPlanApproval: Automatic 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-7680be9b/staging/components/keycloak/staging/stone-stage-p01/kustomize.out.yaml
4,5d3
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
365,366d362
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
376,377d371
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2" 
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
<h3>2: Development changes from 7680be9b to b0c801b5 on Wed May 15 18:25:07 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/keycloak/base/namespace.yaml b/components/keycloak/base/namespace.yaml
index 117a05b7..5bf8efc0 100644
--- a/components/keycloak/base/namespace.yaml
+++ b/components/keycloak/base/namespace.yaml
@@ -3,3 +3,5 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: rhtap-auth
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
diff --git a/components/keycloak/base/rhsso-operator.yaml b/components/keycloak/base/rhsso-operator.yaml
index 29d0bb2b..da24b33a 100644
--- a/components/keycloak/base/rhsso-operator.yaml
+++ b/components/keycloak/base/rhsso-operator.yaml
@@ -3,6 +3,8 @@ apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   name: rhsso-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: stable
   name: rhsso-operator
@@ -14,6 +16,8 @@ apiVersion: operators.coreos.com/v1
 kind: OperatorGroup
 metadata:
   name: keycloak-operatorgroup
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
     - rhtap-auth
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index df54c578..0c26aaf6 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - ./monitoring
 - ./proxy
 - ./olm
+- ns.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/ns.yaml b/components/sandbox/toolchain-host-operator/base/ns.yaml
new file mode 100644
index 00000000..c57f5a77
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/ns.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+  name: to-be-added-by-kustomize
diff --git a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
index 37ff29d7..07ed827a 100644
--- a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
+++ b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
@@ -3,6 +3,8 @@ kind: CatalogSource
 metadata:
   labels:
     opsrc-provider: codeready-toolchain
+  annotations:
+    argocd.argoproj.io/sync-wave: "-4"
   name: dev-sandbox-host
   namespace: toolchain-host-operator
 spec:
@@ -18,6 +20,8 @@ kind: OperatorGroup
 metadata:
   name: dev-sandbox-host
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
   - toolchain-host-operator
@@ -27,9 +31,11 @@ kind: Subscription
 metadata:
   name: dev-sandbox-host
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: staging
   installPlanApproval: Automatic
   name: toolchain-host-operator
   source: dev-sandbox-host
-  sourceNamespace: toolchain-host-operator
\ No newline at end of file
+  sourceNamespace: toolchain-host-operator
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index f14a47f0..72ae3183 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-member-operator
 resources:
 - ./rbac
 - ./olm
+- ns.yaml
diff --git a/components/sandbox/toolchain-member-operator/base/ns.yaml b/components/sandbox/toolchain-member-operator/base/ns.yaml
new file mode 100644
index 00000000..c57f5a77
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/ns.yaml
@@ -0,0 +1,6 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+  name: to-be-added-by-kustomize
diff --git a/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
index 093eb236..4d5fe500 100644
--- a/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
+++ b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
@@ -3,6 +3,8 @@ kind: CatalogSource
 metadata:
   labels:
     opsrc-provider: codeready-toolchain
+  annotations:
+    argocd.argoproj.io/sync-wave: "-4"
   name: dev-sandbox-member
   namespace: toolchain-member-operator
 spec:
@@ -18,6 +20,8 @@ kind: OperatorGroup
 metadata:
   name: dev-sandbox-member
   namespace: toolchain-member-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 spec:
   targetNamespaces:
   - toolchain-member-operator
@@ -27,6 +31,8 @@ kind: Subscription
 metadata:
   name: dev-sandbox-member
   namespace: toolchain-member-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
 spec:
   channel: staging
   installPlanApproval: Automatic 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-7680be9b/development/components/keycloak/development/kustomize.out.yaml
4,5d3
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
333,334d330
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
344,345d339
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2" 
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
<h3>3: Production changes from ad4fd629 to 7680be9b on Wed May 15 16:58:49 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/keycloak/README.md b/components/keycloak/README.md
index 8d8599d1..8c311927 100644
--- a/components/keycloak/README.md
+++ b/components/keycloak/README.md
@@ -16,6 +16,15 @@ The authentication flow has the following steps:
 4. Keycloak reads the user's identity from Openshift and returns a token to the UI.
 5. When the user do an action in the ui, a request is sent to dev-sandbox with the token, dev-sandbox verifies the token using the Keycloak realm public key and authenticates the user.
 
+## Updating Routes
+
+The Keycloak configuration will change based on the fqdn of the cluster.
+The files that should be updated are `set-ocp-idp.yaml` and `set-redirect-url.yaml`.
+For getting the details of the OCP oauth server, run the following from any pod on the cluster:
+
+bash```
+curl --insecure https://openshift.default.svc/.well-known/oauth-authorization-server
+```
 
 ## Updating the client secret for Openshift
 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index 3bdb9b0d..b1da9e84 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -271,6 +271,7 @@ spec:
           clientId: 'system:serviceaccount:rhtap-auth:openshift-provider'
           clientSecret: "To be added manually in the keycloak UI see the readme"
           tokenUrl: 'https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token'
+          syncMode: "FORCE"
         enabled: true
         internalId: openshift-v4
         providerId: openshift-v4
diff --git a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
index bcdbb917..6d7a74fe 100644
--- a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
+++ b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
@@ -1,10 +1,11 @@
 ---
 - op: add
   path: /spec/realm/identityProviders/0/config/authorizationUrl
-  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+  value: https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/authorize
 - op: add
   path: /spec/realm/identityProviders/0/config/baseUrl
-  value: https://api.stone-stage-p01.apys.p3.openshiftapps.com:443
+  # The value is the URL to the API endpoint
+  value: https://api.stone-stage-p01.hpmt.p1.openshiftapps.com:6443
 - op: add
   path: /spec/realm/identityProviders/0/config/tokenUrl
-  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token
+  value: "https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/token"
diff --git a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
index 7aafecc9..e6aff3d0 100644
--- a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
+++ b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
-  value: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
+  value: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index eeeb227c..26ce737c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
-    custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/ui/staging/fed-modules.json b/components/ui/staging/fed-modules.json
index 67f2403d..4482a780 100644
--- a/components/ui/staging/fed-modules.json
+++ b/components/ui/staging/fed-modules.json
@@ -2,7 +2,7 @@
     "chrome": {
         "manifestLocation": "/apps/chrome/js/fed-mods.json",
         "config": {
-            "ssoUrl": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/"
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/"
         },
         "fullProfile": false
     },
diff --git a/components/ui/staging/set-hostname.yaml b/components/ui/staging/set-hostname.yaml
index 165592a7..7b7d979d 100644
--- a/components/ui/staging/set-hostname.yaml
+++ b/components/ui/staging/set-hostname.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/host
-  value: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+  value: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ad4fd629 to 7680be9b on Wed May 15 16:58:49 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/keycloak/README.md b/components/keycloak/README.md
index 8d8599d1..8c311927 100644
--- a/components/keycloak/README.md
+++ b/components/keycloak/README.md
@@ -16,6 +16,15 @@ The authentication flow has the following steps:
 4. Keycloak reads the user's identity from Openshift and returns a token to the UI.
 5. When the user do an action in the ui, a request is sent to dev-sandbox with the token, dev-sandbox verifies the token using the Keycloak realm public key and authenticates the user.
 
+## Updating Routes
+
+The Keycloak configuration will change based on the fqdn of the cluster.
+The files that should be updated are `set-ocp-idp.yaml` and `set-redirect-url.yaml`.
+For getting the details of the OCP oauth server, run the following from any pod on the cluster:
+
+bash```
+curl --insecure https://openshift.default.svc/.well-known/oauth-authorization-server
+```
 
 ## Updating the client secret for Openshift
 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index 3bdb9b0d..b1da9e84 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -271,6 +271,7 @@ spec:
           clientId: 'system:serviceaccount:rhtap-auth:openshift-provider'
           clientSecret: "To be added manually in the keycloak UI see the readme"
           tokenUrl: 'https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token'
+          syncMode: "FORCE"
         enabled: true
         internalId: openshift-v4
         providerId: openshift-v4
diff --git a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
index bcdbb917..6d7a74fe 100644
--- a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
+++ b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
@@ -1,10 +1,11 @@
 ---
 - op: add
   path: /spec/realm/identityProviders/0/config/authorizationUrl
-  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+  value: https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/authorize
 - op: add
   path: /spec/realm/identityProviders/0/config/baseUrl
-  value: https://api.stone-stage-p01.apys.p3.openshiftapps.com:443
+  # The value is the URL to the API endpoint
+  value: https://api.stone-stage-p01.hpmt.p1.openshiftapps.com:6443
 - op: add
   path: /spec/realm/identityProviders/0/config/tokenUrl
-  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token
+  value: "https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/token"
diff --git a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
index 7aafecc9..e6aff3d0 100644
--- a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
+++ b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
-  value: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
+  value: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index eeeb227c..26ce737c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
-    custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/ui/staging/fed-modules.json b/components/ui/staging/fed-modules.json
index 67f2403d..4482a780 100644
--- a/components/ui/staging/fed-modules.json
+++ b/components/ui/staging/fed-modules.json
@@ -2,7 +2,7 @@
     "chrome": {
         "manifestLocation": "/apps/chrome/js/fed-mods.json",
         "config": {
-            "ssoUrl": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/"
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/"
         },
         "fullProfile": false
     },
diff --git a/components/ui/staging/set-hostname.yaml b/components/ui/staging/set-hostname.yaml
index 165592a7..7b7d979d 100644
--- a/components/ui/staging/set-hostname.yaml
+++ b/components/ui/staging/set-hostname.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/host
-  value: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+  value: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (97 lines)</summary>  

``` 
./commit-ad4fd629/staging/components/keycloak/staging/stone-stage-p01/kustomize.out.yaml
10c10
<     serviceaccounts.openshift.io/oauth-redirecturi.rhtap: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
---
>     serviceaccounts.openshift.io/oauth-redirecturi.rhtap: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
348,349c348,349
<         authorizationUrl: https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/authorize
<         baseUrl: https://api.stone-stage-p01.hpmt.p1.openshiftapps.com:6443
---
>         authorizationUrl: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
>         baseUrl: https://api.stone-stage-p01.apys.p3.openshiftapps.com:443
352,353c352
<         syncMode: FORCE
<         tokenUrl: https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/token
---
>         tokenUrl: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token
./commit-ad4fd629/staging/components/ui/staging/kustomize.out.yaml
13c13
<                 "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/"
---
>                 "ssoUrl": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/"
36c36
<   name: fed-modules-t79mgkfb85
---
>   name: fed-modules-c54dt92kb2
319c319
<           name: fed-modules-t79mgkfb85
---
>           name: fed-modules-c54dt92kb2
414c414
<           name: fed-modules-t79mgkfb85
---
>           name: fed-modules-c54dt92kb2
509c509
<           name: fed-modules-t79mgkfb85
---
>           name: fed-modules-c54dt92kb2
632c632
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
653c653
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
674c674
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
695c695
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
716c716
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
737c737
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
758c758
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
779c779
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
800c800
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
821c821
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
842c842
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
863c863
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
883c883
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
903c903
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
921c921
<   host: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
---
>   host: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com 
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
<h3>3: Development changes from ad4fd629 to 7680be9b on Wed May 15 16:58:49 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/keycloak/README.md b/components/keycloak/README.md
index 8d8599d1..8c311927 100644
--- a/components/keycloak/README.md
+++ b/components/keycloak/README.md
@@ -16,6 +16,15 @@ The authentication flow has the following steps:
 4. Keycloak reads the user's identity from Openshift and returns a token to the UI.
 5. When the user do an action in the ui, a request is sent to dev-sandbox with the token, dev-sandbox verifies the token using the Keycloak realm public key and authenticates the user.
 
+## Updating Routes
+
+The Keycloak configuration will change based on the fqdn of the cluster.
+The files that should be updated are `set-ocp-idp.yaml` and `set-redirect-url.yaml`.
+For getting the details of the OCP oauth server, run the following from any pod on the cluster:
+
+bash```
+curl --insecure https://openshift.default.svc/.well-known/oauth-authorization-server
+```
 
 ## Updating the client secret for Openshift
 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index 3bdb9b0d..b1da9e84 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -271,6 +271,7 @@ spec:
           clientId: 'system:serviceaccount:rhtap-auth:openshift-provider'
           clientSecret: "To be added manually in the keycloak UI see the readme"
           tokenUrl: 'https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token'
+          syncMode: "FORCE"
         enabled: true
         internalId: openshift-v4
         providerId: openshift-v4
diff --git a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
index bcdbb917..6d7a74fe 100644
--- a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
+++ b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
@@ -1,10 +1,11 @@
 ---
 - op: add
   path: /spec/realm/identityProviders/0/config/authorizationUrl
-  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+  value: https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/authorize
 - op: add
   path: /spec/realm/identityProviders/0/config/baseUrl
-  value: https://api.stone-stage-p01.apys.p3.openshiftapps.com:443
+  # The value is the URL to the API endpoint
+  value: https://api.stone-stage-p01.hpmt.p1.openshiftapps.com:6443
 - op: add
   path: /spec/realm/identityProviders/0/config/tokenUrl
-  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token
+  value: "https://oauth-openshift.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/oauth/token"
diff --git a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
index 7aafecc9..e6aff3d0 100644
--- a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
+++ b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
-  value: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
+  value: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index eeeb227c..26ce737c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
-    custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/ui/staging/fed-modules.json b/components/ui/staging/fed-modules.json
index 67f2403d..4482a780 100644
--- a/components/ui/staging/fed-modules.json
+++ b/components/ui/staging/fed-modules.json
@@ -2,7 +2,7 @@
     "chrome": {
         "manifestLocation": "/apps/chrome/js/fed-mods.json",
         "config": {
-            "ssoUrl": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/"
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/"
         },
         "fullProfile": false
     },
diff --git a/components/ui/staging/set-hostname.yaml b/components/ui/staging/set-hostname.yaml
index 165592a7..7b7d979d 100644
--- a/components/ui/staging/set-hostname.yaml
+++ b/components/ui/staging/set-hostname.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/host
-  value: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+  value: konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-ad4fd629/development/components/keycloak/development/kustomize.out.yaml
320d319
<         syncMode: FORCE 
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
<h3>4: Production changes from 35b4c9bb to ad4fd629 on Wed May 15 15:58:18 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 2b0f7204..03697c68 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-builder
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
     - name: docker-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 4af6b835..5935c377 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-35b4c9bb/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
634c634
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
636c636
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
834c834
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
846c846
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
858c858
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
870c870
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 35b4c9bb to ad4fd629 on Wed May 15 15:58:18 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 2b0f7204..03697c68 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-builder
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
     - name: docker-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 4af6b835..5935c377 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-35b4c9bb/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
634c634
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
636c636
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
834c834
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
846c846
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
858c858
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
870c870
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e 
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
<h3>4: Development changes from 35b4c9bb to ad4fd629 on Wed May 15 15:58:18 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 2b0f7204..03697c68 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-builder
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
     - name: docker-builder
-      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 4af6b835..5935c377 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a21c3e505d3418592e9306f713d886968d9193ad
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-35b4c9bb/development/components/build-service/development/kustomize.out.yaml
634c634
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
636c636
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
820c820
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
832c832
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
844c844
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
856c856
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a21c3e505d3418592e9306f713d886968d9193ad
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e 
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
