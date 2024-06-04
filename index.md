# kustomize changes tracked by commits 
### This file generated at Tue Jun  4 16:08:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 239603a8 to 1b4ae8ce on Tue Jun 4 15:58:40 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 33653751..fc19cb7d 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-239603a8/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
743c743
<         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c
---
>         image: quay.io/konflux-ci/build-service:edd586d9d07aba61d6d7f853a3db679db7d1a893
./commit-239603a8/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
743c743
<         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c
---
>         image: quay.io/konflux-ci/build-service:edd586d9d07aba61d6d7f853a3db679db7d1a893 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 239603a8 to 1b4ae8ce on Tue Jun 4 15:58:40 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 33653751..fc19cb7d 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 239603a8 to 1b4ae8ce on Tue Jun 4 15:58:40 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 33653751..fc19cb7d 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>2: Production changes from d95eb7d8 to 239603a8 on Tue Jun 4 14:44:24 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1ee96f44..7be48df7 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1307dcb0..ae47d50e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8b8d7be2c5c2a795e1f83e5855b21e600c86f949
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f575b6dcf2c4768b9230756c1c12cdc0c71057c5
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=67c898079a20544c074023fadc8093fc192945ad
+      - verify_ec_task_git_revision=62077017c96466f58162b75789dd18b0e49d43bb
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-d95eb7d8/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
378c378
<   verify_ec_task_git_revision: 62077017c96466f58162b75789dd18b0e49d43bb
---
>   verify_ec_task_git_revision: 67c898079a20544c074023fadc8093fc192945ad
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from d95eb7d8 to 239603a8 on Tue Jun 4 14:44:24 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1ee96f44..7be48df7 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1307dcb0..ae47d50e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8b8d7be2c5c2a795e1f83e5855b21e600c86f949
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f575b6dcf2c4768b9230756c1c12cdc0c71057c5
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=67c898079a20544c074023fadc8093fc192945ad
+      - verify_ec_task_git_revision=62077017c96466f58162b75789dd18b0e49d43bb
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-d95eb7d8/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
378c378
<   verify_ec_task_git_revision: 62077017c96466f58162b75789dd18b0e49d43bb
---
>   verify_ec_task_git_revision: 67c898079a20544c074023fadc8093fc192945ad
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from d95eb7d8 to 239603a8 on Tue Jun 4 14:44:24 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 1ee96f44..7be48df7 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 1307dcb0..ae47d50e 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8b8d7be2c5c2a795e1f83e5855b21e600c86f949
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f575b6dcf2c4768b9230756c1c12cdc0c71057c5
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=67c898079a20544c074023fadc8093fc192945ad
+      - verify_ec_task_git_revision=62077017c96466f58162b75789dd18b0e49d43bb
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-d95eb7d8/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
378c378
<   verify_ec_task_git_revision: 62077017c96466f58162b75789dd18b0e49d43bb
---
>   verify_ec_task_git_revision: 67c898079a20544c074023fadc8093fc192945ad
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e 
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
<h3>3: Production changes from 15692590 to d95eb7d8 on Tue Jun 4 13:49:31 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
index 1ee73e1a..c8709fea 100644
--- a/components/gitops/development/gitops-service-argocd.yaml
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -8,4 +8,8 @@ spec:
     resources:
       requests:
         cpu: 100m
-        memory: 100Mi
\ No newline at end of file
+        memory: 100Mi
+  server:
+    env:
+      - name: ARGOCD_EXEC_TIMEOUT
+        value: 5m
\ No newline at end of file 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 15692590 to d95eb7d8 on Tue Jun 4 13:49:31 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
index 1ee73e1a..c8709fea 100644
--- a/components/gitops/development/gitops-service-argocd.yaml
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -8,4 +8,8 @@ spec:
     resources:
       requests:
         cpu: 100m
-        memory: 100Mi
\ No newline at end of file
+        memory: 100Mi
+  server:
+    env:
+      - name: ARGOCD_EXEC_TIMEOUT
+        value: 5m
\ No newline at end of file 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 15692590 to d95eb7d8 on Tue Jun 4 13:49:31 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
index 1ee73e1a..c8709fea 100644
--- a/components/gitops/development/gitops-service-argocd.yaml
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -8,4 +8,8 @@ spec:
     resources:
       requests:
         cpu: 100m
-        memory: 100Mi
\ No newline at end of file
+        memory: 100Mi
+  server:
+    env:
+      - name: ARGOCD_EXEC_TIMEOUT
+        value: 5m
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-15692590/development/components/gitops/development/kustomize.out.yaml
2902,2904d2901
<     env:
<     - name: ARGOCD_EXEC_TIMEOUT
<       value: 5m 
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
<h3>4: Production changes from 57063a23 to 15692590 on Tue Jun 4 13:49:24 2024 </h3>  
 
