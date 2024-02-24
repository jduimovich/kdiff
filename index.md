# kustomize changes tracked by commits 
### This file generated at Sat Feb 24 16:02:10 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6a638b76 to 52a80909 on Fri Feb 23 12:20:53 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ab475094..d202e77e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 27f59289..0ee86372 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=34351ebdaa15577a2a1f7fd9550018667551fbcb
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=66e45b90362999a5e2e271ec05fe71453dff5426
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=1c76cb3b1fa1a95b156280562ef1ec6022ed9539
+      - verify_ec_task_git_revision=0c1a3cb4b810f33ba4c2134a464021f175f61182
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-6a638b76/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
378c378
<   verify_ec_task_git_revision: 0c1a3cb4b810f33ba4c2134a464021f175f61182
---
>   verify_ec_task_git_revision: 1c76cb3b1fa1a95b156280562ef1ec6022ed9539
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6 
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
<h3>1: Staging changes from 6a638b76 to 52a80909 on Fri Feb 23 12:20:53 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ab475094..d202e77e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 27f59289..0ee86372 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=34351ebdaa15577a2a1f7fd9550018667551fbcb
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=66e45b90362999a5e2e271ec05fe71453dff5426
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=1c76cb3b1fa1a95b156280562ef1ec6022ed9539
+      - verify_ec_task_git_revision=0c1a3cb4b810f33ba4c2134a464021f175f61182
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-6a638b76/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
378c378
<   verify_ec_task_git_revision: 0c1a3cb4b810f33ba4c2134a464021f175f61182
---
>   verify_ec_task_git_revision: 1c76cb3b1fa1a95b156280562ef1ec6022ed9539
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6 
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
<h3>1: Development changes from 6a638b76 to 52a80909 on Fri Feb 23 12:20:53 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ab475094..d202e77e 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 27f59289..0ee86372 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=34351ebdaa15577a2a1f7fd9550018667551fbcb
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=66e45b90362999a5e2e271ec05fe71453dff5426
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=1c76cb3b1fa1a95b156280562ef1ec6022ed9539
+      - verify_ec_task_git_revision=0c1a3cb4b810f33ba4c2134a464021f175f61182
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-6a638b76/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
378c378
<   verify_ec_task_git_revision: 0c1a3cb4b810f33ba4c2134a464021f175f61182
---
>   verify_ec_task_git_revision: 1c76cb3b1fa1a95b156280562ef1ec6022ed9539
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8789d05@sha256:376d25aa4ccf13217b241010cc7c3f0c2e032aefed45272177eee0a69dc7c000
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-988266b@sha256:632f31c5df85f004fb65301b34a93d3e671126ffcd8d6320163ca3c3d47ba8b9
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6 
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
<h3>2: Production changes from edb0bcb2 to 6a638b76 on Thu Feb 22 21:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 6b936d3e..72239d14 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-edb0bcb2/production/components/release/production/kustomize.out.yaml
337,341d336
<               releaseGracePeriodDays:
<                 default: 7
<                 description: ReleaseGracePeriodDays is the number of days a Release
<                   should be kept This value is used to define the Release ExpirationTime
<                 type: integer
510,513d504
<               gracePeriodDays:
<                 description: GracePeriodDays is the number of days a Release should
<                   be kept This value is used to define the Release ExpirationTime
<                 type: integer
644,647d634
<               expirationTime:
<                 description: ExpirationTime is the time when a Release can be purged
<                 format: date-time
<                 type: string
676,681d662
<                   roleBinding:
<                     description: RoleBinding contains the namespaced name of the roleBinding
<                       created for the managed Release PipelineRun executed as part
<                       of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,765d742
<               advisoryRepo:
<                 description: AdvisoryRepo is the repo to create advisories in during
<                   the managed release PipelineRun
<                 type: string
986,995d962
<   - internalrequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
1089,1100d1055
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
1742c1697
<         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86
---
>         image: quay.io/redhat-appstudio/release-service:5bb55c88e868015d2b62412eef174bd6c842441c
1890,1908d1844
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: release-service-webhook-service
<       namespace: release-service
<       path: /mutate-appstudio-redhat-com-v1alpha1-release
<   failurePolicy: Fail
<   name: mrelease.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     resources:
<     - releases 
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
<h3>2: Staging changes from edb0bcb2 to 6a638b76 on Thu Feb 22 21:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 6b936d3e..72239d14 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
<h3>2: Development changes from edb0bcb2 to 6a638b76 on Thu Feb 22 21:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 6b936d3e..72239d14 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
<h3>3: Production changes from bf986224 to edb0bcb2 on Thu Feb 22 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index cd952d4a..83372f19 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
<h3>3: Staging changes from bf986224 to edb0bcb2 on Thu Feb 22 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index cd952d4a..83372f19 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-bf986224/staging/components/release/staging/kustomize.out.yaml
337,341d336
<               releaseGracePeriodDays:
<                 default: 7
<                 description: ReleaseGracePeriodDays is the number of days a Release
<                   should be kept This value is used to define the Release ExpirationTime
<                 type: integer
510,513d504
<               gracePeriodDays:
<                 description: GracePeriodDays is the number of days a Release should
<                   be kept This value is used to define the Release ExpirationTime
<                 type: integer
644,647d634
<               expirationTime:
<                 description: ExpirationTime is the time when a Release can be purged
<                 format: date-time
<                 type: string
676,681d662
<                   roleBinding:
<                     description: RoleBinding contains the namespaced name of the roleBinding
<                       created for the managed Release PipelineRun executed as part
<                       of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,765d742
<               advisoryRepo:
<                 description: AdvisoryRepo is the repo to create advisories in during
<                   the managed release PipelineRun
<                 type: string
986,995d962
<   - internalrequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
1089,1100d1055
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
1742c1697
<         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86
---
>         image: quay.io/redhat-appstudio/release-service:5bb55c88e868015d2b62412eef174bd6c842441c
1890,1908d1844
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: release-service-webhook-service
<       namespace: release-service
<       path: /mutate-appstudio-redhat-com-v1alpha1-release
<   failurePolicy: Fail
<   name: mrelease.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     resources:
<     - releases 
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
<h3>3: Development changes from bf986224 to edb0bcb2 on Thu Feb 22 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index cd952d4a..83372f19 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
<h3>4: Production changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
<h3>4: Staging changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
<h3>4: Development changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-c477e838/development/components/release/development/kustomize.out.yaml
337,341d336
<               releaseGracePeriodDays:
<                 default: 7
<                 description: ReleaseGracePeriodDays is the number of days a Release
<                   should be kept This value is used to define the Release ExpirationTime
<                 type: integer
510,513d504
<               gracePeriodDays:
<                 description: GracePeriodDays is the number of days a Release should
<                   be kept This value is used to define the Release ExpirationTime
<                 type: integer
644,647d634
<               expirationTime:
<                 description: ExpirationTime is the time when a Release can be purged
<                 format: date-time
<                 type: string
676,681d662
<                   roleBinding:
<                     description: RoleBinding contains the namespaced name of the roleBinding
<                       created for the managed Release PipelineRun executed as part
<                       of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,765d742
<               advisoryRepo:
<                 description: AdvisoryRepo is the repo to create advisories in during
<                   the managed release PipelineRun
<                 type: string
986,995d962
<   - internalrequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
1089,1100d1055
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
1742c1697
<         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86
---
>         image: quay.io/redhat-appstudio/release-service:a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
1890,1908d1844
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: release-service-webhook-service
<       namespace: release-service
<       path: /mutate-appstudio-redhat-com-v1alpha1-release
<   failurePolicy: Fail
<   name: mrelease.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     resources:
<     - releases 
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
