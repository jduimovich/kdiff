# kustomize changes tracked by commits 
### This file generated at Thu Jan 25 20:06:55 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from dc3674cc to f77b87c6 on Thu Jan 25 19:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index b207bf90..66342ea7 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: Red Hat Trusted App Pipeline
-    custom-console-name: Red Hat Trusted App Pipeline
+    application-name: Red Hat Konflux
+    custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from dc3674cc to f77b87c6 on Thu Jan 25 19:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index b207bf90..66342ea7 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: Red Hat Trusted App Pipeline
-    custom-console-name: Red Hat Trusted App Pipeline
+    application-name: Red Hat Konflux
+    custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline 
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
<h3>1: Development changes from dc3674cc to f77b87c6 on Thu Jan 25 19:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index b207bf90..66342ea7 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: Red Hat Trusted App Pipeline
-    custom-console-name: Red Hat Trusted App Pipeline
+    application-name: Red Hat Konflux
+    custom-console-name: Red Hat Konflux
     custom-console-url: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ad431b0a to dc3674cc on Thu Jan 25 19:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f069fe47..d1d14177 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46945111..462c615e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
+      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-ad431b0a/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
378c378
<   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
---
>   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ad431b0a to dc3674cc on Thu Jan 25 19:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f069fe47..d1d14177 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46945111..462c615e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
+      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-ad431b0a/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
378c378
<   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
---
>   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2 
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
<h3>2: Development changes from ad431b0a to dc3674cc on Thu Jan 25 19:08:49 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f069fe47..d1d14177 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46945111..462c615e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
+      - verify_ec_task_git_revision=88bf49c91542e5501c0f4300fd8ad6df665bf20e
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-ad431b0a/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:88bf49c91542e5501c0f4300fd8ad6df665bf20e@sha256:3133d60c2e6468045f3839d4eb81be0d69bfca7ae8bcfbee477533ce4691b2b3
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
378c378
<   verify_ec_task_git_revision: 88bf49c91542e5501c0f4300fd8ad6df665bf20e
---
>   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d418adb@sha256:e78522795ac42a81ca394f047daba4f96663963a175b9d016088ea9da260b37a
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 334c72ea to ad431b0a on Thu Jan 25 18:17:12 2024 </h3>  
 
<details> 
<summary>Git Diff (4 lines)</summary>  

``` 
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml.disabled
similarity index 100%
rename from .tekton/rhtap-staging-e2e-ci.yaml
rename to .tekton/rhtap-staging-e2e-ci.yaml.disabled 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 334c72ea to ad431b0a on Thu Jan 25 18:17:12 2024 </h3>  
 
<details> 
<summary>Git Diff (4 lines)</summary>  

``` 
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml.disabled
similarity index 100%
rename from .tekton/rhtap-staging-e2e-ci.yaml
rename to .tekton/rhtap-staging-e2e-ci.yaml.disabled 
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
<h3>3: Development changes from 334c72ea to ad431b0a on Thu Jan 25 18:17:12 2024 </h3>  
 
<details> 
<summary>Git Diff (4 lines)</summary>  

``` 
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml.disabled
similarity index 100%
rename from .tekton/rhtap-staging-e2e-ci.yaml
rename to .tekton/rhtap-staging-e2e-ci.yaml.disabled 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 695fdf82 to 334c72ea on Thu Jan 25 17:51:51 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 374bb49e..94604248 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8f6952fc..4eec59be 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
 
 namespace: integration-service
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 695fdf82 to 334c72ea on Thu Jan 25 17:51:51 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 374bb49e..94604248 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8f6952fc..4eec59be 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-695fdf82/staging/components/integration/staging/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:81664606d240735d2e58396d046bb3544d0e0d1f
---
>         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
1139,1141d1138
<           protocol: TCP
<         - containerPort: 8081
<           name: probes 
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
<h3>4: Development changes from 695fdf82 to 334c72ea on Thu Jan 25 17:51:51 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 374bb49e..94604248 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8f6952fc..4eec59be 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-695fdf82/development/components/integration/development/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:81664606d240735d2e58396d046bb3544d0e0d1f
---
>         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
1139,1141d1138
<           protocol: TCP
<         - containerPort: 8081
<           name: probes 
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
```
 
</details> 
<br> 


</div>
