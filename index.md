# kustomize changes tracked by commits 
### This file generated at Fri Feb 16 12:02:26 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 7eabcd77 to f4cebf33 on Thu Feb 15 20:49:14 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 4b36db18..ab475094 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index abafc99c..27f59289 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a1a29bdef9936090713597febbbb1523611d7a80
+      - verify_ec_task_git_revision=1c76cb3b1fa1a95b156280562ef1ec6022ed9539
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-7eabcd77/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
378c378
<   verify_ec_task_git_revision: 1c76cb3b1fa1a95b156280562ef1ec6022ed9539
---
>   verify_ec_task_git_revision: a1a29bdef9936090713597febbbb1523611d7a80
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 7eabcd77 to f4cebf33 on Thu Feb 15 20:49:14 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 4b36db18..ab475094 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index abafc99c..27f59289 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a1a29bdef9936090713597febbbb1523611d7a80
+      - verify_ec_task_git_revision=1c76cb3b1fa1a95b156280562ef1ec6022ed9539
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-7eabcd77/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
378c378
<   verify_ec_task_git_revision: 1c76cb3b1fa1a95b156280562ef1ec6022ed9539
---
>   verify_ec_task_git_revision: a1a29bdef9936090713597febbbb1523611d7a80
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f 
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
<h3>1: Development changes from 7eabcd77 to f4cebf33 on Thu Feb 15 20:49:14 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 4b36db18..ab475094 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index abafc99c..27f59289 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a1a29bdef9936090713597febbbb1523611d7a80
+      - verify_ec_task_git_revision=1c76cb3b1fa1a95b156280562ef1ec6022ed9539
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-7eabcd77/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:1c76cb3b1fa1a95b156280562ef1ec6022ed9539@sha256:8653d33d0bed21a7fc6ab4f5f911df96d905264bd0dcd9c7d7a4d60939c4e03b
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
378c378
<   verify_ec_task_git_revision: 1c76cb3b1fa1a95b156280562ef1ec6022ed9539
---
>   verify_ec_task_git_revision: a1a29bdef9936090713597febbbb1523611d7a80
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-61c04f6@sha256:4a4ad1d790624f807d8c9fd6fedc19c98577728afea6d714f539b436ba44a760
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f 
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
<h3>2: Production changes from ebfbb137 to 7eabcd77 on Thu Feb 15 14:51:09 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index f317c523..a11835bb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (232 lines)</summary>  

