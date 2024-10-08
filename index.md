# kustomize changes tracked by commits 
### This file generated at Tue Oct  8 12:06:44 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a4673d1c to addb2609 on Tue Oct 8 11:45:23 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index d2100ea3..3eeb44f3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 2048Mi
+            memory: 4096Mi
           requests:
             cpu: 100m
-            memory: 1024Mi
+            memory: 3072Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a4673d1c/production/components/release/production/kustomize.out.yaml
1899c1899
<             memory: 4096Mi
---
>             memory: 2048Mi
1902c1902
<             memory: 3072Mi
---
>             memory: 1024Mi 
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
<h3>1: Staging changes from a4673d1c to addb2609 on Tue Oct 8 11:45:23 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index d2100ea3..3eeb44f3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 2048Mi
+            memory: 4096Mi
           requests:
             cpu: 100m
-            memory: 1024Mi
+            memory: 3072Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a4673d1c/staging/components/release/staging/kustomize.out.yaml
1900c1900
<             memory: 4096Mi
---
>             memory: 2048Mi
1903c1903
<             memory: 3072Mi
---
>             memory: 1024Mi 
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
<h3>1: Development changes from a4673d1c to addb2609 on Tue Oct 8 11:45:23 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index d2100ea3..3eeb44f3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 2048Mi
+            memory: 4096Mi
           requests:
             cpu: 100m
-            memory: 1024Mi
+            memory: 3072Mi 
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
<h3>2: Production changes from 44b236bd to a4673d1c on Tue Oct 8 09:50:03 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ee4c86c1..e92a0320 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1f181718..b19190c1 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=cec5c56e31fcdc5d85665934ea11933d944c527a
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
+      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-44b236bd/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
332c332
<   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
---
>   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742 
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
<h3>2: Staging changes from 44b236bd to a4673d1c on Tue Oct 8 09:50:03 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ee4c86c1..e92a0320 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1f181718..b19190c1 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=cec5c56e31fcdc5d85665934ea11933d944c527a
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
+      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-44b236bd/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
332c332
<   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
---
>   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742 
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
<h3>2: Development changes from 44b236bd to a4673d1c on Tue Oct 8 09:50:03 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ee4c86c1..e92a0320 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1f181718..b19190c1 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=cec5c56e31fcdc5d85665934ea11933d944c527a
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1e8d6a079b53c46a1520ff462a25c98ba064471e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
+      - verify_ec_task_git_revision=009ff244ec43d7499158d4ae096bf42ecf53094a
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-44b236bd/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:009ff244ec43d7499158d4ae096bf42ecf53094a@sha256:1b86eb65b16c524dc6fd48e3e3180ca601cd6e6e99cfa1a5faf9af0937fd5c5c
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
332c332
<   verify_ec_task_git_revision: 009ff244ec43d7499158d4ae096bf42ecf53094a
---
>   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742 
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
<h3>3: Production changes from 8e4a1fd0 to 44b236bd on Tue Oct 8 03:30:03 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4e790943..a0b3148b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
+  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 7b6214dc..efd1428a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
+  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 8e4a1fd0 to 44b236bd on Tue Oct 8 03:30:03 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4e790943..a0b3148b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
+  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 7b6214dc..efd1428a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
+  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-8e4a1fd0/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392
---
>         image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392
---
>             image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0 
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
<h3>3: Development changes from 8e4a1fd0 to 44b236bd on Tue Oct 8 03:30:03 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 4e790943..a0b3148b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
+  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 7b6214dc..efd1428a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7e115596eda1d0df2d578338d0e496d44b91e5f0
+- https://github.com/konflux-ci/integration-service/config/default?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7e115596eda1d0df2d578338d0e496d44b91e5f0
+  newTag: f8e5f12dccbcd6eec9780c32e7287dce1cece392
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-8e4a1fd0/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392
---
>         image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:f8e5f12dccbcd6eec9780c32e7287dce1cece392
---
>             image: quay.io/redhat-appstudio/integration-service:7e115596eda1d0df2d578338d0e496d44b91e5f0 
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
<h3>4: Production changes from 1ba06098 to 8e4a1fd0 on Mon Oct 7 14:47:15 2024 </h3>  
 
