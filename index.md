# kustomize changes tracked by commits 
### This file generated at Thu Jul 18 20:08:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c37ad1da to a05e2d5c on Thu Jul 18 19:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 31600060..9733bfcd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - space-provisioner-configs.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/production/generated-manifests/host
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
index ee2d63df..f99cd17a 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
index ad3e5db4..8c10c7f7 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
 - network-policy.yaml
+- ../../../tiers/production 
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
<h3>1: Staging changes from c37ad1da to a05e2d5c on Thu Jul 18 19:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 31600060..9733bfcd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - space-provisioner-configs.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/production/generated-manifests/host
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
index ee2d63df..f99cd17a 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
index ad3e5db4..8c10c7f7 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
 - network-policy.yaml
+- ../../../tiers/production 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from c37ad1da to a05e2d5c on Thu Jul 18 19:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 31600060..9733bfcd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - space-provisioner-configs.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/production/generated-manifests/host
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
index ee2d63df..f99cd17a 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
index ad3e5db4..8c10c7f7 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
 - network-policy.yaml
+- ../../../tiers/production 
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
<h3>2: Production changes from d5be2620 to c37ad1da on Thu Jul 18 18:07:42 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index 9c9d4b1c..0243200b 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/hacbs-release/internal-services-resources/openshift/internal-services-internal-request?ref=32295f49140a72dffd55a07fd31d739bd1baa121
+- https://github.com/konflux-ci/internal-services/config/crd?ref=01434f5d914d940ba5b43e4d1a0ffb7db45e52ff
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (117 lines)</summary>  

``` 
./commit-d5be2620/production/components/internal-services/kustomize.out.yaml
18c18
<     - jsonPath: .status.conditions[?(@.type=="Succeeded")].status
---
>     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].status
21c21
<     - jsonPath: .status.conditions[?(@.type=="Succeeded")].reason
---
>     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].reason
55,72d54
<               timeouts:
<                 description: Timeouts defines the different Timeouts to use in the
<                   InternalRequest PipelineRun execution
<                 properties:
<                   finally:
<                     description: Finally sets the maximum allowed duration of this
<                       pipeline's finally
<                     type: string
<                   pipeline:
<                     description: Pipeline sets the maximum allowed duration for execution
<                       of the entire pipeline. The sum of individual timeouts for tasks
<                       and finally must not exceed this value.
<                     type: string
<                   tasks:
<                     description: Tasks sets the maximum allowed duration of this pipeline's
<                       tasks
<                     type: string
<                 type: object
80,81c62
<                 description: CompletionTime is the time the InternalRequest PipelineRun
<                   completed
---
>                 description: CompletionTime is the time the Release PipelineRun completed
161,162c142,143
<                 description: StartTime is the time when the InternalRequest PipelineRun
<                   was created and set to run
---
>                 description: StartTime is the time when the Release PipelineRun was
>                   created and set to run
165,241d145
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.10.0
<   creationTimestamp: null
<   name: internalservicesconfigs.appstudio.redhat.com
< spec:
<   group: appstudio.redhat.com
<   names:
<     kind: InternalServicesConfig
<     listKind: InternalServicesConfigList
<     plural: internalservicesconfigs
<     singular: internalservicesconfig
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: InternalServicesConfig is the Schema for the internalservicesconfigs
<           API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: InternalServicesConfigSpec defines the desired state of InternalServicesConfig.
<             properties:
<               allowList:
<                 description: AllowList is the list of remote namespaces that are allowed
<                   to execute InternalRequests
<                 items:
<                   type: string
<                 type: array
<               debug:
<                 description: Debug sets the operator to run in debug mode. In this
<                   mode, PipelineRuns and PVCs will not be removed
<                 type: boolean
<               volumeClaim:
<                 default:
<                   name: workspace
<                   size: 1Gi
<                 description: VolumeClaim holds information about the volume to request
<                   for Pipelines requiring a workspace
<                 properties:
<                   name:
<                     default: workspace
<                     description: Name is the workspace name
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   size:
<                     default: 1Gi
<                     description: Size is the size that will be requested when a workspace
<                       is required by a Pipeline
<                     pattern: ^[1-9][0-9]*(K|M|G)i$
<                     type: string
<                 type: object
<             type: object
<           status:
<             description: InternalServicesConfigStatus defines the observed state of
<               InternalServicesConfig. 
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
<h3>2: Staging changes from d5be2620 to c37ad1da on Thu Jul 18 18:07:42 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index 9c9d4b1c..0243200b 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/hacbs-release/internal-services-resources/openshift/internal-services-internal-request?ref=32295f49140a72dffd55a07fd31d739bd1baa121
+- https://github.com/konflux-ci/internal-services/config/crd?ref=01434f5d914d940ba5b43e4d1a0ffb7db45e52ff
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (117 lines)</summary>  

``` 
./commit-d5be2620/staging/components/internal-services/kustomize.out.yaml
18c18
<     - jsonPath: .status.conditions[?(@.type=="Succeeded")].status
---
>     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].status
21c21
<     - jsonPath: .status.conditions[?(@.type=="Succeeded")].reason
---
>     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].reason
55,72d54
<               timeouts:
<                 description: Timeouts defines the different Timeouts to use in the
<                   InternalRequest PipelineRun execution
<                 properties:
<                   finally:
<                     description: Finally sets the maximum allowed duration of this
<                       pipeline's finally
<                     type: string
<                   pipeline:
<                     description: Pipeline sets the maximum allowed duration for execution
<                       of the entire pipeline. The sum of individual timeouts for tasks
<                       and finally must not exceed this value.
<                     type: string
<                   tasks:
<                     description: Tasks sets the maximum allowed duration of this pipeline's
<                       tasks
<                     type: string
<                 type: object
80,81c62
<                 description: CompletionTime is the time the InternalRequest PipelineRun
<                   completed
---
>                 description: CompletionTime is the time the Release PipelineRun completed
161,162c142,143
<                 description: StartTime is the time when the InternalRequest PipelineRun
<                   was created and set to run
---
>                 description: StartTime is the time when the Release PipelineRun was
>                   created and set to run
165,241d145
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.10.0
<   creationTimestamp: null
<   name: internalservicesconfigs.appstudio.redhat.com
< spec:
<   group: appstudio.redhat.com
<   names:
<     kind: InternalServicesConfig
<     listKind: InternalServicesConfigList
<     plural: internalservicesconfigs
<     singular: internalservicesconfig
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: InternalServicesConfig is the Schema for the internalservicesconfigs
<           API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: InternalServicesConfigSpec defines the desired state of InternalServicesConfig.
<             properties:
<               allowList:
<                 description: AllowList is the list of remote namespaces that are allowed
<                   to execute InternalRequests
<                 items:
<                   type: string
<                 type: array
<               debug:
<                 description: Debug sets the operator to run in debug mode. In this
<                   mode, PipelineRuns and PVCs will not be removed
<                 type: boolean
<               volumeClaim:
<                 default:
<                   name: workspace
<                   size: 1Gi
<                 description: VolumeClaim holds information about the volume to request
<                   for Pipelines requiring a workspace
<                 properties:
<                   name:
<                     default: workspace
<                     description: Name is the workspace name
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   size:
<                     default: 1Gi
<                     description: Size is the size that will be requested when a workspace
<                       is required by a Pipeline
<                     pattern: ^[1-9][0-9]*(K|M|G)i$
<                     type: string
<                 type: object
<             type: object
<           status:
<             description: InternalServicesConfigStatus defines the observed state of
<               InternalServicesConfig. 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from d5be2620 to c37ad1da on Thu Jul 18 18:07:42 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index 9c9d4b1c..0243200b 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/hacbs-release/internal-services-resources/openshift/internal-services-internal-request?ref=32295f49140a72dffd55a07fd31d739bd1baa121
+- https://github.com/konflux-ci/internal-services/config/crd?ref=01434f5d914d940ba5b43e4d1a0ffb7db45e52ff
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (117 lines)</summary>  