``` 
./commit-ebfbb137/production/components/integration/production/kustomize.out.yaml
13d12
<     service.beta.openshift.io/inject-cabundle: "true"
17,27d15
<   conversion:
<     strategy: Webhook
<     webhook:
<       clientConfig:
<         service:
<           name: integration-service-webhook-service
<           namespace: integration-service
<           path: /convert
<       conversionReviewVersions:
<       - v1alpha1
<       - v1beta1
42,253d29
<     deprecated: true
<     deprecationWarning: The v1alpha1 version is deprecated and will be automatically
<       migrated to v1beta1
<     name: v1alpha1
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
<               bundle:
<                 description: Tekton Bundle where to find the pipeline
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
<               environment:
<                 description: Environment that will be utilized by the test pipeline
<                 properties:
<                   configuration:
<                     description: EnvironmentConfiguration contains Environment-specific
<                       configurations details, to be used when generating Component/Application
<                       GitOps repository resources.
<                     properties:
<                       env:
<                         description: Env is an array of standard environment vairables
<                         items:
<                           description: EnvVarPair describes environment variables
<                             to use for the component
<                           properties:
<                             name:
<                               description: Name is the environment variable name
<                               type: string
<                             value:
<                               description: Value is the environment variable value
<                               type: string
<                           required:
<                           - name
<                           - value
<                           type: object
<                         type: array
<                       target:
<                         description: Target is used to reference a DeploymentTargetClaim
<                           for a target Environment. The Environment controller uses
<                           the referenced DeploymentTargetClaim to access its bounded
<                           DeploymentTarget with cluster credential secret.
<                         properties:
<                           deploymentTargetClaim:
<                             description: DeploymentTargetClaimConfig specifies the
<                               DeploymentTargetClaim details for a given Environment.
<                             properties:
<                               claimName:
<                                 type: string
<                             required:
<                             - claimName
<                             type: object
<                         required:
<                         - deploymentTargetClaim
<                         type: object
<                     type: object
<                   name:
<                     type: string
<                   type:
<                     description: 'DEPRECATED: EnvironmentType should no longer be
<                       used, and has no replacement. - It''s original purpose was to
<                       indicate whether an environment is POC/Non-POC, but these data
<                       were ultimately not required.'
<                     type: string
<                 required:
<                 - name
<                 - type
<                 type: object
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
<               pipeline:
<                 description: Release Tekton Pipeline to execute
<                 type: string
<             required:
<             - application
<             - bundle
<             - pipeline
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
<     storage: false
<     subresources:
<       status: {}
<   - additionalPrinterColumns:
<     - jsonPath: .spec.application
<       name: Application
<       type: string
1128c904
<         image: quay.io/redhat-appstudio/integration-service:cad02429e3133890bcf92b2d7cc1f94233b8037e
---
>         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ebfbb137 to 7eabcd77 on Thu Feb 15 14:51:09 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index f317c523..a11835bb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from ebfbb137 to 7eabcd77 on Thu Feb 15 14:51:09 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index f317c523..a11835bb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 685c9b9d to ebfbb137 on Wed Feb 14 21:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index de39ec17..8a35cd8d 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,4 +17,4 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
+    name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c799bf10..a851de3a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5642125..209c99db 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 9de825f0..a6db9486 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f7833aa8..4e71d8a4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,12 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: tekton-chains-signing-secret-name.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
deleted file mode 100644
index e5ec0407..00000000
--- a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/target/name
-  value: signing-secrets 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-685c9b9d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1750c1750
<     name: signing-secrets
---
>     name: signing-secrets-vault
./commit-685c9b9d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1750c1750
<     name: signing-secrets
---
>     name: signing-secrets-vault
./commit-685c9b9d/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1750c1750
<     name: signing-secrets
---
>     name: signing-secrets-vault 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 685c9b9d to ebfbb137 on Wed Feb 14 21:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index de39ec17..8a35cd8d 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,4 +17,4 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
+    name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c799bf10..a851de3a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5642125..209c99db 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 9de825f0..a6db9486 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f7833aa8..4e71d8a4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,12 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: tekton-chains-signing-secret-name.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
deleted file mode 100644
index e5ec0407..00000000
--- a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/target/name
-  value: signing-secrets 
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
<h3>3: Development changes from 685c9b9d to ebfbb137 on Wed Feb 14 21:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index de39ec17..8a35cd8d 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,4 +17,4 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
+    name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c799bf10..a851de3a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5642125..209c99db 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 9de825f0..a6db9486 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f7833aa8..4e71d8a4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,12 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: tekton-chains-signing-secret-name.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
deleted file mode 100644
index e5ec0407..00000000
--- a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/target/name
-  value: signing-secrets 
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
<h3>4: Production changes from a1c42cb3 to 685c9b9d on Wed Feb 14 19:38:00 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
new file mode 100644
index 00000000..bcd64c5f
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -0,0 +1,4 @@
+- op: replace
+  path: /spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3cdd649e..62c8850b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -38,3 +38,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: bump-results-watcher-replicas.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d7a82613..c799bf10 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4a5b86a5..b5642125 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 7a088c69..9de825f0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (69 lines)</summary>  

``` 
./commit-a1c42cb3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1452c1452
<   replicas: 2
---
>   replicas: 1
1465,1481d1464
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100
./commit-a1c42cb3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1452c1452
<   replicas: 2
---
>   replicas: 1
1465,1481d1464
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100
./commit-a1c42cb3/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1452c1452
<   replicas: 2
---
>   replicas: 1
1465,1481d1464
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a1c42cb3 to 685c9b9d on Wed Feb 14 19:38:00 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
new file mode 100644
index 00000000..bcd64c5f
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -0,0 +1,4 @@
+- op: replace
+  path: /spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3cdd649e..62c8850b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -38,3 +38,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: bump-results-watcher-replicas.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d7a82613..c799bf10 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4a5b86a5..b5642125 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 7a088c69..9de825f0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
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
<h3>4: Development changes from a1c42cb3 to 685c9b9d on Wed Feb 14 19:38:00 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
new file mode 100644
index 00000000..bcd64c5f
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -0,0 +1,4 @@
+- op: replace
+  path: /spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3cdd649e..62c8850b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -38,3 +38,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: bump-results-watcher-replicas.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d7a82613..c799bf10 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4a5b86a5..b5642125 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 7a088c69..9de825f0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
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
