# kustomize changes tracked by commits 
### This file generated at Tue May  7 12:05:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from da1f7647 to c6a7ec1c on Tue May 7 10:56:19 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 7f82f9e6..0bcbef62 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (206 lines)</summary>  

``` 
./commit-da1f7647/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
28d27
<       - v1beta2
247c246
<     served: true
---
>     served: false
255,257d253
<     deprecated: true
<     deprecationWarning: The v1beta1 version is deprecated and will be automatically
<       migrated to v1beta2
485,662d480
<     storage: false
<     subresources:
<       status: {}
<   - additionalPrinterColumns:
<     - jsonPath: .spec.application
<       name: Application
<       type: string
<     name: v1beta2
<     schema:
<       openAPIV3Schema:
<         description: IntegrationTestScenario is the Schema for the integrationtestscenarios
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
<             description: IntegrationTestScenarioSpec defines the desired state of
<               IntegrationScenario
<             properties:
<               application:
<                 description: Application that's associated with the IntegrationTestScenario
<                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                 type: string
<               contexts:
<                 description: Contexts where this IntegrationTestScenario can be applied
<                 items:
<                   description: TestContext contains the name and values of a Test
<                     context
<                   properties:
<                     description:
<                       type: string
<                     name:
<                       type: string
<                   required:
<                   - name
<                   type: object
<                 type: array
<               params:
<                 description: Params to pass to the pipeline
<                 items:
<                   description: PipelineParameter contains the name and values of a
<                     Tekton Pipeline parameter
<                   properties:
<                     name:
<                       type: string
<                     value:
<                       type: string
<                     values:
<                       items:
<                         type: string
<                       type: array
<                   required:
<                   - name
<                   type: object
<                 type: array
<               resolverRef:
<                 description: Tekton Resolver where to store the Tekton resolverRef
<                   trigger Tekton pipeline used to refer to a Pipeline or Task in a
<                   remote location like a git repo.
<                 properties:
<                   params:
<                     description: Params contains the parameters used to identify the
<                       referenced Tekton resource. Example entries might include "repo"
<                       or "path" but the set of params ultimately depends on the chosen
<                       resolver.
<                     items:
<                       description: ResolverParameter contains the name and values
<                         used to identify the referenced Tekton resource
<                       properties:
<                         name:
<                           type: string
<                         value:
<                           type: string
<                       required:
<                       - name
<                       - value
<                       type: object
<                     type: array
<                   resolver:
<                     description: Resolver is the name of the resolver that should
<                       perform resolution of the referenced Tekton resource, such as
<                       "git" or "bundle"..
<                     type: string
<                 required:
<                 - params
<                 - resolver
<                 type: object
<             required:
<             - application
<             - resolverRef
<             type: object
<           status:
<             description: IntegrationTestScenarioStatus defines the observed state
<               of IntegrationTestScenario
<             properties:
<               conditions:
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource. --- This struct is intended for direct
<                     use as an array at the field path .status.conditions.  For example,
<                     \n type FooStatus struct{ // Represents the observations of a
<                     foo's current state. // Known .status.conditions.type are: \"Available\",
<                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
<                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
<                   properties:
<                     lastTransitionTime:
<                       description: lastTransitionTime is the last time the condition
<                         transitioned from one status to another. This should be when
<                         the underlying condition changed.  If that is not known, then
<                         using the time when the API field changed is acceptable.
<                       format: date-time
<                       type: string
<                     message:
<                       description: message is a human readable message indicating
<                         details about the transition. This may be an empty string.
<                       maxLength: 32768
<                       type: string
<                     observedGeneration:
<                       description: observedGeneration represents the .metadata.generation
<                         that the condition was set based upon. For instance, if .metadata.generation
<                         is currently 12, but the .status.conditions[x].observedGeneration
<                         is 9, the condition is out of date with respect to the current
<                         state of the instance.
<                       format: int64
<                       minimum: 0
<                       type: integer
<                     reason:
<                       description: reason contains a programmatic identifier indicating
<                         the reason for the condition's last transition. Producers
<                         of specific condition types may define expected values and
<                         meanings for this field, and whether the values are considered
<                         a guaranteed API. The value should be a CamelCase string.
<                         This field may not be empty.
<                       maxLength: 1024
<                       minLength: 1
<                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
<                       type: string
<                     status:
<                       description: status of the condition, one of True, False, Unknown.
<                       enum:
<                       - "True"
<                       - "False"
<                       - Unknown
<                       type: string
<                     type:
<                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
<                         --- Many .condition.type values are consistent across resources
<                         like Available, but because arbitrary conditions can be useful
<                         (see .node.status.conditions), the ability to deconflict is
<                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
<                       maxLength: 316
<                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
<                       type: string
<                   required:
<                   - lastTransitionTime
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<             required:
<             - conditions
<             type: object
<         type: object
<     served: true
1389c1207
<         image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>         image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
1480c1298
<             image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>             image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
1559c1377
<       path: /validate-appstudio-redhat-com-v1beta2-integrationtestscenario
---
>       path: /validate-appstudio-redhat-com-v1beta1-integrationtestscenario
1566c1384
<     - v1beta2
---
>     - v1beta1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from da1f7647 to c6a7ec1c on Tue May 7 10:56:19 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 7f82f9e6..0bcbef62 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url 
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
<h3>1: Development changes from da1f7647 to c6a7ec1c on Tue May 7 10:56:19 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 7f82f9e6..0bcbef62 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5ed1f0e6 to da1f7647 on Tue May 7 09:47:46 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index afc95ff1..1529f218 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46f869b8..23d2c9b5 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=eba25da684737cb9b0b4f79e8845cf9b453844b1
+      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5ed1f0e6/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
378c378
<   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
---
>   verify_ec_task_git_revision: eba25da684737cb9b0b4f79e8845cf9b453844b1
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5ed1f0e6 to da1f7647 on Tue May 7 09:47:46 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index afc95ff1..1529f218 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46f869b8..23d2c9b5 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=eba25da684737cb9b0b4f79e8845cf9b453844b1
+      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5ed1f0e6/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
378c378
<   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
---
>   verify_ec_task_git_revision: eba25da684737cb9b0b4f79e8845cf9b453844b1
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18 
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
<h3>2: Development changes from 5ed1f0e6 to da1f7647 on Tue May 7 09:47:46 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index afc95ff1..1529f218 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46f869b8..23d2c9b5 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=eba25da684737cb9b0b4f79e8845cf9b453844b1
+      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5ed1f0e6/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
378c378
<   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
---
>   verify_ec_task_git_revision: eba25da684737cb9b0b4f79e8845cf9b453844b1
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 58b54562 to 5ed1f0e6 on Mon May 6 20:22:42 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5c4a2ded..9f50e0b8 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 8807f00d..0e5663ec 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 58b54562 to 5ed1f0e6 on Mon May 6 20:22:42 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5c4a2ded..9f50e0b8 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 8807f00d..0e5663ec 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-58b54562/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
26d25
<       - v1alpha1
247c246
<     served: true
---
>     served: false
1389c1388
<         image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>         image: quay.io/redhat-appstudio/integration-service:28ad2673b20fa5af343793e0f52f2f7eefe3ab55
1480c1479
<             image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>             image: quay.io/redhat-appstudio/integration-service:28ad2673b20fa5af343793e0f52f2f7eefe3ab55 
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
<h3>3: Development changes from 58b54562 to 5ed1f0e6 on Mon May 6 20:22:42 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5c4a2ded..9f50e0b8 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 8807f00d..0e5663ec 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 28ad2673b20fa5af343793e0f52f2f7eefe3ab55
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-58b54562/development/components/integration/development/kustomize.out.yaml
26d25
<       - v1alpha1
247c246
<     served: true
---
>     served: false
1387c1386
<         image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>         image: quay.io/redhat-appstudio/integration-service:28ad2673b20fa5af343793e0f52f2f7eefe3ab55
1481c1480
<             image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>             image: quay.io/redhat-appstudio/integration-service:28ad2673b20fa5af343793e0f52f2f7eefe3ab55 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from aea67596 to 58b54562 on Mon May 6 13:43:54 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index 0c903a1d..babd9717 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -12,12 +12,16 @@ spec:
               values:
                 sourceRoot: components/keycloak
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
               selector:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: keycloak-{{nameNormalized}}
@@ -36,9 +40,6 @@ spec:
           jsonPointers:
             - /spec/realm/identityProviders/0/config/clientSecret
       syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
         syncOptions:
           - CreateNamespace=true
         retry:
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 13168393..0c96f94f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,15 @@ kind: ApplicationSet
 metadata:
   name: kubesaw-common
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: keycloak
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 652ec837..1a18add3 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -10,6 +10,8 @@ resources:
   - ../../base/ca-bundle
   - ../../base/repository-validator
   - ../../base/quality-dashboard
+  - ../../base/keycloak
+  - ../../base/ui
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -110,6 +112,26 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: set-local-cluster-label.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
+  - path: set-local-cluster-label.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/development/set-local-cluster-label.yaml b/argo-cd-apps/overlays/development/set-local-cluster-label.yaml
new file mode 100644
index 00000000..6869b3f7
--- /dev/null
+++ b/argo-cd-apps/overlays/development/set-local-cluster-label.yaml
@@ -0,0 +1,5 @@
+---
+- op: replace
+  path: /spec/generators/0/merge/generators/0/clusters/selector/matchLabels
+  value:
+    argocd.argoproj.io/secret-type: cluster
diff --git a/components/keycloak/README.md b/components/keycloak/README.md
new file mode 100644
index 00000000..8d8599d1
--- /dev/null
+++ b/components/keycloak/README.md
@@ -0,0 +1,38 @@
+---
+title: Keycloak
+---
+
+## Overview
+
+[Keycloak](https://access.redhat.com/documentation/en-us/red_hat_single_sign-on/7.6), deployed by RHSSO using an operator, is used as an authentication backed for the UI and dev-sandbox.
+
+It's configured to read identities from Openshift, and use them for authenticating to Konflux.
+
+The authentication flow has the following steps:
+
+1. The user clicks on the login button in the UI.
+2. The user is redirected to Keycloak for authentication.
+3. The user should choose to login using Openshift.
+4. Keycloak reads the user's identity from Openshift and returns a token to the UI.
+5. When the user do an action in the ui, a request is sent to dev-sandbox with the token, dev-sandbox verifies the token using the Keycloak realm public key and authenticates the user.
+
+
+## Updating the client secret for Openshift
+
+Keycloak should be configured with the client secret provided by OCP (generated by the `openshift-provider` service account and secret) so it can use OCP for authenticating users.
+
+The value of the secret is generated after the secret and service account are deployed on the cluster
+
+The Keycloak operator doesn't update Keycloak when the change to there is a change to the client secret.
+
+Because of this limitation, we need to configure the secret for the oauth client manually using the following steps:
+
+In the `rhtap-auth` namespace
+
+- Get the token of the "openshift-provider" secret
+- Get the credentials for logging into keycloak from the secret "credential-keycloak" 
+- Get the route for keycloak (it's named "keycloak"), and open the web ui.
+- Goto administration console and login
+- Goto "identity providers" and then click on "openshift-v4"
+- Paste the token copied from the "openshift-provider" - secret in the "Client Secret" text box.
+- Click save
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
new file mode 100644
index 00000000..3bdb9b0d
--- /dev/null
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -0,0 +1,317 @@
+---
+kind: ServiceAccount
+apiVersion: v1
+metadata:
+  name: openshift-provider
+  annotations:
+    serviceaccounts.openshift.io/oauth-redirecturi.rhtap: tba
+---
+kind: Secret
+apiVersion: v1
+metadata:
+  name: openshift-provider
+  annotations:
+    kubernetes.io/service-account.name: openshift-provider
+type: kubernetes.io/service-account-token
+---
+apiVersion: keycloak.org/v1alpha1
+kind: Keycloak
+metadata:
+  labels:
+    app: sso
+  name: keycloak
+spec:
+  external:
+    enabled: false
+  externalAccess:
+    enabled: true
+  instances: 3
+  keycloakDeploymentSpec:
+    imagePullPolicy: Always
+  multiAvailablityZones:
+    enabled: true
+  postgresDeploymentSpec:
+    imagePullPolicy: Always
+---
+apiVersion: keycloak.org/v1alpha1
+kind: KeycloakRealm
+metadata:
+  name: redhat-external
+  labels:
+    realm: redhat-external
+    app: sso
+spec:
+  instanceSelector:
+    matchLabels:
+      app: sso
+  realm:
+    clientScopes:
+      - attributes:
+          display.on.consent.screen: 'true'
+          include.in.token.scope: 'true'
+        id: 672455b2-1e92-44f6-9fb6-fe2017995aed
+        name: profile_level.name_and_dev_terms
+        protocol: openid-connect
+      - id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
+        name: profile
+        description: 'OpenID Connect built-in scope: profile'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${profileScopeConsentText}
+        protocolMappers:
+          - id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
+            name: locale
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: locale
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: locale
+              jsonType.label: String
+          - id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
+            name: full name
+            protocol: openid-connect
+            protocolMapper: oidc-full-name-mapper
+            consentRequired: false
+            config:
+              id.token.claim: "true"
+              access.token.claim: "true"
+              userinfo.token.claim: "true"
+          - id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
+            name: family name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: lastName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: family_name
+              jsonType.label: String
+          - id: 71c6caff-3f17-47db-8dc1-42f9af01832e
+            name: updated at
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: updatedAt
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: updated_at
+              jsonType.label: long
+          - id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
+            name: picture
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: picture
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: picture
+              jsonType.label: String
+          - id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
+            name: nickname
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: nickname
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: nickname
+              jsonType.label: String
+          - id: f8167604-073d-47ea-9fd1-6ec754ce5c49
+            name: website
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: website
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: website
+              jsonType.label: String
+          - id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
+            name: profile
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: profile
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: profile
+              jsonType.label: String
+          - id: 463f80df-1554-4f0b-889f-1e6f2308ba17
+            name: username
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: username
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: preferred_username
+              jsonType.label: String
+          - id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
+            name: given name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: firstName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: given_name
+              jsonType.label: String
+          - id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
+            name: zoneinfo
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: zoneinfo
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: zoneinfo
+              jsonType.label: String
+          - id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
+            name: gender
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: gender
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: gender
+              jsonType.label: String
+          - id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
+            name: birthdate
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: birthdate
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: birthdate
+              jsonType.label: String
+          - id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
+            name: middle name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: middleName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: middle_name
+              jsonType.label: String
+      - id: 45e1900d-2199-45fc-9028-a39497a6cdd5
+        name: email
+        description: 'OpenID Connect built-in scope: email'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${emailScopeConsentText}
+        protocolMappers:
+          - id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
+            name: email
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: email
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: email
+              jsonType.label: String
+          - id: 26f0791c-93cf-4241-9c92-5528e67b9817
+            name: email verified
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: emailVerified
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: email_verified
+              jsonType.label: boolean
+    displayName: redhat-external
+    enabled: true
+    id: redhat-external
+    identityProviders:
+      - alias: openshift-v4
+        config:
+          authorizationUrl: >-
+            https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+          baseUrl: 'https://api.stone-stage-p01.apys.p3.openshiftapps.com:443'
+          clientId: 'system:serviceaccount:rhtap-auth:openshift-provider'
+          clientSecret: "To be added manually in the keycloak UI see the readme"
+          tokenUrl: 'https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token'
+        enabled: true
+        internalId: openshift-v4
+        providerId: openshift-v4
+    realm: redhat-external
+    sslRequired: all
+---
+apiVersion: keycloak.org/v1alpha1
+kind: KeycloakClient
+metadata:
+  name: cloud-services
+  labels:
+    app: sso
+spec:
+  client:
+    enabled: true
+    clientAuthenticatorType: client-secret
+    redirectUris:
+      - '*'
+    clientId: cloud-services
+    optionalClientScopes:
+      - address
+      - phone
+      - profile_level.name_and_dev_terms
+      - offline_access
+      - microprofile-jwt
+    defaultClientScopes:
+      - web-origins
+      - acr
+      - nameandterms
+      - profile
+      - roles
+      - email
+    implicitFlowEnabled: false
+    secret: client-secret
+    publicClient: true
+    standardFlowEnabled: true
+    webOrigins:
+      - '*'
+    id: e3e1d703-62c1-46f4-b706-e3d7eebafd01
+    directAccessGrantsEnabled: false
+  realmSelector:
+    matchLabels:
+      realm: redhat-external
+  scopeMappings: {}
diff --git a/components/keycloak/base/kustomization.yaml b/components/keycloak/base/kustomization.yaml
index 54b698fc..78ade8f2 100644
--- a/components/keycloak/base/kustomization.yaml
+++ b/components/keycloak/base/kustomization.yaml
@@ -1,5 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - konflux-workspace-admins
+  - namespace.yaml
+  - rhsso-operator.yaml
+  - configure-keycloak.yaml
 namespace: rhtap-auth
diff --git a/components/keycloak/base/namespace.yaml b/components/keycloak/base/namespace.yaml
new file mode 100644
index 00000000..117a05b7
--- /dev/null
+++ b/components/keycloak/base/namespace.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: rhtap-auth
diff --git a/components/keycloak/base/rhsso-operator.yaml b/components/keycloak/base/rhsso-operator.yaml
new file mode 100644
index 00000000..29d0bb2b
--- /dev/null
+++ b/components/keycloak/base/rhsso-operator.yaml
@@ -0,0 +1,19 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: rhsso-operator
+spec:
+  channel: stable
+  name: rhsso-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  installPlanApproval: Automatic
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: keycloak-operatorgroup
+spec:
+  targetNamespaces:
+    - rhtap-auth
diff --git a/components/keycloak/development/kustomization.yaml b/components/keycloak/development/kustomization.yaml
new file mode 100644
index 00000000..f8020c60
--- /dev/null
+++ b/components/keycloak/development/kustomization.yaml
@@ -0,0 +1,19 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: reduce-replicas.yaml
+    target:
+      group: keycloak.org
+      version: v1alpha1
+      name: keycloak
+      kind: Keycloak
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/development/reduce-replicas.yaml b/components/keycloak/development/reduce-replicas.yaml
new file mode 100644
index 00000000..85e6c8fb
--- /dev/null
+++ b/components/keycloak/development/reduce-replicas.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/instances
+  value: 1
diff --git a/components/keycloak/development/set-ocp-idp.yaml b/components/keycloak/development/set-ocp-idp.yaml
new file mode 100644
index 00000000..767929c6
--- /dev/null
+++ b/components/keycloak/development/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.@TBA@/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.@TBA@:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.@TBA@/oauth/token
diff --git a/components/keycloak/development/set-redirect-uri.yaml b/components/keycloak/development/set-redirect-uri.yaml
new file mode 100644
index 00000000..9b015542
--- /dev/null
+++ b/components/keycloak/development/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://@TBA@/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/keycloak/production/base/kustomization.yaml b/components/keycloak/production/base/kustomization.yaml
deleted file mode 100644
index 7ec74567..00000000
--- a/components/keycloak/production/base/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/production/stone-prod-p01/kustomization.yaml b/components/keycloak/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..c5eeb9a0
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+#  - ../../base
+  - ../../base/konflux-workspace-admins
+#patches:
+#  - path: set-redirect-uri.yaml
+#    target:
+#      name: openshift-provider
+#      kind: ServiceAccount
+#  - path: set-ocp-idp.yaml
+#    target:
+#      name: redhat-external
+#      kind: KeycloakRealm
diff --git a/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml b/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..15fa8470
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-prod-p01.wcfb.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml b/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..5246c88e
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/keycloak/staging/base/kustomization.yaml b/components/keycloak/staging/base/kustomization.yaml
deleted file mode 100644
index 7ec74567..00000000
--- a/components/keycloak/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/staging/stone-stage-p01/kustomization.yaml b/components/keycloak/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..0f640327
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/konflux-workspace-admins
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..bcdbb917
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-stage-p01.apys.p3.openshiftapps.com:443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token
diff --git a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..7aafecc9
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/ui/development/fed-modules.json b/components/ui/development/fed-modules.json
new file mode 100644
index 00000000..b3757400
--- /dev/null
+++ b/components/ui/development/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://@TBA@/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
new file mode 100644
index 00000000..9b3ea7f6
--- /dev/null
+++ b/components/ui/development/kustomization.yaml
@@ -0,0 +1,33 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: a40a953
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: e3decf1   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
+  - path: reduce-replicas.yaml
+    target:
+      kind: Deployment
+      group: apps
+      version: v1
diff --git a/components/ui/development/reduce-replicas.yaml b/components/ui/development/reduce-replicas.yaml
new file mode 100644
index 00000000..9c8f1a1a
--- /dev/null
+++ b/components/ui/development/reduce-replicas.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/replicas
+  value: 1
diff --git a/components/ui/development/set-hostname.yaml b/components/ui/development/set-hostname.yaml
new file mode 100644
index 00000000..855636e4
--- /dev/null
+++ b/components/ui/development/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: "@TBA" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-58b54562/production/components: keycloak 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from aea67596 to 58b54562 on Mon May 6 13:43:54 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index 0c903a1d..babd9717 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -12,12 +12,16 @@ spec:
               values:
                 sourceRoot: components/keycloak
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
               selector:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: keycloak-{{nameNormalized}}
@@ -36,9 +40,6 @@ spec:
           jsonPointers:
             - /spec/realm/identityProviders/0/config/clientSecret
       syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
         syncOptions:
           - CreateNamespace=true
         retry:
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 13168393..0c96f94f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,15 @@ kind: ApplicationSet
 metadata:
   name: kubesaw-common
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: keycloak
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 652ec837..1a18add3 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -10,6 +10,8 @@ resources:
   - ../../base/ca-bundle
   - ../../base/repository-validator
   - ../../base/quality-dashboard
+  - ../../base/keycloak
+  - ../../base/ui
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -110,6 +112,26 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: set-local-cluster-label.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
+  - path: set-local-cluster-label.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/development/set-local-cluster-label.yaml b/argo-cd-apps/overlays/development/set-local-cluster-label.yaml
new file mode 100644
index 00000000..6869b3f7
--- /dev/null
+++ b/argo-cd-apps/overlays/development/set-local-cluster-label.yaml
@@ -0,0 +1,5 @@
+---
+- op: replace
+  path: /spec/generators/0/merge/generators/0/clusters/selector/matchLabels
+  value:
+    argocd.argoproj.io/secret-type: cluster
diff --git a/components/keycloak/README.md b/components/keycloak/README.md
new file mode 100644
index 00000000..8d8599d1
--- /dev/null
+++ b/components/keycloak/README.md
@@ -0,0 +1,38 @@
+---
+title: Keycloak
+---
+
+## Overview
+
+[Keycloak](https://access.redhat.com/documentation/en-us/red_hat_single_sign-on/7.6), deployed by RHSSO using an operator, is used as an authentication backed for the UI and dev-sandbox.
+
+It's configured to read identities from Openshift, and use them for authenticating to Konflux.
+
+The authentication flow has the following steps:
+
+1. The user clicks on the login button in the UI.
+2. The user is redirected to Keycloak for authentication.
+3. The user should choose to login using Openshift.
+4. Keycloak reads the user's identity from Openshift and returns a token to the UI.
+5. When the user do an action in the ui, a request is sent to dev-sandbox with the token, dev-sandbox verifies the token using the Keycloak realm public key and authenticates the user.
+
+
+## Updating the client secret for Openshift
+
+Keycloak should be configured with the client secret provided by OCP (generated by the `openshift-provider` service account and secret) so it can use OCP for authenticating users.
+
+The value of the secret is generated after the secret and service account are deployed on the cluster
+
+The Keycloak operator doesn't update Keycloak when the change to there is a change to the client secret.
+
+Because of this limitation, we need to configure the secret for the oauth client manually using the following steps:
+
+In the `rhtap-auth` namespace
+
+- Get the token of the "openshift-provider" secret
+- Get the credentials for logging into keycloak from the secret "credential-keycloak" 
+- Get the route for keycloak (it's named "keycloak"), and open the web ui.
+- Goto administration console and login
+- Goto "identity providers" and then click on "openshift-v4"
+- Paste the token copied from the "openshift-provider" - secret in the "Client Secret" text box.
+- Click save
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
new file mode 100644
index 00000000..3bdb9b0d
--- /dev/null
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -0,0 +1,317 @@
+---
+kind: ServiceAccount
+apiVersion: v1
+metadata:
+  name: openshift-provider
+  annotations:
+    serviceaccounts.openshift.io/oauth-redirecturi.rhtap: tba
+---
+kind: Secret
+apiVersion: v1
+metadata:
+  name: openshift-provider
+  annotations:
+    kubernetes.io/service-account.name: openshift-provider
+type: kubernetes.io/service-account-token
+---
+apiVersion: keycloak.org/v1alpha1
+kind: Keycloak
+metadata:
+  labels:
+    app: sso
+  name: keycloak
+spec:
+  external:
+    enabled: false
+  externalAccess:
+    enabled: true
+  instances: 3
+  keycloakDeploymentSpec:
+    imagePullPolicy: Always
+  multiAvailablityZones:
+    enabled: true
+  postgresDeploymentSpec:
+    imagePullPolicy: Always
+---
+apiVersion: keycloak.org/v1alpha1
+kind: KeycloakRealm
+metadata:
+  name: redhat-external
+  labels:
+    realm: redhat-external
+    app: sso
+spec:
+  instanceSelector:
+    matchLabels:
+      app: sso
+  realm:
+    clientScopes:
+      - attributes:
+          display.on.consent.screen: 'true'
+          include.in.token.scope: 'true'
+        id: 672455b2-1e92-44f6-9fb6-fe2017995aed
+        name: profile_level.name_and_dev_terms
+        protocol: openid-connect
+      - id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
+        name: profile
+        description: 'OpenID Connect built-in scope: profile'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${profileScopeConsentText}
+        protocolMappers:
+          - id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
+            name: locale
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: locale
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: locale
+              jsonType.label: String
+          - id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
+            name: full name
+            protocol: openid-connect
+            protocolMapper: oidc-full-name-mapper
+            consentRequired: false
+            config:
+              id.token.claim: "true"
+              access.token.claim: "true"
+              userinfo.token.claim: "true"
+          - id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
+            name: family name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: lastName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: family_name
+              jsonType.label: String
+          - id: 71c6caff-3f17-47db-8dc1-42f9af01832e
+            name: updated at
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: updatedAt
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: updated_at
+              jsonType.label: long
+          - id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
+            name: picture
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: picture
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: picture
+              jsonType.label: String
+          - id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
+            name: nickname
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: nickname
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: nickname
+              jsonType.label: String
+          - id: f8167604-073d-47ea-9fd1-6ec754ce5c49
+            name: website
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: website
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: website
+              jsonType.label: String
+          - id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
+            name: profile
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: profile
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: profile
+              jsonType.label: String
+          - id: 463f80df-1554-4f0b-889f-1e6f2308ba17
+            name: username
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: username
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: preferred_username
+              jsonType.label: String
+          - id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
+            name: given name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: firstName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: given_name
+              jsonType.label: String
+          - id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
+            name: zoneinfo
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: zoneinfo
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: zoneinfo
+              jsonType.label: String
+          - id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
+            name: gender
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: gender
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: gender
+              jsonType.label: String
+          - id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
+            name: birthdate
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: birthdate
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: birthdate
+              jsonType.label: String
+          - id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
+            name: middle name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: middleName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: middle_name
+              jsonType.label: String
+      - id: 45e1900d-2199-45fc-9028-a39497a6cdd5
+        name: email
+        description: 'OpenID Connect built-in scope: email'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${emailScopeConsentText}
+        protocolMappers:
+          - id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
+            name: email
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: email
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: email
+              jsonType.label: String
+          - id: 26f0791c-93cf-4241-9c92-5528e67b9817
+            name: email verified
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: emailVerified
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: email_verified
+              jsonType.label: boolean
+    displayName: redhat-external
+    enabled: true
+    id: redhat-external
+    identityProviders:
+      - alias: openshift-v4
+        config:
+          authorizationUrl: >-
+            https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+          baseUrl: 'https://api.stone-stage-p01.apys.p3.openshiftapps.com:443'
+          clientId: 'system:serviceaccount:rhtap-auth:openshift-provider'
+          clientSecret: "To be added manually in the keycloak UI see the readme"
+          tokenUrl: 'https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token'
+        enabled: true
+        internalId: openshift-v4
+        providerId: openshift-v4
+    realm: redhat-external
+    sslRequired: all
+---
+apiVersion: keycloak.org/v1alpha1
+kind: KeycloakClient
+metadata:
+  name: cloud-services
+  labels:
+    app: sso
+spec:
+  client:
+    enabled: true
+    clientAuthenticatorType: client-secret
+    redirectUris:
+      - '*'
+    clientId: cloud-services
+    optionalClientScopes:
+      - address
+      - phone
+      - profile_level.name_and_dev_terms
+      - offline_access
+      - microprofile-jwt
+    defaultClientScopes:
+      - web-origins
+      - acr
+      - nameandterms
+      - profile
+      - roles
+      - email
+    implicitFlowEnabled: false
+    secret: client-secret
+    publicClient: true
+    standardFlowEnabled: true
+    webOrigins:
+      - '*'
+    id: e3e1d703-62c1-46f4-b706-e3d7eebafd01
+    directAccessGrantsEnabled: false
+  realmSelector:
+    matchLabels:
+      realm: redhat-external
+  scopeMappings: {}
diff --git a/components/keycloak/base/kustomization.yaml b/components/keycloak/base/kustomization.yaml
index 54b698fc..78ade8f2 100644
--- a/components/keycloak/base/kustomization.yaml
+++ b/components/keycloak/base/kustomization.yaml
@@ -1,5 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - konflux-workspace-admins
+  - namespace.yaml
+  - rhsso-operator.yaml
+  - configure-keycloak.yaml
 namespace: rhtap-auth
diff --git a/components/keycloak/base/namespace.yaml b/components/keycloak/base/namespace.yaml
new file mode 100644
index 00000000..117a05b7
--- /dev/null
+++ b/components/keycloak/base/namespace.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: rhtap-auth
diff --git a/components/keycloak/base/rhsso-operator.yaml b/components/keycloak/base/rhsso-operator.yaml
new file mode 100644
index 00000000..29d0bb2b
--- /dev/null
+++ b/components/keycloak/base/rhsso-operator.yaml
@@ -0,0 +1,19 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: rhsso-operator
+spec:
+  channel: stable
+  name: rhsso-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  installPlanApproval: Automatic
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: keycloak-operatorgroup
+spec:
+  targetNamespaces:
+    - rhtap-auth
diff --git a/components/keycloak/development/kustomization.yaml b/components/keycloak/development/kustomization.yaml
new file mode 100644
index 00000000..f8020c60
--- /dev/null
+++ b/components/keycloak/development/kustomization.yaml
@@ -0,0 +1,19 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: reduce-replicas.yaml
+    target:
+      group: keycloak.org
+      version: v1alpha1
+      name: keycloak
+      kind: Keycloak
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/development/reduce-replicas.yaml b/components/keycloak/development/reduce-replicas.yaml
new file mode 100644
index 00000000..85e6c8fb
--- /dev/null
+++ b/components/keycloak/development/reduce-replicas.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/instances
+  value: 1
diff --git a/components/keycloak/development/set-ocp-idp.yaml b/components/keycloak/development/set-ocp-idp.yaml
new file mode 100644
index 00000000..767929c6
--- /dev/null
+++ b/components/keycloak/development/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.@TBA@/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.@TBA@:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.@TBA@/oauth/token
diff --git a/components/keycloak/development/set-redirect-uri.yaml b/components/keycloak/development/set-redirect-uri.yaml
new file mode 100644
index 00000000..9b015542
--- /dev/null
+++ b/components/keycloak/development/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://@TBA@/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/keycloak/production/base/kustomization.yaml b/components/keycloak/production/base/kustomization.yaml
deleted file mode 100644
index 7ec74567..00000000
--- a/components/keycloak/production/base/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/production/stone-prod-p01/kustomization.yaml b/components/keycloak/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..c5eeb9a0
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+#  - ../../base
+  - ../../base/konflux-workspace-admins
+#patches:
+#  - path: set-redirect-uri.yaml
+#    target:
+#      name: openshift-provider
+#      kind: ServiceAccount
+#  - path: set-ocp-idp.yaml
+#    target:
+#      name: redhat-external
+#      kind: KeycloakRealm
diff --git a/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml b/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..15fa8470
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-prod-p01.wcfb.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml b/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..5246c88e
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/keycloak/staging/base/kustomization.yaml b/components/keycloak/staging/base/kustomization.yaml
deleted file mode 100644
index 7ec74567..00000000
--- a/components/keycloak/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/staging/stone-stage-p01/kustomization.yaml b/components/keycloak/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..0f640327
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/konflux-workspace-admins
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..bcdbb917
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-stage-p01.apys.p3.openshiftapps.com:443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token
diff --git a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..7aafecc9
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/ui/development/fed-modules.json b/components/ui/development/fed-modules.json
new file mode 100644
index 00000000..b3757400
--- /dev/null
+++ b/components/ui/development/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://@TBA@/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
new file mode 100644
index 00000000..9b3ea7f6
--- /dev/null
+++ b/components/ui/development/kustomization.yaml
@@ -0,0 +1,33 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: a40a953
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: e3decf1   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
+  - path: reduce-replicas.yaml
+    target:
+      kind: Deployment
+      group: apps
+      version: v1
diff --git a/components/ui/development/reduce-replicas.yaml b/components/ui/development/reduce-replicas.yaml
new file mode 100644
index 00000000..9c8f1a1a
--- /dev/null
+++ b/components/ui/development/reduce-replicas.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/replicas
+  value: 1
diff --git a/components/ui/development/set-hostname.yaml b/components/ui/development/set-hostname.yaml
new file mode 100644
index 00000000..855636e4
--- /dev/null
+++ b/components/ui/development/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: "@TBA" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-58b54562/staging/components: keycloak 
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
<h3>4: Development changes from aea67596 to 58b54562 on Mon May 6 13:43:54 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index 0c903a1d..babd9717 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -12,12 +12,16 @@ spec:
               values:
                 sourceRoot: components/keycloak
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
               selector:
                 matchLabels:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: keycloak-{{nameNormalized}}
@@ -36,9 +40,6 @@ spec:
           jsonPointers:
             - /spec/realm/identityProviders/0/config/clientSecret
       syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
         syncOptions:
           - CreateNamespace=true
         retry:
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 13168393..0c96f94f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,15 @@ kind: ApplicationSet
 metadata:
   name: kubesaw-common
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: keycloak
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 652ec837..1a18add3 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -10,6 +10,8 @@ resources:
   - ../../base/ca-bundle
   - ../../base/repository-validator
   - ../../base/quality-dashboard
+  - ../../base/keycloak
+  - ../../base/ui
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -110,6 +112,26 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: set-local-cluster-label.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
+  - path: set-local-cluster-label.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/development/set-local-cluster-label.yaml b/argo-cd-apps/overlays/development/set-local-cluster-label.yaml
new file mode 100644
index 00000000..6869b3f7
--- /dev/null
+++ b/argo-cd-apps/overlays/development/set-local-cluster-label.yaml
@@ -0,0 +1,5 @@
+---
+- op: replace
+  path: /spec/generators/0/merge/generators/0/clusters/selector/matchLabels
+  value:
+    argocd.argoproj.io/secret-type: cluster
diff --git a/components/keycloak/README.md b/components/keycloak/README.md
new file mode 100644
index 00000000..8d8599d1
--- /dev/null
+++ b/components/keycloak/README.md
@@ -0,0 +1,38 @@
+---
+title: Keycloak
+---
+
+## Overview
+
+[Keycloak](https://access.redhat.com/documentation/en-us/red_hat_single_sign-on/7.6), deployed by RHSSO using an operator, is used as an authentication backed for the UI and dev-sandbox.
+
+It's configured to read identities from Openshift, and use them for authenticating to Konflux.
+
+The authentication flow has the following steps:
+
+1. The user clicks on the login button in the UI.
+2. The user is redirected to Keycloak for authentication.
+3. The user should choose to login using Openshift.
+4. Keycloak reads the user's identity from Openshift and returns a token to the UI.
+5. When the user do an action in the ui, a request is sent to dev-sandbox with the token, dev-sandbox verifies the token using the Keycloak realm public key and authenticates the user.
+
+
+## Updating the client secret for Openshift
+
+Keycloak should be configured with the client secret provided by OCP (generated by the `openshift-provider` service account and secret) so it can use OCP for authenticating users.
+
+The value of the secret is generated after the secret and service account are deployed on the cluster
+
+The Keycloak operator doesn't update Keycloak when the change to there is a change to the client secret.
+
+Because of this limitation, we need to configure the secret for the oauth client manually using the following steps:
+
+In the `rhtap-auth` namespace
+
+- Get the token of the "openshift-provider" secret
+- Get the credentials for logging into keycloak from the secret "credential-keycloak" 
+- Get the route for keycloak (it's named "keycloak"), and open the web ui.
+- Goto administration console and login
+- Goto "identity providers" and then click on "openshift-v4"
+- Paste the token copied from the "openshift-provider" - secret in the "Client Secret" text box.
+- Click save
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
new file mode 100644
index 00000000..3bdb9b0d
--- /dev/null
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -0,0 +1,317 @@
+---
+kind: ServiceAccount
+apiVersion: v1
+metadata:
+  name: openshift-provider
+  annotations:
+    serviceaccounts.openshift.io/oauth-redirecturi.rhtap: tba
+---
+kind: Secret
+apiVersion: v1
+metadata:
+  name: openshift-provider
+  annotations:
+    kubernetes.io/service-account.name: openshift-provider
+type: kubernetes.io/service-account-token
+---
+apiVersion: keycloak.org/v1alpha1
+kind: Keycloak
+metadata:
+  labels:
+    app: sso
+  name: keycloak
+spec:
+  external:
+    enabled: false
+  externalAccess:
+    enabled: true
+  instances: 3
+  keycloakDeploymentSpec:
+    imagePullPolicy: Always
+  multiAvailablityZones:
+    enabled: true
+  postgresDeploymentSpec:
+    imagePullPolicy: Always
+---
+apiVersion: keycloak.org/v1alpha1
+kind: KeycloakRealm
+metadata:
+  name: redhat-external
+  labels:
+    realm: redhat-external
+    app: sso
+spec:
+  instanceSelector:
+    matchLabels:
+      app: sso
+  realm:
+    clientScopes:
+      - attributes:
+          display.on.consent.screen: 'true'
+          include.in.token.scope: 'true'
+        id: 672455b2-1e92-44f6-9fb6-fe2017995aed
+        name: profile_level.name_and_dev_terms
+        protocol: openid-connect
+      - id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
+        name: profile
+        description: 'OpenID Connect built-in scope: profile'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${profileScopeConsentText}
+        protocolMappers:
+          - id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
+            name: locale
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: locale
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: locale
+              jsonType.label: String
+          - id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
+            name: full name
+            protocol: openid-connect
+            protocolMapper: oidc-full-name-mapper
+            consentRequired: false
+            config:
+              id.token.claim: "true"
+              access.token.claim: "true"
+              userinfo.token.claim: "true"
+          - id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
+            name: family name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: lastName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: family_name
+              jsonType.label: String
+          - id: 71c6caff-3f17-47db-8dc1-42f9af01832e
+            name: updated at
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: updatedAt
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: updated_at
+              jsonType.label: long
+          - id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
+            name: picture
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: picture
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: picture
+              jsonType.label: String
+          - id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
+            name: nickname
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: nickname
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: nickname
+              jsonType.label: String
+          - id: f8167604-073d-47ea-9fd1-6ec754ce5c49
+            name: website
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: website
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: website
+              jsonType.label: String
+          - id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
+            name: profile
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: profile
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: profile
+              jsonType.label: String
+          - id: 463f80df-1554-4f0b-889f-1e6f2308ba17
+            name: username
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: username
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: preferred_username
+              jsonType.label: String
+          - id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
+            name: given name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: firstName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: given_name
+              jsonType.label: String
+          - id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
+            name: zoneinfo
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: zoneinfo
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: zoneinfo
+              jsonType.label: String
+          - id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
+            name: gender
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: gender
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: gender
+              jsonType.label: String
+          - id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
+            name: birthdate
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: birthdate
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: birthdate
+              jsonType.label: String
+          - id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
+            name: middle name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-attribute-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: middleName
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: middle_name
+              jsonType.label: String
+      - id: 45e1900d-2199-45fc-9028-a39497a6cdd5
+        name: email
+        description: 'OpenID Connect built-in scope: email'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${emailScopeConsentText}
+        protocolMappers:
+          - id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
+            name: email
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: email
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: email
+              jsonType.label: String
+          - id: 26f0791c-93cf-4241-9c92-5528e67b9817
+            name: email verified
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: emailVerified
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: email_verified
+              jsonType.label: boolean
+    displayName: redhat-external
+    enabled: true
+    id: redhat-external
+    identityProviders:
+      - alias: openshift-v4
+        config:
+          authorizationUrl: >-
+            https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+          baseUrl: 'https://api.stone-stage-p01.apys.p3.openshiftapps.com:443'
+          clientId: 'system:serviceaccount:rhtap-auth:openshift-provider'
+          clientSecret: "To be added manually in the keycloak UI see the readme"
+          tokenUrl: 'https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token'
+        enabled: true
+        internalId: openshift-v4
+        providerId: openshift-v4
+    realm: redhat-external
+    sslRequired: all
+---
+apiVersion: keycloak.org/v1alpha1
+kind: KeycloakClient
+metadata:
+  name: cloud-services
+  labels:
+    app: sso
+spec:
+  client:
+    enabled: true
+    clientAuthenticatorType: client-secret
+    redirectUris:
+      - '*'
+    clientId: cloud-services
+    optionalClientScopes:
+      - address
+      - phone
+      - profile_level.name_and_dev_terms
+      - offline_access
+      - microprofile-jwt
+    defaultClientScopes:
+      - web-origins
+      - acr
+      - nameandterms
+      - profile
+      - roles
+      - email
+    implicitFlowEnabled: false
+    secret: client-secret
+    publicClient: true
+    standardFlowEnabled: true
+    webOrigins:
+      - '*'
+    id: e3e1d703-62c1-46f4-b706-e3d7eebafd01
+    directAccessGrantsEnabled: false
+  realmSelector:
+    matchLabels:
+      realm: redhat-external
+  scopeMappings: {}
diff --git a/components/keycloak/base/kustomization.yaml b/components/keycloak/base/kustomization.yaml
index 54b698fc..78ade8f2 100644
--- a/components/keycloak/base/kustomization.yaml
+++ b/components/keycloak/base/kustomization.yaml
@@ -1,5 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - konflux-workspace-admins
+  - namespace.yaml
+  - rhsso-operator.yaml
+  - configure-keycloak.yaml
 namespace: rhtap-auth
diff --git a/components/keycloak/base/namespace.yaml b/components/keycloak/base/namespace.yaml
new file mode 100644
index 00000000..117a05b7
--- /dev/null
+++ b/components/keycloak/base/namespace.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: rhtap-auth
diff --git a/components/keycloak/base/rhsso-operator.yaml b/components/keycloak/base/rhsso-operator.yaml
new file mode 100644
index 00000000..29d0bb2b
--- /dev/null
+++ b/components/keycloak/base/rhsso-operator.yaml
@@ -0,0 +1,19 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: rhsso-operator
+spec:
+  channel: stable
+  name: rhsso-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  installPlanApproval: Automatic
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: keycloak-operatorgroup
+spec:
+  targetNamespaces:
+    - rhtap-auth
diff --git a/components/keycloak/development/kustomization.yaml b/components/keycloak/development/kustomization.yaml
new file mode 100644
index 00000000..f8020c60
--- /dev/null
+++ b/components/keycloak/development/kustomization.yaml
@@ -0,0 +1,19 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: reduce-replicas.yaml
+    target:
+      group: keycloak.org
+      version: v1alpha1
+      name: keycloak
+      kind: Keycloak
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/development/reduce-replicas.yaml b/components/keycloak/development/reduce-replicas.yaml
new file mode 100644
index 00000000..85e6c8fb
--- /dev/null
+++ b/components/keycloak/development/reduce-replicas.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/instances
+  value: 1
diff --git a/components/keycloak/development/set-ocp-idp.yaml b/components/keycloak/development/set-ocp-idp.yaml
new file mode 100644
index 00000000..767929c6
--- /dev/null
+++ b/components/keycloak/development/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.@TBA@/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.@TBA@:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.@TBA@/oauth/token
diff --git a/components/keycloak/development/set-redirect-uri.yaml b/components/keycloak/development/set-redirect-uri.yaml
new file mode 100644
index 00000000..9b015542
--- /dev/null
+++ b/components/keycloak/development/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://@TBA@/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/keycloak/production/base/kustomization.yaml b/components/keycloak/production/base/kustomization.yaml
deleted file mode 100644
index 7ec74567..00000000
--- a/components/keycloak/production/base/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/production/stone-prod-p01/kustomization.yaml b/components/keycloak/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..c5eeb9a0
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+#  - ../../base
+  - ../../base/konflux-workspace-admins
+#patches:
+#  - path: set-redirect-uri.yaml
+#    target:
+#      name: openshift-provider
+#      kind: ServiceAccount
+#  - path: set-ocp-idp.yaml
+#    target:
+#      name: redhat-external
+#      kind: KeycloakRealm
diff --git a/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml b/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..15fa8470
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-prod-p01.wcfb.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml b/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..5246c88e
--- /dev/null
+++ b/components/keycloak/production/stone-prod-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/keycloak/staging/base/kustomization.yaml b/components/keycloak/staging/base/kustomization.yaml
deleted file mode 100644
index 7ec74567..00000000
--- a/components/keycloak/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/staging/stone-stage-p01/kustomization.yaml b/components/keycloak/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..0f640327
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/konflux-workspace-admins
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..bcdbb917
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.stone-stage-p01.apys.p3.openshiftapps.com:443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth.stone-stage-p01.apys.p3.openshiftapps.com/oauth/token
diff --git a/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..7aafecc9
--- /dev/null
+++ b/components/keycloak/staging/stone-stage-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/ui/development/fed-modules.json b/components/ui/development/fed-modules.json
new file mode 100644
index 00000000..b3757400
--- /dev/null
+++ b/components/ui/development/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://@TBA@/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
new file mode 100644
index 00000000..9b3ea7f6
--- /dev/null
+++ b/components/ui/development/kustomization.yaml
@@ -0,0 +1,33 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: a40a953
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: e3decf1   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
+  - path: reduce-replicas.yaml
+    target:
+      kind: Deployment
+      group: apps
+      version: v1
diff --git a/components/ui/development/reduce-replicas.yaml b/components/ui/development/reduce-replicas.yaml
new file mode 100644
index 00000000..9c8f1a1a
--- /dev/null
+++ b/components/ui/development/reduce-replicas.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/replicas
+  value: 1
diff --git a/components/ui/development/set-hostname.yaml b/components/ui/development/set-hostname.yaml
new file mode 100644
index 00000000..855636e4
--- /dev/null
+++ b/components/ui/development/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: "@TBA" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2 lines)</summary>  

``` 
./commit-58b54562/development/components: keycloak
./commit-58b54562/development/components: ui 
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
```
 
</details> 
<br> 


</div>