<details> 
<summary>Git Diff (1410 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index e64ee99b..e3bc4180 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - tiertemplate-appstudio-contributor-829105171-829105171.yaml
 - tiertemplate-appstudio-maintainer-1904354742-1904354742.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-maintainer-474752551-474752551.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index ae9f3bad..e8732ff0 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudio-contributor-829105171-829105171
     maintainer:
-      templateRef: appstudio-maintainer-1904354742-1904354742
+      templateRef: appstudio-maintainer-474752551-474752551
     viewer:
       templateRef: appstudio-viewer-4256863455-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
new file mode 100644
index 00000000..25e45398
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-474752551-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 474752551-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index a7b662e8..368750b4 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -22,6 +22,7 @@ resources:
 - tiertemplate-appstudiolarge-maintainer-1929014883-1904354742.yaml
 - tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-maintainer-3994678728-1904354742.yaml
+- tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 0df7db71..0bb72be2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudiolarge-contributor-3994678728-829105171
     maintainer:
-      templateRef: appstudiolarge-maintainer-3994678728-1904354742
+      templateRef: appstudiolarge-maintainer-3994678728-474752551
     viewer:
       templateRef: appstudiolarge-viewer-3994678728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
new file mode 100644
index 00000000..bf30f1b3
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-3994678728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index 7e9fccb9..1f15dd27 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 173ed6af..af353e89 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudioxlarge-contributor-884010306-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+      templateRef: appstudioxlarge-maintainer-884010306-474752551
     viewer:
       templateRef: appstudioxlarge-viewer-884010306-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
new file mode 100644
index 00000000..75e9e1f2
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
index 2f9f997d..bc879bb0 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -161,7 +161,6 @@ objects:
     - create
     - update
     - patch
-    - delete
 - apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index e64ee99b..e3bc4180 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - tiertemplate-appstudio-contributor-829105171-829105171.yaml
 - tiertemplate-appstudio-maintainer-1904354742-1904354742.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-maintainer-474752551-474752551.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index ae9f3bad..e8732ff0 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudio-contributor-829105171-829105171
     maintainer:
-      templateRef: appstudio-maintainer-1904354742-1904354742
+      templateRef: appstudio-maintainer-474752551-474752551
     viewer:
       templateRef: appstudio-viewer-4256863455-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
new file mode 100644
index 00000000..25e45398
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-474752551-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 474752551-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index d3a42fd1..0bb978e9 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -22,6 +22,7 @@ resources:
 - tiertemplate-appstudiolarge-maintainer-1929014883-1904354742.yaml
 - tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-maintainer-3994678728-1904354742.yaml
+- tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 0df7db71..0bb72be2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudiolarge-contributor-3994678728-829105171
     maintainer:
-      templateRef: appstudiolarge-maintainer-3994678728-1904354742
+      templateRef: appstudiolarge-maintainer-3994678728-474752551
     viewer:
       templateRef: appstudiolarge-viewer-3994678728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
new file mode 100644
index 00000000..bf30f1b3
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-3994678728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index 7e9fccb9..1f15dd27 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 173ed6af..af353e89 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudioxlarge-contributor-884010306-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+      templateRef: appstudioxlarge-maintainer-884010306-474752551
     viewer:
       templateRef: appstudioxlarge-viewer-884010306-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
new file mode 100644
index 00000000..75e9e1f2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer 
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
<h3>4: Staging changes from 1ba06098 to 8e4a1fd0 on Mon Oct 7 14:47:15 2024 </h3>  
 
<details> 
<summary>Git Diff (1410 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index e64ee99b..e3bc4180 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - tiertemplate-appstudio-contributor-829105171-829105171.yaml
 - tiertemplate-appstudio-maintainer-1904354742-1904354742.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-maintainer-474752551-474752551.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index ae9f3bad..e8732ff0 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudio-contributor-829105171-829105171
     maintainer:
-      templateRef: appstudio-maintainer-1904354742-1904354742
+      templateRef: appstudio-maintainer-474752551-474752551
     viewer:
       templateRef: appstudio-viewer-4256863455-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
new file mode 100644
index 00000000..25e45398
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-474752551-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 474752551-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index a7b662e8..368750b4 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -22,6 +22,7 @@ resources:
 - tiertemplate-appstudiolarge-maintainer-1929014883-1904354742.yaml
 - tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-maintainer-3994678728-1904354742.yaml
+- tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 0df7db71..0bb72be2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudiolarge-contributor-3994678728-829105171
     maintainer:
-      templateRef: appstudiolarge-maintainer-3994678728-1904354742
+      templateRef: appstudiolarge-maintainer-3994678728-474752551
     viewer:
       templateRef: appstudiolarge-viewer-3994678728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
new file mode 100644
index 00000000..bf30f1b3
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-3994678728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index 7e9fccb9..1f15dd27 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 173ed6af..af353e89 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudioxlarge-contributor-884010306-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+      templateRef: appstudioxlarge-maintainer-884010306-474752551
     viewer:
       templateRef: appstudioxlarge-viewer-884010306-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
new file mode 100644
index 00000000..75e9e1f2
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
index 2f9f997d..bc879bb0 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -161,7 +161,6 @@ objects:
     - create
     - update
     - patch
-    - delete
 - apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index e64ee99b..e3bc4180 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - tiertemplate-appstudio-contributor-829105171-829105171.yaml
 - tiertemplate-appstudio-maintainer-1904354742-1904354742.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-maintainer-474752551-474752551.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index ae9f3bad..e8732ff0 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudio-contributor-829105171-829105171
     maintainer:
-      templateRef: appstudio-maintainer-1904354742-1904354742
+      templateRef: appstudio-maintainer-474752551-474752551
     viewer:
       templateRef: appstudio-viewer-4256863455-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
new file mode 100644
index 00000000..25e45398
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-474752551-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 474752551-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index d3a42fd1..0bb978e9 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -22,6 +22,7 @@ resources:
 - tiertemplate-appstudiolarge-maintainer-1929014883-1904354742.yaml
 - tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-maintainer-3994678728-1904354742.yaml
+- tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 0df7db71..0bb72be2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudiolarge-contributor-3994678728-829105171
     maintainer:
-      templateRef: appstudiolarge-maintainer-3994678728-1904354742
+      templateRef: appstudiolarge-maintainer-3994678728-474752551
     viewer:
       templateRef: appstudiolarge-viewer-3994678728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
new file mode 100644
index 00000000..bf30f1b3
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-3994678728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index 7e9fccb9..1f15dd27 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 173ed6af..af353e89 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudioxlarge-contributor-884010306-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+      templateRef: appstudioxlarge-maintainer-884010306-474752551
     viewer:
       templateRef: appstudioxlarge-viewer-884010306-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
new file mode 100644
index 00000000..75e9e1f2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer 
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
<h3>4: Development changes from 1ba06098 to 8e4a1fd0 on Mon Oct 7 14:47:15 2024 </h3>  
 
<details> 
<summary>Git Diff (1410 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index e64ee99b..e3bc4180 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - tiertemplate-appstudio-contributor-829105171-829105171.yaml
 - tiertemplate-appstudio-maintainer-1904354742-1904354742.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-maintainer-474752551-474752551.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index ae9f3bad..e8732ff0 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudio-contributor-829105171-829105171
     maintainer:
-      templateRef: appstudio-maintainer-1904354742-1904354742
+      templateRef: appstudio-maintainer-474752551-474752551
     viewer:
       templateRef: appstudio-viewer-4256863455-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
new file mode 100644
index 00000000..25e45398
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-474752551-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 474752551-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index a7b662e8..368750b4 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -22,6 +22,7 @@ resources:
 - tiertemplate-appstudiolarge-maintainer-1929014883-1904354742.yaml
 - tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-maintainer-3994678728-1904354742.yaml
+- tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 0df7db71..0bb72be2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudiolarge-contributor-3994678728-829105171
     maintainer:
-      templateRef: appstudiolarge-maintainer-3994678728-1904354742
+      templateRef: appstudiolarge-maintainer-3994678728-474752551
     viewer:
       templateRef: appstudiolarge-viewer-3994678728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
new file mode 100644
index 00000000..bf30f1b3
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-3994678728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index 7e9fccb9..1f15dd27 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 173ed6af..af353e89 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudioxlarge-contributor-884010306-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+      templateRef: appstudioxlarge-maintainer-884010306-474752551
     viewer:
       templateRef: appstudioxlarge-viewer-884010306-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
new file mode 100644
index 00000000..75e9e1f2
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
index 2f9f997d..bc879bb0 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -161,7 +161,6 @@ objects:
     - create
     - update
     - patch
-    - delete
 - apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index e64ee99b..e3bc4180 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - tiertemplate-appstudio-contributor-829105171-829105171.yaml
 - tiertemplate-appstudio-maintainer-1904354742-1904354742.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-maintainer-474752551-474752551.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index ae9f3bad..e8732ff0 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudio-contributor-829105171-829105171
     maintainer:
-      templateRef: appstudio-maintainer-1904354742-1904354742
+      templateRef: appstudio-maintainer-474752551-474752551
     viewer:
       templateRef: appstudio-viewer-4256863455-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
new file mode 100644
index 00000000..25e45398
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-474752551-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-474752551-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 474752551-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index d3a42fd1..0bb978e9 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -22,6 +22,7 @@ resources:
 - tiertemplate-appstudiolarge-maintainer-1929014883-1904354742.yaml
 - tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-maintainer-3994678728-1904354742.yaml
+- tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 0df7db71..0bb72be2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudiolarge-contributor-3994678728-829105171
     maintainer:
-      templateRef: appstudiolarge-maintainer-3994678728-1904354742
+      templateRef: appstudiolarge-maintainer-3994678728-474752551
     viewer:
       templateRef: appstudiolarge-viewer-3994678728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
new file mode 100644
index 00000000..bf30f1b3
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-3994678728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-3994678728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index 7e9fccb9..1f15dd27 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 173ed6af..af353e89 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -18,7 +18,7 @@ spec:
     contributor:
       templateRef: appstudioxlarge-contributor-884010306-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+      templateRef: appstudioxlarge-maintainer-884010306-474752551
     viewer:
       templateRef: appstudioxlarge-viewer-884010306-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
new file mode 100644
index 00000000..75e9e1f2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer 
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
