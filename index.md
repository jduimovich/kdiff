# kustomize changes tracked by commits 
### This file generated at Tue Feb 27 16:07:37 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 55d02fea to d22b5867 on Tue Feb 27 16:01:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d202e77e..414c8884 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -1,5 +1,5 @@
 #
-# The contents of this file are automatically generated based on the RHTAP configs defined in the
+# The contents of this file are automatically generated based on the Konflux configs defined in the
 # github.com/enterprise-contract/config repo. Any manual modifications will be overridden.
 #
 
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -31,7 +31,7 @@ metadata:
   name: all
   namespace: enterprise-contract-service
 spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for RHTAP builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Everything (experimental)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -96,7 +96,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all RHTAP builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 0ee86372..14c32f54 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=0c1a3cb4b810f33ba4c2134a464021f175f61182
+      - verify_ec_task_git_revision=d8eb39f4d4019208d4635cbc6226d11af01bd8fd
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-55d02fea/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
378c378
<   verify_ec_task_git_revision: d8eb39f4d4019208d4635cbc6226d11af01bd8fd
---
>   verify_ec_task_git_revision: 0c1a3cb4b810f33ba4c2134a464021f175f61182
596,597c596,597
<     This is not expected to pass for Konflux builds without excluding some rules.
<     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
---
>     This is not expected to pass for RHTAP builds without excluding some rules. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
621,622c621
<     config used for new Konflux applications. Available collections are defined in
<     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
---
>     config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
716c715
<     set of basic checks that are expected to pass for all Konflux builds. Available
---
>     set of basic checks that are expected to pass for all RHTAP builds. Available 
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
<h3>1: Staging changes from 55d02fea to d22b5867 on Tue Feb 27 16:01:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d202e77e..414c8884 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -1,5 +1,5 @@
 #
-# The contents of this file are automatically generated based on the RHTAP configs defined in the
+# The contents of this file are automatically generated based on the Konflux configs defined in the
 # github.com/enterprise-contract/config repo. Any manual modifications will be overridden.
 #
 
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -31,7 +31,7 @@ metadata:
   name: all
   namespace: enterprise-contract-service
 spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for RHTAP builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Everything (experimental)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -96,7 +96,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all RHTAP builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 0ee86372..14c32f54 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=0c1a3cb4b810f33ba4c2134a464021f175f61182
+      - verify_ec_task_git_revision=d8eb39f4d4019208d4635cbc6226d11af01bd8fd
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-55d02fea/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
378c378
<   verify_ec_task_git_revision: d8eb39f4d4019208d4635cbc6226d11af01bd8fd
---
>   verify_ec_task_git_revision: 0c1a3cb4b810f33ba4c2134a464021f175f61182
596,597c596,597
<     This is not expected to pass for Konflux builds without excluding some rules.
<     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
---
>     This is not expected to pass for RHTAP builds without excluding some rules. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
621,622c621
<     config used for new Konflux applications. Available collections are defined in
<     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
---
>     config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
716c715
<     set of basic checks that are expected to pass for all Konflux builds. Available
---
>     set of basic checks that are expected to pass for all RHTAP builds. Available 
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
<h3>1: Development changes from 55d02fea to d22b5867 on Tue Feb 27 16:01:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d202e77e..414c8884 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -1,5 +1,5 @@
 #
-# The contents of this file are automatically generated based on the RHTAP configs defined in the
+# The contents of this file are automatically generated based on the Konflux configs defined in the
 # github.com/enterprise-contract/config repo. Any manual modifications will be overridden.
 #
 
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -31,7 +31,7 @@ metadata:
   name: all
   namespace: enterprise-contract-service
 spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for RHTAP builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Everything (experimental)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -96,7 +96,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all RHTAP builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 0ee86372..14c32f54 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=0c1a3cb4b810f33ba4c2134a464021f175f61182
