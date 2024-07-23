# kustomize changes tracked by commits 
### This file generated at Tue Jul 23 20:06:54 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from dd5e3d63 to 69de669f on Tue Jul 23 19:59:05 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f033419a..2974570a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9665da88..c963a7bb 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8a7c6e721e0fe17507de0b40968a3572db6f0ff0
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c4e5c057470f86c88848e173cda5f1d60dc29851
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a@sha256:440e83da9674708f881b06ce3bd96267f3ec1382c001d15d84ddc9707b73a59c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a
+      - verify_ec_task_git_revision=5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-dd5e3d63/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a@sha256:440e83da9674708f881b06ce3bd96267f3ec1382c001d15d84ddc9707b73a59c
388c388
<   verify_ec_task_git_revision: 5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
---
>   verify_ec_task_git_revision: 1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f 
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
<h3>1: Staging changes from dd5e3d63 to 69de669f on Tue Jul 23 19:59:05 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f033419a..2974570a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9665da88..c963a7bb 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8a7c6e721e0fe17507de0b40968a3572db6f0ff0
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c4e5c057470f86c88848e173cda5f1d60dc29851
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a@sha256:440e83da9674708f881b06ce3bd96267f3ec1382c001d15d84ddc9707b73a59c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a
+      - verify_ec_task_git_revision=5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-dd5e3d63/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a@sha256:440e83da9674708f881b06ce3bd96267f3ec1382c001d15d84ddc9707b73a59c
388c388
<   verify_ec_task_git_revision: 5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
---
>   verify_ec_task_git_revision: 1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from dd5e3d63 to 69de669f on Tue Jul 23 19:59:05 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f033419a..2974570a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9665da88..c963a7bb 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8a7c6e721e0fe17507de0b40968a3572db6f0ff0
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c4e5c057470f86c88848e173cda5f1d60dc29851
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a@sha256:440e83da9674708f881b06ce3bd96267f3ec1382c001d15d84ddc9707b73a59c
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a
+      - verify_ec_task_git_revision=5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-dd5e3d63/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a@sha256:440e83da9674708f881b06ce3bd96267f3ec1382c001d15d84ddc9707b73a59c
388c388
<   verify_ec_task_git_revision: 5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
---
>   verify_ec_task_git_revision: 1b23b2d363bc8fc505fc05cd55b7ea94db9aab6a
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-23cc967@sha256:91fed9ab126b9ee88da4293ddb77fe09accf76e9b790e159ec58b6f436cb5236
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d62ad0d@sha256:7f5a50881c1b1668a3dd4c105f15faae24c88a6807365b6c200cca9e8f509b4f 
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
<h3>2: Production changes from 6b8fd0aa to dd5e3d63 on Tue Jul 23 18:09:02 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index b20369fd..d786aa6c 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -97,6 +97,8 @@ spec:
         - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count"}'
         - '{__name__="pipelinerun_kickoff_not_attempted_count"}'
         - '{__name__="taskrun_pod_create_not_attempted_or_pending_count"}'
+        - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_quota_count"}'
+        - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_node_count"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6b8fd0aa to dd5e3d63 on Tue Jul 23 18:09:02 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index b20369fd..d786aa6c 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -97,6 +97,8 @@ spec:
         - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count"}'
         - '{__name__="pipelinerun_kickoff_not_attempted_count"}'
         - '{__name__="taskrun_pod_create_not_attempted_or_pending_count"}'
+        - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_quota_count"}'
+        - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_node_count"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6b8fd0aa to dd5e3d63 on Tue Jul 23 18:09:02 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index b20369fd..d786aa6c 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -97,6 +97,8 @@ spec:
         - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count"}'
         - '{__name__="pipelinerun_kickoff_not_attempted_count"}'
         - '{__name__="taskrun_pod_create_not_attempted_or_pending_count"}'
+        - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_quota_count"}'
+        - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_node_count"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>3: Production changes from b99fee7d to 6b8fd0aa on Tue Jul 23 16:54:50 2024 </h3>  
 
