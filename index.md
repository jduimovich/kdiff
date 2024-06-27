# kustomize changes tracked by commits 
### This file generated at Thu Jun 27 20:03:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c7228e58 to ecca2b80 on Thu Jun 27 17:54:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3ddf898a..3a3c8840 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "true"
-  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
+  enabled: "false"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces" 
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
<h3>1: Staging changes from c7228e58 to ecca2b80 on Thu Jun 27 17:54:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3ddf898a..3a3c8840 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "true"
-  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
+  enabled: "false"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from c7228e58 to ecca2b80 on Thu Jun 27 17:54:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
index 3ddf898a..3a3c8840 100644
--- a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -5,5 +5,5 @@ metadata:
   name: config-tracing
   namespace: openshift-pipelines
 data:
-  enabled: "true"
-  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
+  enabled: "false"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces" 
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
<h3>2: Production changes from db5791a3 to c7228e58 on Thu Jun 27 11:33:17 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ca57cc61..d0c3945a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -19,32 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: all
-  namespace: enterprise-contract-service
-spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
-  name: Everything (experimental)
-  publicKey: k8s://openshift-pipelines/public-key
-  sources:
-    - config:
-        exclude: []
-        include:
-          - '*'
-      data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
-        - github.com/release-engineering/rhtap-ec-policy//data
-      name: Default
-      policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -52,7 +31,7 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -63,11 +42,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -75,7 +54,7 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -84,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -96,7 +75,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Source: https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -106,11 +85,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 708b7552..1d37e206 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
+      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-db5791a3/production/components/enterprise-contract/kustomize.out.yaml
177,181d176
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
205,209d199
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
386c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
388c378
<   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
---
>   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
601a592,616
>   name: all
>   namespace: enterprise-contract-service
> spec:
>   description: Include every rule in the default policy source. For experiments only.
>     This is not expected to pass for Konflux builds without excluding some rules.
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
>   name: Everything (experimental)
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '*'
>     data:
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
605,606c620,624
<   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
<     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
---
>   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
>     config used for new Konflux applications. Available collections are defined in
>     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
615c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
619c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
627,628c645,648
<   description: 'Includes the full set of rules and policies required internally by
<     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
---
>   description: Includes the full set of rules and policies required internally by
>     Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
637c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
641c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
649c669
<   description: 'Includes most of the rules and policies required internally by Red
---
>   description: Includes most of the rules and policies required internally by Red
651c671,673
<     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
---
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
662c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
666c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
685c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
693,695c715,719
<   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
<     set of basic checks that are expected to pass for all Konflux builds. Source:
<     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
---
>   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
>     set of basic checks that are expected to pass for all Konflux builds. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
705c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
709c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c 
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
<h3>2: Staging changes from db5791a3 to c7228e58 on Thu Jun 27 11:33:17 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ca57cc61..d0c3945a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -19,32 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: all
-  namespace: enterprise-contract-service
-spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
-  name: Everything (experimental)
-  publicKey: k8s://openshift-pipelines/public-key
-  sources:
-    - config:
-        exclude: []
-        include:
-          - '*'
-      data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
-        - github.com/release-engineering/rhtap-ec-policy//data
-      name: Default
-      policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -52,7 +31,7 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -63,11 +42,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -75,7 +54,7 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -84,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -96,7 +75,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Source: https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -106,11 +85,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 708b7552..1d37e206 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
+      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-db5791a3/staging/components/enterprise-contract/kustomize.out.yaml
177,181d176
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
205,209d199
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
386c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
388c378
<   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
---
>   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
601a592,616
>   name: all
>   namespace: enterprise-contract-service
> spec:
>   description: Include every rule in the default policy source. For experiments only.
>     This is not expected to pass for Konflux builds without excluding some rules.
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
>   name: Everything (experimental)
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '*'
>     data:
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
605,606c620,624
<   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
<     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
---
>   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
>     config used for new Konflux applications. Available collections are defined in
>     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
615c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
619c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
627,628c645,648
<   description: 'Includes the full set of rules and policies required internally by
<     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
---
>   description: Includes the full set of rules and policies required internally by
>     Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
637c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
641c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
649c669
<   description: 'Includes most of the rules and policies required internally by Red
---
>   description: Includes most of the rules and policies required internally by Red
651c671,673
<     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
---
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
662c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
666c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
685c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
693,695c715,719
<   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
<     set of basic checks that are expected to pass for all Konflux builds. Source:
<     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
---
>   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
>     set of basic checks that are expected to pass for all Konflux builds. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
705c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
709c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from db5791a3 to c7228e58 on Thu Jun 27 11:33:17 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ca57cc61..d0c3945a 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,7 +10,7 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -19,32 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: all
-  namespace: enterprise-contract-service
-spec:
-  description: Include every rule in the default policy source. For experiments only. This is not expected to pass for Konflux builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
-  name: Everything (experimental)
-  publicKey: k8s://openshift-pipelines/public-key
-  sources:
-    - config:
-        exclude: []
-        include:
-          - '*'
-      data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
-        - github.com/release-engineering/rhtap-ec-policy//data
-      name: Default
-      policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -52,7 +31,7 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -63,11 +42,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -75,7 +54,7 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -84,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -96,7 +75,7 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all Konflux builds. Source: https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
@@ -106,11 +85,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 708b7552..1d37e206 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f7cf9b1ac177b0caa73626fd96f928ef004aaac8
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
+      - verify_ec_task_git_revision=ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-db5791a3/development/components/enterprise-contract/kustomize.out.yaml
177,181d176
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
205,209d199
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
386c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f@sha256:4c9431454c557965e618a9f6b919d1862613babe1dc80eea9d93b03bf04588b8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
388c378
<   verify_ec_task_git_revision: ab24b6a76f7f0d7bb41a2b1d57e69c932a87866f
---
>   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
601a592,616
>   name: all
>   namespace: enterprise-contract-service
> spec:
>   description: Include every rule in the default policy source. For experiments only.
>     This is not expected to pass for Konflux builds without excluding some rules.
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
>   name: Everything (experimental)
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '*'
>     data:
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
605,606c620,624
<   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
<     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
---
>   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
>     config used for new Konflux applications. Available collections are defined in
>     https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
615c633
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
619c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
627,628c645,648
<   description: 'Includes the full set of rules and policies required internally by
<     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
---
>   description: Includes the full set of rules and policies required internally by
>     Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
637c657
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
641c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
649c669
<   description: 'Includes most of the rules and policies required internally by Red
---
>   description: Includes most of the rules and policies required internally by Red
651c671,673
<     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
---
>     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
662c684
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
666c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
685c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3613444@sha256:159d7353fd0ad92837c7b19e7c1e47674f03267e57c178f7618c684835d48779
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
693,695c715,719
<   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
<     set of basic checks that are expected to pass for all Konflux builds. Source:
<     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
---
>   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
>     set of basic checks that are expected to pass for all Konflux builds. Available
>     collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
>     If a different policy configuration is desired, this resource can serve as a starting
>     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
705c729
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
709c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d71d1b6@sha256:5443d85db60be7b5687c1f6c67c8066ec3b8a7e05ff6fc3c102720c1a2ce35e6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c 
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
<h3>3: Production changes from 5cb01bff to db5791a3 on Thu Jun 27 10:43:41 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 201083d0..7639bc88 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+    newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 1277723d..932bdae5 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+- https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 5cb01bff to db5791a3 on Thu Jun 27 10:43:41 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 201083d0..7639bc88 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+    newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 1277723d..932bdae5 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+- https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5cb01bff/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
528c528
<         image: quay.io/konflux-ci/mintmaker:ffb703d40e031d2915b25b9b73c860f0b41e36a6
---
>         image: quay.io/konflux-ci/mintmaker:54105346eaeaf885969e5e4f5e47c0a9e0af99fb 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 5cb01bff to db5791a3 on Thu Jun 27 10:43:41 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 201083d0..7639bc88 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+    newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 1277723d..932bdae5 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+- https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5cb01bff/development/components/mintmaker/development/kustomize.out.yaml
530c530
<         image: quay.io/konflux-ci/mintmaker:ffb703d40e031d2915b25b9b73c860f0b41e36a6
---
>         image: quay.io/konflux-ci/mintmaker:54105346eaeaf885969e5e4f5e47c0a9e0af99fb 
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
<h3>4: Production changes from b17b6bc7 to 5cb01bff on Thu Jun 27 09:51:36 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 61014f9b..a5125113 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=fc2057e7e52345238f571b1f517ca73bffc260fe
+- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: fc2057e7e52345238f571b1f517ca73bffc260fe
+  newTag: 644947ed8578cada1eaf876c876c4e752056b778
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 8cca99ad..13d463ff 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=fc2057e7e52345238f571b1f517ca73bffc260fe
+  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: fc2057e7e52345238f571b1f517ca73bffc260fe
+  newTag: 644947ed8578cada1eaf876c876c4e752056b778
 
 namespace: project-controller 
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
<h3>4: Staging changes from b17b6bc7 to 5cb01bff on Thu Jun 27 09:51:36 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 61014f9b..a5125113 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=fc2057e7e52345238f571b1f517ca73bffc260fe
+- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: fc2057e7e52345238f571b1f517ca73bffc260fe
+  newTag: 644947ed8578cada1eaf876c876c4e752056b778
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 8cca99ad..13d463ff 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=fc2057e7e52345238f571b1f517ca73bffc260fe
+  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: fc2057e7e52345238f571b1f517ca73bffc260fe
+  newTag: 644947ed8578cada1eaf876c876c4e752056b778
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b17b6bc7/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:644947ed8578cada1eaf876c876c4e752056b778
---
>         image: quay.io/redhat-appstudio/project-controller:fc2057e7e52345238f571b1f517ca73bffc260fe 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from b17b6bc7 to 5cb01bff on Thu Jun 27 09:51:36 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 61014f9b..a5125113 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=fc2057e7e52345238f571b1f517ca73bffc260fe
+- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: fc2057e7e52345238f571b1f517ca73bffc260fe
+  newTag: 644947ed8578cada1eaf876c876c4e752056b778
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 8cca99ad..13d463ff 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=fc2057e7e52345238f571b1f517ca73bffc260fe
+  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: fc2057e7e52345238f571b1f517ca73bffc260fe
+  newTag: 644947ed8578cada1eaf876c876c4e752056b778
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b17b6bc7/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:644947ed8578cada1eaf876c876c4e752056b778
---
>         image: quay.io/redhat-appstudio/project-controller:fc2057e7e52345238f571b1f517ca73bffc260fe 
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