<details> 
<summary>Git Diff (91 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
index 6aaf838c..ee3ac391 100644
--- a/components/enterprise-contract/download-service.yaml
+++ b/components/enterprise-contract/download-service.yaml
@@ -142,7 +142,7 @@ spec:
                 echo "Downloading ${base}@${digest} for ${os}/${architecture}"
 
                 mkdir -p "${os}_${architecture}"
-                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
                 chmod +x "${os}_${architecture}/ec"
                 tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
                 echo "Downloaded ${base}@${digest}"
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6c8a82a3..1ee96f44 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index dd5ba881..1307dcb0 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5c0827cab9af9ed8ac51ebf9ff3dbc229da46144
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8b8d7be2c5c2a795e1f83e5855b21e600c86f949
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=20834d428d339b5af505af5daf79f823a83ee913
+      - verify_ec_task_git_revision=67c898079a20544c074023fadc8093fc192945ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-57063a23/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
378c378
<   verify_ec_task_git_revision: 67c898079a20544c074023fadc8093fc192945ad
---
>   verify_ec_task_git_revision: 20834d428d339b5af505af5daf79f823a83ee913
492c492
<             oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
---
>             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 57063a23 to 15692590 on Tue Jun 4 13:49:24 2024 </h3>  
 
<details> 
<summary>Git Diff (91 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
index 6aaf838c..ee3ac391 100644
--- a/components/enterprise-contract/download-service.yaml
+++ b/components/enterprise-contract/download-service.yaml
@@ -142,7 +142,7 @@ spec:
                 echo "Downloading ${base}@${digest} for ${os}/${architecture}"
 
                 mkdir -p "${os}_${architecture}"
-                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
                 chmod +x "${os}_${architecture}/ec"
                 tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
                 echo "Downloaded ${base}@${digest}"
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6c8a82a3..1ee96f44 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index dd5ba881..1307dcb0 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5c0827cab9af9ed8ac51ebf9ff3dbc229da46144
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8b8d7be2c5c2a795e1f83e5855b21e600c86f949
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=20834d428d339b5af505af5daf79f823a83ee913
+      - verify_ec_task_git_revision=67c898079a20544c074023fadc8093fc192945ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-57063a23/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
378c378
<   verify_ec_task_git_revision: 67c898079a20544c074023fadc8093fc192945ad
---
>   verify_ec_task_git_revision: 20834d428d339b5af505af5daf79f823a83ee913
492c492
<             oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
---
>             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 57063a23 to 15692590 on Tue Jun 4 13:49:24 2024 </h3>  
 
<details> 
<summary>Git Diff (91 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
index 6aaf838c..ee3ac391 100644
--- a/components/enterprise-contract/download-service.yaml
+++ b/components/enterprise-contract/download-service.yaml
@@ -142,7 +142,7 @@ spec:
                 echo "Downloading ${base}@${digest} for ${os}/${architecture}"
 
                 mkdir -p "${os}_${architecture}"
-                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
                 chmod +x "${os}_${architecture}/ec"
                 tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
                 echo "Downloaded ${base}@${digest}"
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6c8a82a3..1ee96f44 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index dd5ba881..1307dcb0 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5c0827cab9af9ed8ac51ebf9ff3dbc229da46144
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=8b8d7be2c5c2a795e1f83e5855b21e600c86f949
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=20834d428d339b5af505af5daf79f823a83ee913
+      - verify_ec_task_git_revision=67c898079a20544c074023fadc8093fc192945ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-57063a23/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:67c898079a20544c074023fadc8093fc192945ad@sha256:acac1cdfb188792fce14b277550a5a5931f28ce49ffd2bb063041c06717d9c0e
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:20834d428d339b5af505af5daf79f823a83ee913@sha256:ce600537e1fb66113a36d2c4a6663756b0b512e3362de34720aa1c39e05ecc3e
378c378
<   verify_ec_task_git_revision: 67c898079a20544c074023fadc8093fc192945ad
---
>   verify_ec_task_git_revision: 20834d428d339b5af505af5daf79f823a83ee913
492c492
<             oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
---
>             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-c6e7b6d@sha256:aeebc064047a1edc91f8bc88f4a5c067ed0f0faf9b48f7977f33c2fe45726b1b
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-ca688fd@sha256:0f551933b802e9eb0cccae726ba810f3372bb85ad84409ab5c2fc3873013691a
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0539ec4@sha256:f407c22e76c46c5a7f669f92c87b6770c8ede5bc5036ef015566e4e95ec0053e
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-8f22774@sha256:f887fb71d95ebe45703917da60770580035e9158b26b89e56efbba05474f6ec2 
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