<details> 
<summary>Git Diff (127 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index b406a17f..bfbd9b30 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,10 +31,23 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
+- op: add
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
+  # replicas - default pipeline-service setting is 1
+  # memory limit - default upstream setting is 4Gi
+  value:
+    replicas: 2
+    template:
+      spec:
+        containers:
+          - name: controller
+            resources:
+              limits:
+                cpu: "1"
+                memory: 8Gi
+              requests:
+                cpu: 100m
+                memory: 100Mi
 - op: replace
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
   # default pipeline-service setting is 1
@@ -45,4 +58,4 @@
   value: 2
 - op: replace
   path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
-  value: 6
\ No newline at end of file
+  value: 6
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 9817a9c1..810a259c 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e2b70968..2c34c2c1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index ce40c073..5d03f487 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index f4e8771b..4a7cf3f7 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-b99fee7d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2076,2086d2075
<             template:
<               spec:
<                 containers:
<                 - name: controller
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 8Gi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
./commit-b99fee7d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2076,2086d2075
<             template:
<               spec:
<                 containers:
<                 - name: controller
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 8Gi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
./commit-b99fee7d/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2076,2086d2075
<             template:
<               spec:
<                 containers:
<                 - name: controller
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 8Gi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
./commit-b99fee7d/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2076,2086d2075
<             template:
<               spec:
<                 containers:
<                 - name: controller
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 8Gi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi 
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
<h3>3: Staging changes from b99fee7d to 6b8fd0aa on Tue Jul 23 16:54:50 2024 </h3>  
 
<details> 
<summary>Git Diff (127 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index b406a17f..bfbd9b30 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,10 +31,23 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
+- op: add
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
+  # replicas - default pipeline-service setting is 1
+  # memory limit - default upstream setting is 4Gi
+  value:
+    replicas: 2
+    template:
+      spec:
+        containers:
+          - name: controller
+            resources:
+              limits:
+                cpu: "1"
+                memory: 8Gi
+              requests:
+                cpu: 100m
+                memory: 100Mi
 - op: replace
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
   # default pipeline-service setting is 1
@@ -45,4 +58,4 @@
   value: 2
 - op: replace
   path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
-  value: 6
\ No newline at end of file
+  value: 6
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 9817a9c1..810a259c 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e2b70968..2c34c2c1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index ce40c073..5d03f487 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index f4e8771b..4a7cf3f7 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from b99fee7d to 6b8fd0aa on Tue Jul 23 16:54:50 2024 </h3>  
 
<details> 
<summary>Git Diff (127 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index b406a17f..bfbd9b30 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,10 +31,23 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
+- op: add
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
+  # replicas - default pipeline-service setting is 1
+  # memory limit - default upstream setting is 4Gi
+  value:
+    replicas: 2
+    template:
+      spec:
+        containers:
+          - name: controller
+            resources:
+              limits:
+                cpu: "1"
+                memory: 8Gi
+              requests:
+                cpu: 100m
+                memory: 100Mi
 - op: replace
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
   # default pipeline-service setting is 1
@@ -45,4 +58,4 @@
   value: 2
 - op: replace
   path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
-  value: 6
\ No newline at end of file
+  value: 6
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 9817a9c1..810a259c 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e2b70968..2c34c2c1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index ce40c073..5d03f487 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index f4e8771b..4a7cf3f7 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2073,6 +2073,17 @@ spec:
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 8Gi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-webhook:
           spec:
             template: 
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
<h3>4: Production changes from 8baaba44 to b99fee7d on Tue Jul 23 15:59:49 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 236dcbe7..bbeaadce 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -14,7 +14,11 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: workspaces-{{nameNormalized}} 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 8baaba44 to b99fee7d on Tue Jul 23 15:59:49 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 236dcbe7..bbeaadce 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -14,7 +14,11 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: workspaces-{{nameNormalized}} 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 8baaba44 to b99fee7d on Tue Jul 23 15:59:49 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 236dcbe7..bbeaadce 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -14,7 +14,11 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: workspaces-{{nameNormalized}} 
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
