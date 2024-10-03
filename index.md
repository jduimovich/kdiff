# kustomize changes tracked by commits 
### This file generated at Thu Oct  3 20:06:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c496182c to 709de158 on Thu Oct 3 19:18:21 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index ade79e52..896e3f8b 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -40,3 +40,13 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-c496182c/production/components/release/production/kustomize.out.yaml
939,948d938
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - create
<   - delete
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
<h3>1: Staging changes from c496182c to 709de158 on Thu Oct 3 19:18:21 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index ade79e52..896e3f8b 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -40,3 +40,13 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-c496182c/staging/components/release/staging/kustomize.out.yaml
939,948d938
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - create
<   - delete
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from c496182c to 709de158 on Thu Oct 3 19:18:21 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index ade79e52..896e3f8b 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -40,3 +40,13 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-c496182c/development/components/release/development/kustomize.out.yaml
1050,1059d1049
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - create
<   - delete
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5270779a to c496182c on Thu Oct 3 16:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7f7f34a0..ee4c86c1 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 07aca759..1f181718 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=59dd12edc46f43f8d964f64450ee9fa920232f80
+      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5270779a/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
332c332
<   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
---
>   verify_ec_task_git_revision: 59dd12edc46f43f8d964f64450ee9fa920232f80
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720 
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
<h3>2: Staging changes from 5270779a to c496182c on Thu Oct 3 16:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7f7f34a0..ee4c86c1 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 07aca759..1f181718 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=59dd12edc46f43f8d964f64450ee9fa920232f80
+      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5270779a/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
332c332
<   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
---
>   verify_ec_task_git_revision: 59dd12edc46f43f8d964f64450ee9fa920232f80
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720 
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
<h3>2: Development changes from 5270779a to c496182c on Thu Oct 3 16:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7f7f34a0..ee4c86c1 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 07aca759..1f181718 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=59dd12edc46f43f8d964f64450ee9fa920232f80
+      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5270779a/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
332c332
<   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
---
>   verify_ec_task_git_revision: 59dd12edc46f43f8d964f64450ee9fa920232f80
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720 
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
<h3>3: Production changes from 3076d38f to 5270779a on Thu Oct 3 13:44:54 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
index 4c0b9387..8a2795fe 100644
--- a/components/repository-validator/production/kustomization.yaml
+++ b/components/repository-validator/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
-  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=1d1293430f128542c82966c4992622f79de785c9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=4f9859137cd4fc8a21abc0e85eaccf27d40b91f8
 images:
   - name: controller
     newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator 
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
<h3>3: Staging changes from 3076d38f to 5270779a on Thu Oct 3 13:44:54 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
index 4c0b9387..8a2795fe 100644
--- a/components/repository-validator/production/kustomization.yaml
+++ b/components/repository-validator/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
-  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=1d1293430f128542c82966c4992622f79de785c9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=4f9859137cd4fc8a21abc0e85eaccf27d40b91f8
 images:
   - name: controller
     newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator 
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
<h3>3: Development changes from 3076d38f to 5270779a on Thu Oct 3 13:44:54 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
index 4c0b9387..8a2795fe 100644
--- a/components/repository-validator/production/kustomization.yaml
+++ b/components/repository-validator/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
-  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=1d1293430f128542c82966c4992622f79de785c9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=4f9859137cd4fc8a21abc0e85eaccf27d40b91f8
 images:
   - name: controller
     newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator 
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
<h3>4: Production changes from ecb45d22 to 3076d38f on Thu Oct 3 08:05:53 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 96e1ea98..231bc649 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -22,6 +22,13 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
+metadata:
+  name: cachi2
+spec:
+  url: "https://github.com/containerbuildsystem/cachi2"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
 metadata:
   name: quality-dashboard
 spec:
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 352b85c0..8b4d07ae 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: cachi2
-spec:
-  url: "https://github.com/containerbuildsystem/cachi2"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: infra-deployments
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-ecb45d22/production/components/konflux-ci/production/kustomize.out.yaml
289,297d288
<   name: cachi2
< spec:
<   url: https://github.com/containerbuildsystem/cachi2
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-ecb45d22/production/components/tekton-ci/production/kustomize.out.yaml
295a296,304
>   name: cachi2
> spec:
>   url: https://github.com/containerbuildsystem/cachi2
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Staging changes from ecb45d22 to 3076d38f on Thu Oct 3 08:05:53 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 96e1ea98..231bc649 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -22,6 +22,13 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
+metadata:
+  name: cachi2
+spec:
+  url: "https://github.com/containerbuildsystem/cachi2"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
 metadata:
   name: quality-dashboard
 spec:
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 352b85c0..8b4d07ae 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: cachi2
-spec:
-  url: "https://github.com/containerbuildsystem/cachi2"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: infra-deployments
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-ecb45d22/staging/components/konflux-ci/staging/kustomize.out.yaml
224,232d223
<   name: cachi2
< spec:
<   url: https://github.com/containerbuildsystem/cachi2
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-ecb45d22/staging/components/tekton-ci/staging/kustomize.out.yaml
223a224,232
>   name: cachi2
> spec:
>   url: https://github.com/containerbuildsystem/cachi2
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Development changes from ecb45d22 to 3076d38f on Thu Oct 3 08:05:53 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 96e1ea98..231bc649 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -22,6 +22,13 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
+metadata:
+  name: cachi2
+spec:
+  url: "https://github.com/containerbuildsystem/cachi2"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
 metadata:
   name: quality-dashboard
 spec:
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 352b85c0..8b4d07ae 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: cachi2
-spec:
-  url: "https://github.com/containerbuildsystem/cachi2"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: infra-deployments
 spec: 
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