``` 
./commit-d5be2620/development/components/internal-services/kustomize.out.yaml
18c18
<     - jsonPath: .status.conditions[?(@.type=="Succeeded")].status
---
>     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].status
21c21
<     - jsonPath: .status.conditions[?(@.type=="Succeeded")].reason
---
>     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].reason
55,72d54
<               timeouts:
<                 description: Timeouts defines the different Timeouts to use in the
<                   InternalRequest PipelineRun execution
<                 properties:
<                   finally:
<                     description: Finally sets the maximum allowed duration of this
<                       pipeline's finally
<                     type: string
<                   pipeline:
<                     description: Pipeline sets the maximum allowed duration for execution
<                       of the entire pipeline. The sum of individual timeouts for tasks
<                       and finally must not exceed this value.
<                     type: string
<                   tasks:
<                     description: Tasks sets the maximum allowed duration of this pipeline's
<                       tasks
<                     type: string
<                 type: object
80,81c62
<                 description: CompletionTime is the time the InternalRequest PipelineRun
<                   completed
---
>                 description: CompletionTime is the time the Release PipelineRun completed
161,162c142,143
<                 description: StartTime is the time when the InternalRequest PipelineRun
<                   was created and set to run
---
>                 description: StartTime is the time when the Release PipelineRun was
>                   created and set to run
165,241d145
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.10.0
<   creationTimestamp: null
<   name: internalservicesconfigs.appstudio.redhat.com
< spec:
<   group: appstudio.redhat.com
<   names:
<     kind: InternalServicesConfig
<     listKind: InternalServicesConfigList
<     plural: internalservicesconfigs
<     singular: internalservicesconfig
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: InternalServicesConfig is the Schema for the internalservicesconfigs
<           API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: InternalServicesConfigSpec defines the desired state of InternalServicesConfig.
<             properties:
<               allowList:
<                 description: AllowList is the list of remote namespaces that are allowed
<                   to execute InternalRequests
<                 items:
<                   type: string
<                 type: array
<               debug:
<                 description: Debug sets the operator to run in debug mode. In this
<                   mode, PipelineRuns and PVCs will not be removed
<                 type: boolean
<               volumeClaim:
<                 default:
<                   name: workspace
<                   size: 1Gi
<                 description: VolumeClaim holds information about the volume to request
<                   for Pipelines requiring a workspace
<                 properties:
<                   name:
<                     default: workspace
<                     description: Name is the workspace name
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   size:
<                     default: 1Gi
<                     description: Size is the size that will be requested when a workspace
<                       is required by a Pipeline
<                     pattern: ^[1-9][0-9]*(K|M|G)i$
<                     type: string
<                 type: object
<             type: object
<           status:
<             description: InternalServicesConfigStatus defines the observed state of
<               InternalServicesConfig. 
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
<h3>3: Production changes from 1e77a84b to d5be2620 on Thu Jul 18 17:15:25 2024 </h3>  
 
<details> 
<summary>Git Diff (1374 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 2d9a507f..4032211b 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
-- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
-- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
-- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
-- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
-- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
-- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+- tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
+- tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
+- tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
+- tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
+- tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 13653115..8df3e412 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,18 +9,18 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+    templateRef: appstudio-env-clusterresources-266544570-266544570
   namespaces:
-  - templateRef: appstudio-env-env-1575256421-1575256421
+  - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
     serviceAccountName: namespace-manager
   spaceRoles:
     admin:
-      templateRef: appstudio-env-admin-4171108837-4171108837
+      templateRef: appstudio-env-admin-37575401-37575401
     contributor:
-      templateRef: appstudio-env-contributor-297495683-297495683
+      templateRef: appstudio-env-contributor-37575401-37575401
     maintainer:
-      templateRef: appstudio-env-maintainer-1039478644-1039478644
+      templateRef: appstudio-env-maintainer-37575401-37575401
     viewer:
-      templateRef: appstudio-env-viewer-617892940-617892940
+      templateRef: appstudio-env-viewer-37575401-37575401
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
index 143511a7..2e824935 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-admin-4171108837-4171108837
+  name: appstudio-env-admin-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 4171108837-4171108837
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-admin
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: admin
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
index 508a3067..a370605e 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-clusterresources-2916842387-2916842387
+  name: appstudio-env-clusterresources-266544570-266544570
   namespace: toolchain-host-operator
 spec:
-  revision: 2916842387-2916842387
+  revision: 266544570-266544570
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
index cb3258b1..8114d2ad 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-contributor-297495683-297495683
+  name: appstudio-env-contributor-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 297495683-297495683
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-contributor
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
index 7902bec6..b52f7b37 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-env-1575256421-1575256421
+  name: appstudio-env-env-1082365650-1082365650
   namespace: toolchain-host-operator
 spec:
-  revision: 1575256421-1575256421
+  revision: 1082365650-1082365650
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
similarity index 73%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
index d1c40004..9da9e319 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-maintainer-1039478644-1039478644
+  name: appstudio-env-maintainer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 1039478644-1039478644
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-maintainer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
similarity index 75%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
index ea578856..22b1e4f5 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-viewer-617892940-617892940
+  name: appstudio-env-viewer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 617892940-617892940
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-viewer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: viewer
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index aa09f7a6..3f9879e1 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
-- tiertemplate-appstudio-admin-221167138-221167138.yaml
-- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
-- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
-- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
-- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
-- tiertemplate-appstudio-viewer-210715919-210715919.yaml
+- tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
+- tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
+- tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-tenant-199961605-199961605.yaml
+- tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index 244d324a..0e11825a 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-750679343-750679343
+    templateRef: appstudio-clusterresources-809836689-809836689
   namespaces:
-  - templateRef: appstudio-tenant-1252037388-1252037388
+  - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-221167138-221167138
+      templateRef: appstudio-admin-2415879015-2415879015
     contributor:
-      templateRef: appstudio-contributor-3696782055-3696782055
+      templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
-      templateRef: appstudio-maintainer-98574726-98574726
+      templateRef: appstudio-maintainer-293087644-293087644
     viewer:
-      templateRef: appstudio-viewer-210715919-210715919
+      templateRef: appstudio-viewer-4059797645-4059797645
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
index 9530645f..8861f81a 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-admin-221167138-221167138
+  name: appstudio-admin-2415879015-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 221167138-221167138
+  revision: 2415879015-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
index f757fe94..8ee96e8a 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-clusterresources-750679343-750679343
+  name: appstudio-clusterresources-809836689-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 750679343-750679343
+  revision: 809836689-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
index c4c56172..70391669 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-contributor-3696782055-3696782055
+  name: appstudio-contributor-1817914940-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 3696782055-3696782055
+  revision: 1817914940-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
index bb5d3e13..31e4ad22 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-maintainer-98574726-98574726
+  name: appstudio-maintainer-293087644-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 98574726-98574726
+  revision: 293087644-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
index 4b9efbc1..4b5f4adb 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-tenant-1252037388-1252037388
+  name: appstudio-tenant-199961605-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1252037388-1252037388
+  revision: 199961605-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
index 0e3ebcff..53e544d1 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-viewer-210715919-210715919
+  name: appstudio-viewer-4059797645-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 210715919-210715919
+  revision: 4059797645-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index 917073d2..af4b81d4 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
-- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
-- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
-- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
-- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
-- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
-- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 6c89688f..af3b1d1f 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+    templateRef: appstudiolarge-clusterresources-1884308846-809836689
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-221167138
+      templateRef: appstudiolarge-admin-1884308846-2415879015
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-3696782055
+      templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-98574726
+      templateRef: appstudiolarge-maintainer-1884308846-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-210715919
+      templateRef: appstudiolarge-viewer-1884308846-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
index 6de49f4f..50de7c02 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-admin-1884308846-221167138
+  name: appstudiolarge-admin-1884308846-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-221167138
+  revision: 1884308846-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
index d69d0090..e9dcb6b1 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-clusterresources-1884308846-750679343
+  name: appstudiolarge-clusterresources-1884308846-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-750679343
+  revision: 1884308846-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
index 7ab5ab89..a12c61e2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-contributor-1884308846-3696782055
+  name: appstudiolarge-contributor-1884308846-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-3696782055
+  revision: 1884308846-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
index 095b72e1..acc6efc2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-maintainer-1884308846-98574726
+  name: appstudiolarge-maintainer-1884308846-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-98574726
+  revision: 1884308846-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
index 6f23b134..9125d0cd 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-tenant-1884308846-1252037388
+  name: appstudiolarge-tenant-1884308846-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-1252037388
+  revision: 1884308846-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
index 9fca2056..61a100aa 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-viewer-1884308846-210715919
+  name: appstudiolarge-viewer-1884308846-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-210715919
+  revision: 1884308846-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 460e9a1f..65558c72 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-cluster-resources
+metadata: {}
 objects:
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
index f801a266..47320a87 100644
--- a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env
+metadata: {}
 objects:
 - apiVersion: v1
   kind: Namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
index f1c42317..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-admin
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
index b392cfea..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-contributor
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
index d9db7266..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-maintainer
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
index b3ab2182..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-viewer
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
index c387158c..3574d3d3 100644
--- a/components/sandbox/tiers/src/appstudio/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-cluster-resources
+metadata: {}
 objects:
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 8de7cf5b..34bb6790 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-tenant
+metadata: {}
 objects:
 - apiVersion: v1
   kind: Namespace
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
index 3f588984..7b406985 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-admin # name is used in e2e tests
+metadata: {}
 objects:
 
 # Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
index 1486dbaa..18e1033a 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-contributor # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
index a3d9124b..79c5dd03 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-maintainer # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
index e743a5cd..56519cb3 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-viewer # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 2d9a507f..4032211b 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
-- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
-- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
-- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
-- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
-- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
-- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+- tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
+- tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
+- tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
+- tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
+- tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 13653115..8df3e412 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,18 +9,18 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+    templateRef: appstudio-env-clusterresources-266544570-266544570
   namespaces:
-  - templateRef: appstudio-env-env-1575256421-1575256421
+  - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
     serviceAccountName: namespace-manager
   spaceRoles:
     admin:
-      templateRef: appstudio-env-admin-4171108837-4171108837
+      templateRef: appstudio-env-admin-37575401-37575401
     contributor:
-      templateRef: appstudio-env-contributor-297495683-297495683
+      templateRef: appstudio-env-contributor-37575401-37575401
     maintainer:
-      templateRef: appstudio-env-maintainer-1039478644-1039478644
+      templateRef: appstudio-env-maintainer-37575401-37575401
     viewer:
-      templateRef: appstudio-env-viewer-617892940-617892940
+      templateRef: appstudio-env-viewer-37575401-37575401
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
index 143511a7..2e824935 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-admin-4171108837-4171108837
+  name: appstudio-env-admin-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 4171108837-4171108837
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-admin
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: admin
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
index 508a3067..a370605e 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-clusterresources-2916842387-2916842387
+  name: appstudio-env-clusterresources-266544570-266544570
   namespace: toolchain-host-operator
 spec:
-  revision: 2916842387-2916842387
+  revision: 266544570-266544570
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
index cb3258b1..8114d2ad 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-contributor-297495683-297495683
+  name: appstudio-env-contributor-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 297495683-297495683
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-contributor
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: contributor
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
index 7902bec6..b52f7b37 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-env-1575256421-1575256421
+  name: appstudio-env-env-1082365650-1082365650
   namespace: toolchain-host-operator
 spec:
-  revision: 1575256421-1575256421
+  revision: 1082365650-1082365650
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
similarity index 73%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
index d1c40004..9da9e319 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-maintainer-1039478644-1039478644
+  name: appstudio-env-maintainer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 1039478644-1039478644
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-maintainer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
similarity index 75%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
index ea578856..22b1e4f5 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-viewer-617892940-617892940
+  name: appstudio-env-viewer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 617892940-617892940
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-viewer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: viewer
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index aa09f7a6..3f9879e1 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
-- tiertemplate-appstudio-admin-221167138-221167138.yaml
-- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
-- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
-- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
-- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
-- tiertemplate-appstudio-viewer-210715919-210715919.yaml
+- tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
+- tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
+- tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-tenant-199961605-199961605.yaml
+- tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 244d324a..0e11825a 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-750679343-750679343
+    templateRef: appstudio-clusterresources-809836689-809836689
   namespaces:
-  - templateRef: appstudio-tenant-1252037388-1252037388
+  - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-221167138-221167138
+      templateRef: appstudio-admin-2415879015-2415879015
     contributor:
-      templateRef: appstudio-contributor-3696782055-3696782055
+      templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
-      templateRef: appstudio-maintainer-98574726-98574726
+      templateRef: appstudio-maintainer-293087644-293087644
     viewer:
-      templateRef: appstudio-viewer-210715919-210715919
+      templateRef: appstudio-viewer-4059797645-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
index 9530645f..8861f81a 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-admin-221167138-221167138
+  name: appstudio-admin-2415879015-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 221167138-221167138
+  revision: 2415879015-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
index f757fe94..8ee96e8a 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-clusterresources-750679343-750679343
+  name: appstudio-clusterresources-809836689-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 750679343-750679343
+  revision: 809836689-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
index c4c56172..70391669 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-contributor-3696782055-3696782055
+  name: appstudio-contributor-1817914940-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 3696782055-3696782055
+  revision: 1817914940-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
index bb5d3e13..31e4ad22 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-maintainer-98574726-98574726
+  name: appstudio-maintainer-293087644-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 98574726-98574726
+  revision: 293087644-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
index 4b9efbc1..4b5f4adb 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-tenant-1252037388-1252037388
+  name: appstudio-tenant-199961605-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1252037388-1252037388
+  revision: 199961605-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
index 0e3ebcff..53e544d1 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-viewer-210715919-210715919
+  name: appstudio-viewer-4059797645-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 210715919-210715919
+  revision: 4059797645-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 917073d2..af4b81d4 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
-- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
-- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
-- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
-- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
-- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
-- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 6c89688f..af3b1d1f 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+    templateRef: appstudiolarge-clusterresources-1884308846-809836689
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-221167138
+      templateRef: appstudiolarge-admin-1884308846-2415879015
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-3696782055
+      templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-98574726
+      templateRef: appstudiolarge-maintainer-1884308846-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-210715919
+      templateRef: appstudiolarge-viewer-1884308846-4059797645
 status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
index 6de49f4f..50de7c02 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-admin-1884308846-221167138
+  name: appstudiolarge-admin-1884308846-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-221167138
+  revision: 1884308846-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
index d69d0090..e9dcb6b1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-clusterresources-1884308846-750679343
+  name: appstudiolarge-clusterresources-1884308846-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-750679343
+  revision: 1884308846-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
index 7ab5ab89..a12c61e2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-contributor-1884308846-3696782055
+  name: appstudiolarge-contributor-1884308846-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-3696782055
+  revision: 1884308846-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
index 095b72e1..acc6efc2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-maintainer-1884308846-98574726
+  name: appstudiolarge-maintainer-1884308846-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-98574726
+  revision: 1884308846-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
index 6f23b134..9125d0cd 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-tenant-1884308846-1252037388
+  name: appstudiolarge-tenant-1884308846-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-1252037388
+  revision: 1884308846-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
index 9fca2056..61a100aa 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-viewer-1884308846-210715919
+  name: appstudiolarge-viewer-1884308846-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-210715919
+  revision: 1884308846-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role 
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
<h3>3: Staging changes from 1e77a84b to d5be2620 on Thu Jul 18 17:15:25 2024 </h3>  
 
<details> 
<summary>Git Diff (1374 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 2d9a507f..4032211b 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
-- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
-- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
-- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
-- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
-- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
-- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+- tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
+- tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
+- tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
+- tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
+- tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 13653115..8df3e412 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,18 +9,18 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+    templateRef: appstudio-env-clusterresources-266544570-266544570
   namespaces:
-  - templateRef: appstudio-env-env-1575256421-1575256421
+  - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
     serviceAccountName: namespace-manager
   spaceRoles:
     admin:
-      templateRef: appstudio-env-admin-4171108837-4171108837
+      templateRef: appstudio-env-admin-37575401-37575401
     contributor:
-      templateRef: appstudio-env-contributor-297495683-297495683
+      templateRef: appstudio-env-contributor-37575401-37575401
     maintainer:
-      templateRef: appstudio-env-maintainer-1039478644-1039478644
+      templateRef: appstudio-env-maintainer-37575401-37575401
     viewer:
-      templateRef: appstudio-env-viewer-617892940-617892940
+      templateRef: appstudio-env-viewer-37575401-37575401
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
index 143511a7..2e824935 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-admin-4171108837-4171108837
+  name: appstudio-env-admin-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 4171108837-4171108837
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-admin
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: admin
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
index 508a3067..a370605e 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-clusterresources-2916842387-2916842387
+  name: appstudio-env-clusterresources-266544570-266544570
   namespace: toolchain-host-operator
 spec:
-  revision: 2916842387-2916842387
+  revision: 266544570-266544570
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
index cb3258b1..8114d2ad 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-contributor-297495683-297495683
+  name: appstudio-env-contributor-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 297495683-297495683
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-contributor
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
index 7902bec6..b52f7b37 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-env-1575256421-1575256421
+  name: appstudio-env-env-1082365650-1082365650
   namespace: toolchain-host-operator
 spec:
-  revision: 1575256421-1575256421
+  revision: 1082365650-1082365650
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
similarity index 73%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
index d1c40004..9da9e319 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-maintainer-1039478644-1039478644
+  name: appstudio-env-maintainer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 1039478644-1039478644
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-maintainer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
similarity index 75%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
index ea578856..22b1e4f5 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-viewer-617892940-617892940
+  name: appstudio-env-viewer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 617892940-617892940
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-viewer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: viewer
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index aa09f7a6..3f9879e1 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
-- tiertemplate-appstudio-admin-221167138-221167138.yaml
-- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
-- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
-- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
-- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
-- tiertemplate-appstudio-viewer-210715919-210715919.yaml
+- tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
+- tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
+- tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-tenant-199961605-199961605.yaml
+- tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index 244d324a..0e11825a 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-750679343-750679343
+    templateRef: appstudio-clusterresources-809836689-809836689
   namespaces:
-  - templateRef: appstudio-tenant-1252037388-1252037388
+  - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-221167138-221167138
+      templateRef: appstudio-admin-2415879015-2415879015
     contributor:
-      templateRef: appstudio-contributor-3696782055-3696782055
+      templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
-      templateRef: appstudio-maintainer-98574726-98574726
+      templateRef: appstudio-maintainer-293087644-293087644
     viewer:
-      templateRef: appstudio-viewer-210715919-210715919
+      templateRef: appstudio-viewer-4059797645-4059797645
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
index 9530645f..8861f81a 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-admin-221167138-221167138
+  name: appstudio-admin-2415879015-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 221167138-221167138
+  revision: 2415879015-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
index f757fe94..8ee96e8a 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-clusterresources-750679343-750679343
+  name: appstudio-clusterresources-809836689-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 750679343-750679343
+  revision: 809836689-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
index c4c56172..70391669 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-contributor-3696782055-3696782055
+  name: appstudio-contributor-1817914940-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 3696782055-3696782055
+  revision: 1817914940-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
index bb5d3e13..31e4ad22 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-maintainer-98574726-98574726
+  name: appstudio-maintainer-293087644-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 98574726-98574726
+  revision: 293087644-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
index 4b9efbc1..4b5f4adb 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-tenant-1252037388-1252037388
+  name: appstudio-tenant-199961605-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1252037388-1252037388
+  revision: 199961605-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
index 0e3ebcff..53e544d1 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-viewer-210715919-210715919
+  name: appstudio-viewer-4059797645-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 210715919-210715919
+  revision: 4059797645-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index 917073d2..af4b81d4 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
-- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
-- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
-- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
-- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
-- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
-- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 6c89688f..af3b1d1f 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+    templateRef: appstudiolarge-clusterresources-1884308846-809836689
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-221167138
+      templateRef: appstudiolarge-admin-1884308846-2415879015
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-3696782055
+      templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-98574726
+      templateRef: appstudiolarge-maintainer-1884308846-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-210715919
+      templateRef: appstudiolarge-viewer-1884308846-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
index 6de49f4f..50de7c02 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-admin-1884308846-221167138
+  name: appstudiolarge-admin-1884308846-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-221167138
+  revision: 1884308846-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
index d69d0090..e9dcb6b1 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-clusterresources-1884308846-750679343
+  name: appstudiolarge-clusterresources-1884308846-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-750679343
+  revision: 1884308846-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
index 7ab5ab89..a12c61e2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-contributor-1884308846-3696782055
+  name: appstudiolarge-contributor-1884308846-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-3696782055
+  revision: 1884308846-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
index 095b72e1..acc6efc2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-maintainer-1884308846-98574726
+  name: appstudiolarge-maintainer-1884308846-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-98574726
+  revision: 1884308846-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
index 6f23b134..9125d0cd 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-tenant-1884308846-1252037388
+  name: appstudiolarge-tenant-1884308846-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-1252037388
+  revision: 1884308846-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
index 9fca2056..61a100aa 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-viewer-1884308846-210715919
+  name: appstudiolarge-viewer-1884308846-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-210715919
+  revision: 1884308846-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 460e9a1f..65558c72 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-cluster-resources
+metadata: {}
 objects:
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
index f801a266..47320a87 100644
--- a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env
+metadata: {}
 objects:
 - apiVersion: v1
   kind: Namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
index f1c42317..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-admin
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
index b392cfea..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-contributor
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
index d9db7266..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-maintainer
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
index b3ab2182..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-viewer
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
index c387158c..3574d3d3 100644
--- a/components/sandbox/tiers/src/appstudio/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-cluster-resources
+metadata: {}
 objects:
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 8de7cf5b..34bb6790 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-tenant
+metadata: {}
 objects:
 - apiVersion: v1
   kind: Namespace
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
index 3f588984..7b406985 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-admin # name is used in e2e tests
+metadata: {}
 objects:
 
 # Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
index 1486dbaa..18e1033a 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-contributor # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
index a3d9124b..79c5dd03 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-maintainer # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
index e743a5cd..56519cb3 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-viewer # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 2d9a507f..4032211b 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
-- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
-- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
-- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
-- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
-- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
-- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+- tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
+- tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
+- tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
+- tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
+- tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 13653115..8df3e412 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,18 +9,18 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+    templateRef: appstudio-env-clusterresources-266544570-266544570
   namespaces:
-  - templateRef: appstudio-env-env-1575256421-1575256421
+  - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
     serviceAccountName: namespace-manager
   spaceRoles:
     admin:
-      templateRef: appstudio-env-admin-4171108837-4171108837
+      templateRef: appstudio-env-admin-37575401-37575401
     contributor:
-      templateRef: appstudio-env-contributor-297495683-297495683
+      templateRef: appstudio-env-contributor-37575401-37575401
     maintainer:
-      templateRef: appstudio-env-maintainer-1039478644-1039478644
+      templateRef: appstudio-env-maintainer-37575401-37575401
     viewer:
-      templateRef: appstudio-env-viewer-617892940-617892940
+      templateRef: appstudio-env-viewer-37575401-37575401
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
index 143511a7..2e824935 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-admin-4171108837-4171108837
+  name: appstudio-env-admin-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 4171108837-4171108837
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-admin
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: admin
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
index 508a3067..a370605e 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-clusterresources-2916842387-2916842387
+  name: appstudio-env-clusterresources-266544570-266544570
   namespace: toolchain-host-operator
 spec:
-  revision: 2916842387-2916842387
+  revision: 266544570-266544570
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
index cb3258b1..8114d2ad 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-contributor-297495683-297495683
+  name: appstudio-env-contributor-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 297495683-297495683
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-contributor
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: contributor
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
index 7902bec6..b52f7b37 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-env-1575256421-1575256421
+  name: appstudio-env-env-1082365650-1082365650
   namespace: toolchain-host-operator
 spec:
-  revision: 1575256421-1575256421
+  revision: 1082365650-1082365650
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
similarity index 73%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
index d1c40004..9da9e319 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-maintainer-1039478644-1039478644
+  name: appstudio-env-maintainer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 1039478644-1039478644
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-maintainer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
similarity index 75%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
index ea578856..22b1e4f5 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-viewer-617892940-617892940
+  name: appstudio-env-viewer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 617892940-617892940
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-viewer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: viewer
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index aa09f7a6..3f9879e1 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
-- tiertemplate-appstudio-admin-221167138-221167138.yaml
-- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
-- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
-- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
-- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
-- tiertemplate-appstudio-viewer-210715919-210715919.yaml
+- tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
+- tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
+- tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-tenant-199961605-199961605.yaml
+- tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 244d324a..0e11825a 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-750679343-750679343
+    templateRef: appstudio-clusterresources-809836689-809836689
   namespaces:
-  - templateRef: appstudio-tenant-1252037388-1252037388
+  - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-221167138-221167138
+      templateRef: appstudio-admin-2415879015-2415879015
     contributor:
-      templateRef: appstudio-contributor-3696782055-3696782055
+      templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
-      templateRef: appstudio-maintainer-98574726-98574726
+      templateRef: appstudio-maintainer-293087644-293087644
     viewer:
-      templateRef: appstudio-viewer-210715919-210715919
+      templateRef: appstudio-viewer-4059797645-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
index 9530645f..8861f81a 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-admin-221167138-221167138
+  name: appstudio-admin-2415879015-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 221167138-221167138
+  revision: 2415879015-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
index f757fe94..8ee96e8a 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-clusterresources-750679343-750679343
+  name: appstudio-clusterresources-809836689-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 750679343-750679343
+  revision: 809836689-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
index c4c56172..70391669 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-contributor-3696782055-3696782055
+  name: appstudio-contributor-1817914940-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 3696782055-3696782055
+  revision: 1817914940-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
index bb5d3e13..31e4ad22 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-maintainer-98574726-98574726
+  name: appstudio-maintainer-293087644-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 98574726-98574726
+  revision: 293087644-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
index 4b9efbc1..4b5f4adb 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-tenant-1252037388-1252037388
+  name: appstudio-tenant-199961605-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1252037388-1252037388
+  revision: 199961605-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
index 0e3ebcff..53e544d1 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-viewer-210715919-210715919
+  name: appstudio-viewer-4059797645-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 210715919-210715919
+  revision: 4059797645-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 917073d2..af4b81d4 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
-- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
-- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
-- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
-- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
-- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
-- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 6c89688f..af3b1d1f 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+    templateRef: appstudiolarge-clusterresources-1884308846-809836689
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-221167138
+      templateRef: appstudiolarge-admin-1884308846-2415879015
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-3696782055
+      templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-98574726
+      templateRef: appstudiolarge-maintainer-1884308846-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-210715919
+      templateRef: appstudiolarge-viewer-1884308846-4059797645
 status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
index 6de49f4f..50de7c02 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-admin-1884308846-221167138
+  name: appstudiolarge-admin-1884308846-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-221167138
+  revision: 1884308846-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
index d69d0090..e9dcb6b1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-clusterresources-1884308846-750679343
+  name: appstudiolarge-clusterresources-1884308846-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-750679343
+  revision: 1884308846-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
index 7ab5ab89..a12c61e2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-contributor-1884308846-3696782055
+  name: appstudiolarge-contributor-1884308846-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-3696782055
+  revision: 1884308846-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
index 095b72e1..acc6efc2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-maintainer-1884308846-98574726
+  name: appstudiolarge-maintainer-1884308846-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-98574726
+  revision: 1884308846-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
index 6f23b134..9125d0cd 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-tenant-1884308846-1252037388
+  name: appstudiolarge-tenant-1884308846-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-1252037388
+  revision: 1884308846-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
index 9fca2056..61a100aa 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-viewer-1884308846-210715919
+  name: appstudiolarge-viewer-1884308846-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-210715919
+  revision: 1884308846-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 1e77a84b to d5be2620 on Thu Jul 18 17:15:25 2024 </h3>  
 
<details> 
<summary>Git Diff (1374 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 2d9a507f..4032211b 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
-- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
-- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
-- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
-- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
-- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
-- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+- tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
+- tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
+- tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
+- tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
+- tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 13653115..8df3e412 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,18 +9,18 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+    templateRef: appstudio-env-clusterresources-266544570-266544570
   namespaces:
-  - templateRef: appstudio-env-env-1575256421-1575256421
+  - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
     serviceAccountName: namespace-manager
   spaceRoles:
     admin:
-      templateRef: appstudio-env-admin-4171108837-4171108837
+      templateRef: appstudio-env-admin-37575401-37575401
     contributor:
-      templateRef: appstudio-env-contributor-297495683-297495683
+      templateRef: appstudio-env-contributor-37575401-37575401
     maintainer:
-      templateRef: appstudio-env-maintainer-1039478644-1039478644
+      templateRef: appstudio-env-maintainer-37575401-37575401
     viewer:
-      templateRef: appstudio-env-viewer-617892940-617892940
+      templateRef: appstudio-env-viewer-37575401-37575401
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
index 143511a7..2e824935 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-admin-4171108837-4171108837
+  name: appstudio-env-admin-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 4171108837-4171108837
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-admin
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: admin
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
index 508a3067..a370605e 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-clusterresources-2916842387-2916842387
+  name: appstudio-env-clusterresources-266544570-266544570
   namespace: toolchain-host-operator
 spec:
-  revision: 2916842387-2916842387
+  revision: 266544570-266544570
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
index cb3258b1..8114d2ad 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-contributor-297495683-297495683
+  name: appstudio-env-contributor-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 297495683-297495683
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-contributor
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
index 7902bec6..b52f7b37 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-env-1575256421-1575256421
+  name: appstudio-env-env-1082365650-1082365650
   namespace: toolchain-host-operator
 spec:
-  revision: 1575256421-1575256421
+  revision: 1082365650-1082365650
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
similarity index 73%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
index d1c40004..9da9e319 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-maintainer-1039478644-1039478644
+  name: appstudio-env-maintainer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 1039478644-1039478644
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-maintainer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
similarity index 75%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
rename to components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
index ea578856..22b1e4f5 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-viewer-617892940-617892940
+  name: appstudio-env-viewer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 617892940-617892940
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-viewer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: viewer
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index aa09f7a6..3f9879e1 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
-- tiertemplate-appstudio-admin-221167138-221167138.yaml
-- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
-- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
-- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
-- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
-- tiertemplate-appstudio-viewer-210715919-210715919.yaml
+- tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
+- tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
+- tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-tenant-199961605-199961605.yaml
+- tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index 244d324a..0e11825a 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-750679343-750679343
+    templateRef: appstudio-clusterresources-809836689-809836689
   namespaces:
-  - templateRef: appstudio-tenant-1252037388-1252037388
+  - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-221167138-221167138
+      templateRef: appstudio-admin-2415879015-2415879015
     contributor:
-      templateRef: appstudio-contributor-3696782055-3696782055
+      templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
-      templateRef: appstudio-maintainer-98574726-98574726
+      templateRef: appstudio-maintainer-293087644-293087644
     viewer:
-      templateRef: appstudio-viewer-210715919-210715919
+      templateRef: appstudio-viewer-4059797645-4059797645
 status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
index 9530645f..8861f81a 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-admin-221167138-221167138
+  name: appstudio-admin-2415879015-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 221167138-221167138
+  revision: 2415879015-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
index f757fe94..8ee96e8a 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-clusterresources-750679343-750679343
+  name: appstudio-clusterresources-809836689-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 750679343-750679343
+  revision: 809836689-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
index c4c56172..70391669 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-contributor-3696782055-3696782055
+  name: appstudio-contributor-1817914940-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 3696782055-3696782055
+  revision: 1817914940-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
index bb5d3e13..31e4ad22 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-maintainer-98574726-98574726
+  name: appstudio-maintainer-293087644-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 98574726-98574726
+  revision: 293087644-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
index 4b9efbc1..4b5f4adb 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-tenant-1252037388-1252037388
+  name: appstudio-tenant-199961605-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1252037388-1252037388
+  revision: 199961605-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
rename to components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
index 0e3ebcff..53e544d1 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-viewer-210715919-210715919
+  name: appstudio-viewer-4059797645-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 210715919-210715919
+  revision: 4059797645-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index 917073d2..af4b81d4 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
-- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
-- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
-- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
-- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
-- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
-- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 6c89688f..af3b1d1f 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+    templateRef: appstudiolarge-clusterresources-1884308846-809836689
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-221167138
+      templateRef: appstudiolarge-admin-1884308846-2415879015
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-3696782055
+      templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-98574726
+      templateRef: appstudiolarge-maintainer-1884308846-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-210715919
+      templateRef: appstudiolarge-viewer-1884308846-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
index 6de49f4f..50de7c02 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-admin-1884308846-221167138
+  name: appstudiolarge-admin-1884308846-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-221167138
+  revision: 1884308846-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
index d69d0090..e9dcb6b1 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-clusterresources-1884308846-750679343
+  name: appstudiolarge-clusterresources-1884308846-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-750679343
+  revision: 1884308846-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
index 7ab5ab89..a12c61e2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-contributor-1884308846-3696782055
+  name: appstudiolarge-contributor-1884308846-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-3696782055
+  revision: 1884308846-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
index 095b72e1..acc6efc2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-maintainer-1884308846-98574726
+  name: appstudiolarge-maintainer-1884308846-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-98574726
+  revision: 1884308846-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
index 6f23b134..9125d0cd 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-tenant-1884308846-1252037388
+  name: appstudiolarge-tenant-1884308846-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-1252037388
+  revision: 1884308846-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
rename to components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
index 9fca2056..61a100aa 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-viewer-1884308846-210715919
+  name: appstudiolarge-viewer-1884308846-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-210715919
+  revision: 1884308846-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 460e9a1f..65558c72 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-cluster-resources
+metadata: {}
 objects:
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
index f801a266..47320a87 100644
--- a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env
+metadata: {}
 objects:
 - apiVersion: v1
   kind: Namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
index f1c42317..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-admin
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
index b392cfea..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-contributor
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
index d9db7266..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-maintainer
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
index b3ab2182..359a2355 100644
--- a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
@@ -1,6 +1,5 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-env-spacerole-viewer
+metadata: {}
 objects: []
 # The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
index c387158c..3574d3d3 100644
--- a/components/sandbox/tiers/src/appstudio/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-cluster-resources
+metadata: {}
 objects:
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 8de7cf5b..34bb6790 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-tenant
+metadata: {}
 objects:
 - apiVersion: v1
   kind: Namespace
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
index 3f588984..7b406985 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-admin # name is used in e2e tests
+metadata: {}
 objects:
 
 # Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
index 1486dbaa..18e1033a 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-contributor # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
index a3d9124b..79c5dd03 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-maintainer # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
index e743a5cd..56519cb3 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
@@ -1,7 +1,6 @@
 apiVersion: template.openshift.io/v1
 kind: Template
-metadata:
-  name: appstudio-spacerole-viewer # name is used in e2e tests
+metadata: {}
 objects:
 
 # RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 2d9a507f..4032211b 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
-- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
-- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
-- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
-- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
-- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
-- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+- tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
+- tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
+- tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
+- tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
+- tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 13653115..8df3e412 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,18 +9,18 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+    templateRef: appstudio-env-clusterresources-266544570-266544570
   namespaces:
-  - templateRef: appstudio-env-env-1575256421-1575256421
+  - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
     serviceAccountName: namespace-manager
   spaceRoles:
     admin:
-      templateRef: appstudio-env-admin-4171108837-4171108837
+      templateRef: appstudio-env-admin-37575401-37575401
     contributor:
-      templateRef: appstudio-env-contributor-297495683-297495683
+      templateRef: appstudio-env-contributor-37575401-37575401
     maintainer:
-      templateRef: appstudio-env-maintainer-1039478644-1039478644
+      templateRef: appstudio-env-maintainer-37575401-37575401
     viewer:
-      templateRef: appstudio-env-viewer-617892940-617892940
+      templateRef: appstudio-env-viewer-37575401-37575401
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
index 143511a7..2e824935 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-admin-4171108837-4171108837
+  name: appstudio-env-admin-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 4171108837-4171108837
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-admin
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: admin
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
index 508a3067..a370605e 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-clusterresources-2916842387-2916842387
+  name: appstudio-env-clusterresources-266544570-266544570
   namespace: toolchain-host-operator
 spec:
-  revision: 2916842387-2916842387
+  revision: 266544570-266544570
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
similarity index 74%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
index cb3258b1..8114d2ad 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-contributor-297495683-297495683
+  name: appstudio-env-contributor-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 297495683-297495683
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-contributor
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: contributor
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
index 7902bec6..b52f7b37 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-env-1575256421-1575256421
+  name: appstudio-env-env-1082365650-1082365650
   namespace: toolchain-host-operator
 spec:
-  revision: 1575256421-1575256421
+  revision: 1082365650-1082365650
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
similarity index 73%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
index d1c40004..9da9e319 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-maintainer-1039478644-1039478644
+  name: appstudio-env-maintainer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 1039478644-1039478644
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-maintainer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
similarity index 75%
rename from components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
rename to components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
index ea578856..22b1e4f5 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-37575401-37575401.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-env-viewer-617892940-617892940
+  name: appstudio-env-viewer-37575401-37575401
   namespace: toolchain-host-operator
 spec:
-  revision: 617892940-617892940
+  revision: 37575401-37575401
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-env-spacerole-viewer
+    metadata: {}
     objects: []
   tierName: appstudio-env
   type: viewer
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index aa09f7a6..3f9879e1 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
-- tiertemplate-appstudio-admin-221167138-221167138.yaml
-- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
-- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
-- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
-- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
-- tiertemplate-appstudio-viewer-210715919-210715919.yaml
+- tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
+- tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
+- tiertemplate-appstudio-maintainer-293087644-293087644.yaml
+- tiertemplate-appstudio-tenant-199961605-199961605.yaml
+- tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 244d324a..0e11825a 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-750679343-750679343
+    templateRef: appstudio-clusterresources-809836689-809836689
   namespaces:
-  - templateRef: appstudio-tenant-1252037388-1252037388
+  - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-221167138-221167138
+      templateRef: appstudio-admin-2415879015-2415879015
     contributor:
-      templateRef: appstudio-contributor-3696782055-3696782055
+      templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
-      templateRef: appstudio-maintainer-98574726-98574726
+      templateRef: appstudio-maintainer-293087644-293087644
     viewer:
-      templateRef: appstudio-viewer-210715919-210715919
+      templateRef: appstudio-viewer-4059797645-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
index 9530645f..8861f81a 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-2415879015-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-admin-221167138-221167138
+  name: appstudio-admin-2415879015-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 221167138-221167138
+  revision: 2415879015-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
index f757fe94..8ee96e8a 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-clusterresources-750679343-750679343
+  name: appstudio-clusterresources-809836689-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 750679343-750679343
+  revision: 809836689-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
index c4c56172..70391669 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-contributor-3696782055-3696782055
+  name: appstudio-contributor-1817914940-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 3696782055-3696782055
+  revision: 1817914940-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
index bb5d3e13..31e4ad22 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-293087644-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-maintainer-98574726-98574726
+  name: appstudio-maintainer-293087644-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 98574726-98574726
+  revision: 293087644-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
index 4b9efbc1..4b5f4adb 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-199961605-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-tenant-1252037388-1252037388
+  name: appstudio-tenant-199961605-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1252037388-1252037388
+  revision: 199961605-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
rename to components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
index 0e3ebcff..53e544d1 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudio-viewer-210715919-210715919
+  name: appstudio-viewer-4059797645-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 210715919-210715919
+  revision: 4059797645-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 917073d2..af4b81d4 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -6,9 +6,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
-- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
-- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
-- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
-- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
-- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
-- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index 6c89688f..af3b1d1f 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+    templateRef: appstudiolarge-clusterresources-1884308846-809836689
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-221167138
+      templateRef: appstudiolarge-admin-1884308846-2415879015
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-3696782055
+      templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-98574726
+      templateRef: appstudiolarge-maintainer-1884308846-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-210715919
+      templateRef: appstudiolarge-viewer-1884308846-4059797645
 status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
index 6de49f4f..50de7c02 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-admin-1884308846-221167138
+  name: appstudiolarge-admin-1884308846-2415879015
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-221167138
+  revision: 1884308846-2415879015
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-admin
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
index d69d0090..e9dcb6b1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-clusterresources-1884308846-750679343
+  name: appstudiolarge-clusterresources-1884308846-809836689
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-750679343
+  revision: 1884308846-809836689
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-cluster-resources
+    metadata: {}
     objects:
     - apiVersion: quota.openshift.io/v1
       kind: ClusterResourceQuota
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
similarity index 96%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
index 7ab5ab89..a12c61e2 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-contributor-1884308846-3696782055
+  name: appstudiolarge-contributor-1884308846-1817914940
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-3696782055
+  revision: 1884308846-1817914940
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-contributor
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
similarity index 97%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
index 095b72e1..acc6efc2 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-maintainer-1884308846-98574726
+  name: appstudiolarge-maintainer-1884308846-293087644
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-98574726
+  revision: 1884308846-293087644
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-maintainer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
similarity index 98%
rename from components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
index 6f23b134..9125d0cd 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-tenant-1884308846-1252037388
+  name: appstudiolarge-tenant-1884308846-199961605
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-1252037388
+  revision: 1884308846-199961605
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-tenant
+    metadata: {}
     objects:
     - apiVersion: v1
       kind: Namespace
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
similarity index 96%
rename from components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
rename to components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
index 9fca2056..61a100aa 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
@@ -5,15 +5,14 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: TierTemplate
 metadata:
-  name: appstudiolarge-viewer-1884308846-210715919
+  name: appstudiolarge-viewer-1884308846-4059797645
   namespace: toolchain-host-operator
 spec:
-  revision: 1884308846-210715919
+  revision: 1884308846-4059797645
   template:
     apiVersion: template.openshift.io/v1
     kind: Template
-    metadata:
-      name: appstudio-spacerole-viewer
+    metadata: {}
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
       kind: Role 
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
<h3>4: Production changes from aaf386cc to 1e77a84b on Thu Jul 18 16:09:25 2024 </h3>  
 
<details> 
<summary>Git Diff (218 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 4caca9fc..da8ba978 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -23,5 +23,6 @@ resources:
   - spacerequest-cleaner
   - mintmaker
   - tracing-workload-otel-collector
+  - tempo
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml
new file mode 100644
index 00000000..8dc45879
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- tempo.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml b/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml
new file mode 100644
index 00000000..8a536da9
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+spec:
+  generators:
+  - merge:
+      mergeKeys:
+        - nameNormalized
+      generators:
+        - clusters:
+            values:
+              sourceRoot: components/tracing/tempo
+              environment: development
+              clusterDir: ""
+        - list:
+            elements: []
+  template:
+    metadata:
+      name: tempo-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+      destination:
+        namespace: tempo-operator
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3c226fa9..69397a33 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -173,4 +173,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-otel-collector
\ No newline at end of file
+      name: tracing-workload-otel-collector
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tempo
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 9bb8ff78..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -10,3 +10,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# Tempo is excluded from the production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 02387926..e036e910 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,4 +5,9 @@ metadata:
   name: gitops
 $patch: delete
 ---
-
+# Tempo is excluded from the staging
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+$patch: delete
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 2c7f7fc3..383aa39f 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -1,5 +1,9 @@
 config:
   exporters:
+    otlphttp:
+      endpoint: http://tempo-tempo.tempo-operator.svc.cluster.local:4318
+      tls:
+        insecure: true
     debug:
       verbosity: basic
   extensions:
@@ -42,6 +46,7 @@ config:
       traces:
         exporters:
           - debug
+          - otlphttp
         processors:
           - memory_limiter
           - attributes/collector-info
diff --git a/components/tracing/tempo/development/kustomization.yaml b/components/tracing/tempo/development/kustomization.yaml
new file mode 100644
index 00000000..9f6435b8
--- /dev/null
+++ b/components/tracing/tempo/development/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - tempo-operator.yaml
+  - tempo.yaml
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/tracing/tempo/development/tempo-operator.yaml b/components/tracing/tempo/development/tempo-operator.yaml
new file mode 100644
index 00000000..3d463477
--- /dev/null
+++ b/components/tracing/tempo/development/tempo-operator.yaml
@@ -0,0 +1,36 @@
+---
+# Namespace for Grafana Tempo Operator
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+---
+# Grafana Tempo Operator Group
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+spec:
+  upgradeStrategy: Default
+---
+# Subscription for tempo-operator
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: tempo-product
+  namespace: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: Replace=true
+  labels:
+    operators.coreos.com/tempo-product.tempo-operator: ""
+spec:
+  channel: stable
+  installPlanApproval: Automatic
+  name: tempo-product
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
diff --git a/components/tracing/tempo/development/tempo.yaml b/components/tracing/tempo/development/tempo.yaml
new file mode 100644
index 00000000..f8a38a17
--- /dev/null
+++ b/components/tracing/tempo/development/tempo.yaml
@@ -0,0 +1,18 @@
+apiVersion: tempo.grafana.com/v1alpha1
+kind: TempoMonolithic
+metadata:
+  name: tempo
+  namespace: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  storage:
+    traces:
+      backend: pv
+      size: 10Gi
+  jaegerui:
+    enabled: true
+    route:
+      enabled: true
+    ingress:
+      enabled: true 
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
<h3>4: Staging changes from aaf386cc to 1e77a84b on Thu Jul 18 16:09:25 2024 </h3>  
 
<details> 
<summary>Git Diff (218 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 4caca9fc..da8ba978 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -23,5 +23,6 @@ resources:
   - spacerequest-cleaner
   - mintmaker
   - tracing-workload-otel-collector
+  - tempo
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml
new file mode 100644
index 00000000..8dc45879
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- tempo.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml b/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml
new file mode 100644
index 00000000..8a536da9
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+spec:
+  generators:
+  - merge:
+      mergeKeys:
+        - nameNormalized
+      generators:
+        - clusters:
+            values:
+              sourceRoot: components/tracing/tempo
+              environment: development
+              clusterDir: ""
+        - list:
+            elements: []
+  template:
+    metadata:
+      name: tempo-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+      destination:
+        namespace: tempo-operator
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3c226fa9..69397a33 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -173,4 +173,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-otel-collector
\ No newline at end of file
+      name: tracing-workload-otel-collector
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tempo
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 9bb8ff78..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -10,3 +10,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# Tempo is excluded from the production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 02387926..e036e910 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,4 +5,9 @@ metadata:
   name: gitops
 $patch: delete
 ---
-
+# Tempo is excluded from the staging
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+$patch: delete
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 2c7f7fc3..383aa39f 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -1,5 +1,9 @@
 config:
   exporters:
+    otlphttp:
+      endpoint: http://tempo-tempo.tempo-operator.svc.cluster.local:4318
+      tls:
+        insecure: true
     debug:
       verbosity: basic
   extensions:
@@ -42,6 +46,7 @@ config:
       traces:
         exporters:
           - debug
+          - otlphttp
         processors:
           - memory_limiter
           - attributes/collector-info
diff --git a/components/tracing/tempo/development/kustomization.yaml b/components/tracing/tempo/development/kustomization.yaml
new file mode 100644
index 00000000..9f6435b8
--- /dev/null
+++ b/components/tracing/tempo/development/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - tempo-operator.yaml
+  - tempo.yaml
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/tracing/tempo/development/tempo-operator.yaml b/components/tracing/tempo/development/tempo-operator.yaml
new file mode 100644
index 00000000..3d463477
--- /dev/null
+++ b/components/tracing/tempo/development/tempo-operator.yaml
@@ -0,0 +1,36 @@
+---
+# Namespace for Grafana Tempo Operator
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+---
+# Grafana Tempo Operator Group
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+spec:
+  upgradeStrategy: Default
+---
+# Subscription for tempo-operator
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: tempo-product
+  namespace: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: Replace=true
+  labels:
+    operators.coreos.com/tempo-product.tempo-operator: ""
+spec:
+  channel: stable
+  installPlanApproval: Automatic
+  name: tempo-product
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
diff --git a/components/tracing/tempo/development/tempo.yaml b/components/tracing/tempo/development/tempo.yaml
new file mode 100644
index 00000000..f8a38a17
--- /dev/null
+++ b/components/tracing/tempo/development/tempo.yaml
@@ -0,0 +1,18 @@
+apiVersion: tempo.grafana.com/v1alpha1
+kind: TempoMonolithic
+metadata:
+  name: tempo
+  namespace: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  storage:
+    traces:
+      backend: pv
+      size: 10Gi
+  jaegerui:
+    enabled: true
+    route:
+      enabled: true
+    ingress:
+      enabled: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from aaf386cc to 1e77a84b on Thu Jul 18 16:09:25 2024 </h3>  
 
<details> 
<summary>Git Diff (218 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 4caca9fc..da8ba978 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -23,5 +23,6 @@ resources:
   - spacerequest-cleaner
   - mintmaker
   - tracing-workload-otel-collector
+  - tempo
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml
new file mode 100644
index 00000000..8dc45879
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/tempo/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- tempo.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml b/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml
new file mode 100644
index 00000000..8a536da9
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/tempo/tempo.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+spec:
+  generators:
+  - merge:
+      mergeKeys:
+        - nameNormalized
+      generators:
+        - clusters:
+            values:
+              sourceRoot: components/tracing/tempo
+              environment: development
+              clusterDir: ""
+        - list:
+            elements: []
+  template:
+    metadata:
+      name: tempo-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+      destination:
+        namespace: tempo-operator
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3c226fa9..69397a33 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -173,4 +173,9 @@ patches:
     target:
       kind: ApplicationSet
       version: v1alpha1
-      name: tracing-workload-otel-collector
\ No newline at end of file
+      name: tracing-workload-otel-collector
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tempo
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 9bb8ff78..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -10,3 +10,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# Tempo is excluded from the production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 02387926..e036e910 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -5,4 +5,9 @@ metadata:
   name: gitops
 $patch: delete
 ---
-
+# Tempo is excluded from the staging
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tempo
+$patch: delete
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 2c7f7fc3..383aa39f 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -1,5 +1,9 @@
 config:
   exporters:
+    otlphttp:
+      endpoint: http://tempo-tempo.tempo-operator.svc.cluster.local:4318
+      tls:
+        insecure: true
     debug:
       verbosity: basic
   extensions:
@@ -42,6 +46,7 @@ config:
       traces:
         exporters:
           - debug
+          - otlphttp
         processors:
           - memory_limiter
           - attributes/collector-info
diff --git a/components/tracing/tempo/development/kustomization.yaml b/components/tracing/tempo/development/kustomization.yaml
new file mode 100644
index 00000000..9f6435b8
--- /dev/null
+++ b/components/tracing/tempo/development/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - tempo-operator.yaml
+  - tempo.yaml
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/tracing/tempo/development/tempo-operator.yaml b/components/tracing/tempo/development/tempo-operator.yaml
new file mode 100644
index 00000000..3d463477
--- /dev/null
+++ b/components/tracing/tempo/development/tempo-operator.yaml
@@ -0,0 +1,36 @@
+---
+# Namespace for Grafana Tempo Operator
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+---
+# Grafana Tempo Operator Group
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+spec:
+  upgradeStrategy: Default
+---
+# Subscription for tempo-operator
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: tempo-product
+  namespace: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: Replace=true
+  labels:
+    operators.coreos.com/tempo-product.tempo-operator: ""
+spec:
+  channel: stable
+  installPlanApproval: Automatic
+  name: tempo-product
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
diff --git a/components/tracing/tempo/development/tempo.yaml b/components/tracing/tempo/development/tempo.yaml
new file mode 100644
index 00000000..f8a38a17
--- /dev/null
+++ b/components/tracing/tempo/development/tempo.yaml
@@ -0,0 +1,18 @@
+apiVersion: tempo.grafana.com/v1alpha1
+kind: TempoMonolithic
+metadata:
+  name: tempo
+  namespace: tempo-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  storage:
+    traces:
+      backend: pv
+      size: 10Gi
+  jaegerui:
+    enabled: true
+    route:
+      enabled: true
+    ingress:
+      enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-aaf386cc/development/app-of-apps-development.yaml
1301,1346d1300
<   name: tempo
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/tracing/tempo
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: tempo-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: tempo-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata: 
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