+      - verify_ec_task_git_revision=d8eb39f4d4019208d4635cbc6226d11af01bd8fd
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-55d02fea/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:d8eb39f4d4019208d4635cbc6226d11af01bd8fd@sha256:36d4bb32ebbf9632e5326443678a9d4548debe94e5e945d827f5f00ba3a3a686
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:0c1a3cb4b810f33ba4c2134a464021f175f61182@sha256:c20d9bdccc496c54d57d2a66070f5589e066a499560c13c76446211e520c32c2
378c378
<   verify_ec_task_git_revision: d8eb39f4d4019208d4635cbc6226d11af01bd8fd
---
>   verify_ec_task_git_revision: 0c1a3cb4b810f33ba4c2134a464021f175f61182
596,597c596,597
<     This is not expected to pass for Konflux builds without excluding some rules.
<     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
---
>     This is not expected to pass for RHTAP builds without excluding some rules. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
621,622c621
<     config used for new Konflux applications. Available collections are defined in
<     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
---
>     config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
716c715
<     set of basic checks that are expected to pass for all Konflux builds. Available
---
>     set of basic checks that are expected to pass for all RHTAP builds. Available 
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
<h3>2: Production changes from c4cd52ef to 55d02fea on Tue Feb 27 14:22:26 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 44ae11c8..6a141cdc 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 31165cfa..cd26b792 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
+    newTag: b8e29a427e787bfae1125dd9c40cf54c3a7e4755
 
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
<h3>2: Staging changes from c4cd52ef to 55d02fea on Tue Feb 27 14:22:26 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 44ae11c8..6a141cdc 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 31165cfa..cd26b792 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
+    newTag: b8e29a427e787bfae1125dd9c40cf54c3a7e4755
 
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
<h3>2: Development changes from c4cd52ef to 55d02fea on Tue Feb 27 14:22:26 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 44ae11c8..6a141cdc 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 31165cfa..cd26b792 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=b8e29a427e787bfae1125dd9c40cf54c3a7e4755
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
+    newTag: b8e29a427e787bfae1125dd9c40cf54c3a7e4755
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c4cd52ef/development/components/release/development/kustomize.out.yaml
1742c1742
<         image: quay.io/redhat-appstudio/release-service:b8e29a427e787bfae1125dd9c40cf54c3a7e4755
---
>         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86 
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
<h3>3: Production changes from dd7b3f52 to c4cd52ef on Tue Feb 27 13:40:16 2024 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
new file mode 100644
index 00000000..b3f9c675
--- /dev/null
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: tekton-results-watcher
+spec:
+  template:
+    spec:
+      containers:
+        - name: watcher
+          args:
+            [
+              "-api_addr",
+              "tekton-results-api-service.tekton-results.svc.cluster.local:8080",
+              "-auth_mode",
+              "token",
+              "-check_owner=false",
+              "-completed_run_grace_period",
+              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
+              "2h",
+            ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4bb79de4..31474b48 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -32,3 +32,4 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: increase-results-pruner-gracePeriod.yaml 
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
<h3>3: Staging changes from dd7b3f52 to c4cd52ef on Tue Feb 27 13:40:16 2024 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
new file mode 100644
index 00000000..b3f9c675
--- /dev/null
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: tekton-results-watcher
+spec:
+  template:
+    spec:
+      containers:
+        - name: watcher
+          args:
+            [
+              "-api_addr",
+              "tekton-results-api-service.tekton-results.svc.cluster.local:8080",
+              "-auth_mode",
+              "token",
+              "-check_owner=false",
+              "-completed_run_grace_period",
+              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
+              "2h",
+            ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4bb79de4..31474b48 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -32,3 +32,4 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: increase-results-pruner-gracePeriod.yaml 
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
<h3>3: Development changes from dd7b3f52 to c4cd52ef on Tue Feb 27 13:40:16 2024 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
new file mode 100644
index 00000000..b3f9c675
--- /dev/null
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: tekton-results-watcher
+spec:
+  template:
+    spec:
+      containers:
+        - name: watcher
+          args:
+            [
+              "-api_addr",
+              "tekton-results-api-service.tekton-results.svc.cluster.local:8080",
+              "-auth_mode",
+              "token",
+              "-check_owner=false",
+              "-completed_run_grace_period",
+              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
+              "2h",
+            ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4bb79de4..31474b48 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -32,3 +32,4 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: increase-results-pruner-gracePeriod.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (61 lines)</summary>  

``` 
./commit-dd7b3f52/development/components/pipeline-service/development/kustomize.out.yaml
1556a1557,1583
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:9090/
>         - --logtostderr=true
>         - --v=6
>         image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: watchermetrics
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>       - args:
1563c1590
<         - 2h
---
>         - 10m
1608,1634d1634
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:9090/
<         - --logtostderr=true
<         - --v=6
<         image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: watchermetrics
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault 
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
<h3>4: Production changes from 5298b93c to dd7b3f52 on Tue Feb 27 07:37:07 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 9c4310c7..0fce2b32 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../staging
   - ../../base/smee-client
   - ../../base/ui
+  - ../../base/ca-bundle
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -148,3 +149,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee-client
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ca-bundle 
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
<h3>4: Staging changes from 5298b93c to dd7b3f52 on Tue Feb 27 07:37:07 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 9c4310c7..0fce2b32 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../staging
   - ../../base/smee-client
   - ../../base/ui
+  - ../../base/ca-bundle
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -148,3 +149,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee-client
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ca-bundle 
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
<h3>4: Development changes from 5298b93c to dd7b3f52 on Tue Feb 27 07:37:07 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 9c4310c7..0fce2b32 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../staging
   - ../../base/smee-client
   - ../../base/ui
+  - ../../base/ca-bundle
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -148,3 +149,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee-client
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ca-bundle 
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
