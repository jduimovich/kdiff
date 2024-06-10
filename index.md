# kustomize changes tracked by commits 
### This file generated at Mon Jun 10 12:05:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a552003d to d5c943a9 on Mon Jun 10 09:23:41 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 603fc299..d2db4940 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e3d7d54d..2356dd62 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a552003d to d5c943a9 on Mon Jun 10 09:23:41 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 603fc299..d2db4940 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e3d7d54d..2356dd62 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (179 lines)</summary>  

``` 
./commit-a552003d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
9a10,170
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: buildpipelineselectors.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: BuildPipelineSelector
>     listKind: BuildPipelineSelectorList
>     plural: buildpipelineselectors
>     singular: buildpipelineselector
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: BuildPipelineSelector is the Schema for the BuildPipelineSelectors
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: BuildPipelineSelectorSpec defines the desired state of BuildPipelineSelector
>             properties:
>               selectors:
>                 description: Defines chain of pipeline selectors. The first matching
>                   item is used.
>                 items:
>                   description: PipelineSelector defines allowed build pipeline and
>                     conditions when it should be used.
>                   properties:
>                     name:
>                       description: Name of the selector item. Optional.
>                       type: string
>                     pipelineParams:
>                       description: Extra arguments to add to the specified pipeline
>                         run.
>                       items:
>                         description: PipelineParam is a type to describe pipeline
>                           parameters. tektonapi.Param type is not used due to validation
>                           issues.
>                         properties:
>                           name:
>                             type: string
>                           value:
>                             type: string
>                         required:
>                         - name
>                         - value
>                         type: object
>                       type: array
>                       x-kubernetes-list-type: atomic
>                     pipelineRef:
>                       description: Build Pipeline to use if the selector conditions
>                         are met.
>                       properties:
>                         apiVersion:
>                           description: API version of the referent
>                           type: string
>                         name:
>                           description: 'Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names'
>                           type: string
>                         params:
>                           description: Params contains the parameters used to identify
>                             the referenced Tekton resource. Example entries might
>                             include "repo" or "path" but the set of params ultimately
>                             depends on the chosen resolver.
>                           items:
>                             description: Param declares an ParamValues to use for
>                               the parameter called name.
>                             properties:
>                               name:
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-type: atomic
>                         resolver:
>                           description: Resolver is the name of the resolver that should
>                             perform resolution of the referenced Tekton resource,
>                             such as "git".
>                           type: string
>                       type: object
>                     when:
>                       description: Defines the selector conditions when given build
>                         pipeline should be used. All conditions are connected via
>                         AND, whereas cases within any condition connected via OR.
>                         If the section is omitted, then the condition is considered
>                         true (usually used for fallback condition).
>                       properties:
>                         annotations:
>                           additionalProperties:
>                             type: string
>                           description: Defines annotations to match. The values to
>                             compare with are taken from component.metadata.annotations
>                             field.
>                           type: object
>                         componentName:
>                           description: Defines list of allowed component names to
>                             match, e.g. 'my-component'. The value to compare with
>                             is taken from component.metadata.name field.
>                           type: string
>                         dockerfile:
>                           description: Defines if a Dockerfile should be present in
>                             the component. Note, unset (nil) value is not the same
>                             as false (unset means skip the dockerfile check). The
>                             value to compare with is taken from devfile components
>                             of image type.
>                           type: boolean
>                         labels:
>                           additionalProperties:
>                             type: string
>                           description: Defines labels to match. The values to compare
>                             with are taken from component.metadata.labels field.
>                           type: object
>                         language:
>                           description: Defines component language to match, e.g. 'java'.
>                             The value to compare with is taken from devfile.metadata.language
>                             field.
>                           type: string
>                         projectType:
>                           description: Defines type of project of the component to
>                             match, e.g. 'quarkus'. The value to compare with is taken
>                             from devfile.metadata.projectType field.
>                           type: string
>                       type: object
>                   required:
>                   - pipelineRef
>                   type: object
>                 type: array
>             required:
>             - selectors
>             type: object
>         type: object
>     served: true
>     storage: true
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
192a354,364
>   - buildpipelineselectors
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
571c743
<         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa
---
>         image: quay.io/konflux-ci/build-service:632b0096f304baf3949cf58f066814d0dc19ae6c 
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
<h3>1: Development changes from a552003d to d5c943a9 on Mon Jun 10 09:23:41 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 603fc299..d2db4940 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index e3d7d54d..2356dd62 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=632b0096f304baf3949cf58f066814d0dc19ae6c
+- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 632b0096f304baf3949cf58f066814d0dc19ae6c
+  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (179 lines)</summary>  

``` 
./commit-a552003d/development/components/build-service/development/kustomize.out.yaml
9a10,170
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: buildpipelineselectors.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: BuildPipelineSelector
>     listKind: BuildPipelineSelectorList
>     plural: buildpipelineselectors
>     singular: buildpipelineselector
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: BuildPipelineSelector is the Schema for the BuildPipelineSelectors
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: BuildPipelineSelectorSpec defines the desired state of BuildPipelineSelector
>             properties:
>               selectors:
>                 description: Defines chain of pipeline selectors. The first matching
>                   item is used.
>                 items:
>                   description: PipelineSelector defines allowed build pipeline and
>                     conditions when it should be used.
>                   properties:
>                     name:
>                       description: Name of the selector item. Optional.
>                       type: string
>                     pipelineParams:
>                       description: Extra arguments to add to the specified pipeline
>                         run.
>                       items:
>                         description: PipelineParam is a type to describe pipeline
>                           parameters. tektonapi.Param type is not used due to validation
>                           issues.
>                         properties:
>                           name:
>                             type: string
>                           value:
>                             type: string
>                         required:
>                         - name
>                         - value
>                         type: object
>                       type: array
>                       x-kubernetes-list-type: atomic
>                     pipelineRef:
>                       description: Build Pipeline to use if the selector conditions
>                         are met.
>                       properties:
>                         apiVersion:
>                           description: API version of the referent
>                           type: string
>                         name:
>                           description: 'Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names'
>                           type: string
>                         params:
>                           description: Params contains the parameters used to identify
>                             the referenced Tekton resource. Example entries might
>                             include "repo" or "path" but the set of params ultimately
>                             depends on the chosen resolver.
>                           items:
>                             description: Param declares an ParamValues to use for
>                               the parameter called name.
>                             properties:
>                               name:
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-type: atomic
>                         resolver:
>                           description: Resolver is the name of the resolver that should
>                             perform resolution of the referenced Tekton resource,
>                             such as "git".
>                           type: string
>                       type: object
>                     when:
>                       description: Defines the selector conditions when given build
>                         pipeline should be used. All conditions are connected via
>                         AND, whereas cases within any condition connected via OR.
>                         If the section is omitted, then the condition is considered
>                         true (usually used for fallback condition).
>                       properties:
>                         annotations:
>                           additionalProperties:
>                             type: string
>                           description: Defines annotations to match. The values to
>                             compare with are taken from component.metadata.annotations
>                             field.
>                           type: object
>                         componentName:
>                           description: Defines list of allowed component names to
>                             match, e.g. 'my-component'. The value to compare with
>                             is taken from component.metadata.name field.
>                           type: string
>                         dockerfile:
>                           description: Defines if a Dockerfile should be present in
>                             the component. Note, unset (nil) value is not the same
>                             as false (unset means skip the dockerfile check). The
>                             value to compare with is taken from devfile components
>                             of image type.
>                           type: boolean
>                         labels:
>                           additionalProperties:
>                             type: string
>                           description: Defines labels to match. The values to compare
>                             with are taken from component.metadata.labels field.
>                           type: object
>                         language:
>                           description: Defines component language to match, e.g. 'java'.
>                             The value to compare with is taken from devfile.metadata.language
>                             field.
>                           type: string
>                         projectType:
>                           description: Defines type of project of the component to
>                             match, e.g. 'quarkus'. The value to compare with is taken
>                             from devfile.metadata.projectType field.
>                           type: string
>                       type: object
>                   required:
>                   - pipelineRef
>                   type: object
>                 type: array
>             required:
>             - selectors
>             type: object
>         type: object
>     served: true
>     storage: true
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
192a354,364
>   - buildpipelineselectors
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
566c738
<         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa
---
>         image: quay.io/konflux-ci/build-service:632b0096f304baf3949cf58f066814d0dc19ae6c 
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
<h3>2: Production changes from 6f21a7d2 to a552003d on Fri Jun 7 13:39:59 2024 </h3>  
 
<details> 
<summary>Git Diff (132 lines)</summary>  

``` 
diff --git a/components/build-service/README.md b/components/build-service/README.md
index 00d7f253..3ddf59c5 100644
--- a/components/build-service/README.md
+++ b/components/build-service/README.md
@@ -47,7 +47,7 @@ PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov
 
 Pipeline bundles are generated by [build-definitions](https://github.com/konflux-ci/build-definitions).
 
-By default, the bundle is defined in `components/build-service/build-pipeline-selector.yaml`. To use alternative pipeline bundles rather than the default ones, either update every predefined `.spec.selectors[].pipelineRef.bundle` in this file and provision cluster again, or create a custom `BuildPipelineSelector` CR in your own namespace.
+By default, the bundle is defined in `components/build-service/base/build-pipeline-config/build-pipeline-config.yaml`.
 
 ### Stage Cluster integration prerequisites
 
diff --git a/components/build-service/base/build-pipeline-selectors/OWNERS b/components/build-service/base/build-pipeline-selectors/OWNERS
deleted file mode 100644
index a8984879..00000000
--- a/components/build-service/base/build-pipeline-selectors/OWNERS
+++ /dev/null
@@ -1,36 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-- tisutisu
-- chmeliik
-- dirgim
-- hongweiliu17
-- jsztuka
-- kasemAlem
-- sonam1412
-- MartinBasti
-- Josh-Everett
-- 14rcole
-- dheerajodha
-
-reviewers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-- tisutisu
-- chmeliik
-- dirgim
-- hongweiliu17
-- jsztuka
-- kasemAlem
-- sonam1412
-- MartinBasti
-- Josh-Everett
-- 14rcole
-- dheerajodha
-
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
deleted file mode 100644
index 8bae9912..00000000
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ /dev/null
@@ -1,54 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: BuildPipelineSelector
-metadata:
-  name: build-pipeline-selector
-spec:
-  selectors:
-    - name: FBC
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: fbc-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: fbc
-    - name: Docker build
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: docker-build
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        dockerfile: true
-    - name: Java
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: java-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: java
-    - name: NodeJS
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: nodejs-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: nodejs,node
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 0a4b8765..132be985 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,11 +1,10 @@
 resources:
 - allow-argocd-to-manage.yaml
-- build-pipeline-selectors/build-pipeline-selector.yaml
 - build-pipeline-config/build-pipeline-config.yaml
 - monitoring.yaml
 - rbac
 
-# Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
+# Skip applying the build-service operands while the build-service operator is being installed.
 # See more information about this option, here:
 # https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-6f21a7d2/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
818a819,876
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: BuildPipelineSelector
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: build-pipeline-selector
>   namespace: build-service
> spec:
>   selectors:
>   - name: FBC
>     pipelineRef:
>       params:
>       - name: name
>         value: fbc-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: fbc
>   - name: Docker build
>     pipelineRef:
>       params:
>       - name: name
>         value: docker-build
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       dockerfile: true
>   - name: Java
>     pipelineRef:
>       params:
>       - name: name
>         value: java-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: java
>   - name: NodeJS
>     pipelineRef:
>       params:
>       - name: name
>         value: nodejs-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: nodejs,node
> ---
./commit-6f21a7d2/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
818a819,876
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: BuildPipelineSelector
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: build-pipeline-selector
>   namespace: build-service
> spec:
>   selectors:
>   - name: FBC
>     pipelineRef:
>       params:
>       - name: name
>         value: fbc-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: fbc
>   - name: Docker build
>     pipelineRef:
>       params:
>       - name: name
>         value: docker-build
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       dockerfile: true
>   - name: Java
>     pipelineRef:
>       params:
>       - name: name
>         value: java-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: java
>   - name: NodeJS
>     pipelineRef:
>       params:
>       - name: name
>         value: nodejs-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: nodejs,node
> --- 
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
<h3>2: Staging changes from 6f21a7d2 to a552003d on Fri Jun 7 13:39:59 2024 </h3>  
 
<details> 
<summary>Git Diff (132 lines)</summary>  

``` 
diff --git a/components/build-service/README.md b/components/build-service/README.md
index 00d7f253..3ddf59c5 100644
--- a/components/build-service/README.md
+++ b/components/build-service/README.md
@@ -47,7 +47,7 @@ PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov
 
 Pipeline bundles are generated by [build-definitions](https://github.com/konflux-ci/build-definitions).
 
-By default, the bundle is defined in `components/build-service/build-pipeline-selector.yaml`. To use alternative pipeline bundles rather than the default ones, either update every predefined `.spec.selectors[].pipelineRef.bundle` in this file and provision cluster again, or create a custom `BuildPipelineSelector` CR in your own namespace.
+By default, the bundle is defined in `components/build-service/base/build-pipeline-config/build-pipeline-config.yaml`.
 
 ### Stage Cluster integration prerequisites
 
diff --git a/components/build-service/base/build-pipeline-selectors/OWNERS b/components/build-service/base/build-pipeline-selectors/OWNERS
deleted file mode 100644
index a8984879..00000000
--- a/components/build-service/base/build-pipeline-selectors/OWNERS
+++ /dev/null
@@ -1,36 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-- tisutisu
-- chmeliik
-- dirgim
-- hongweiliu17
-- jsztuka
-- kasemAlem
-- sonam1412
-- MartinBasti
-- Josh-Everett
-- 14rcole
-- dheerajodha
-
-reviewers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-- tisutisu
-- chmeliik
-- dirgim
-- hongweiliu17
-- jsztuka
-- kasemAlem
-- sonam1412
-- MartinBasti
-- Josh-Everett
-- 14rcole
-- dheerajodha
-
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
deleted file mode 100644
index 8bae9912..00000000
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ /dev/null
@@ -1,54 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: BuildPipelineSelector
-metadata:
-  name: build-pipeline-selector
-spec:
-  selectors:
-    - name: FBC
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: fbc-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: fbc
-    - name: Docker build
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: docker-build
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        dockerfile: true
-    - name: Java
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: java-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: java
-    - name: NodeJS
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: nodejs-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: nodejs,node
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 0a4b8765..132be985 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,11 +1,10 @@
 resources:
 - allow-argocd-to-manage.yaml
-- build-pipeline-selectors/build-pipeline-selector.yaml
 - build-pipeline-config/build-pipeline-config.yaml
 - monitoring.yaml
 - rbac
 
-# Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
+# Skip applying the build-service operands while the build-service operator is being installed.
 # See more information about this option, here:
 # https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (60 lines)</summary>  

``` 
./commit-6f21a7d2/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
818a819,876
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: BuildPipelineSelector
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: build-pipeline-selector
>   namespace: build-service
> spec:
>   selectors:
>   - name: FBC
>     pipelineRef:
>       params:
>       - name: name
>         value: fbc-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: fbc
>   - name: Docker build
>     pipelineRef:
>       params:
>       - name: name
>         value: docker-build
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       dockerfile: true
>   - name: Java
>     pipelineRef:
>       params:
>       - name: name
>         value: java-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: java
>   - name: NodeJS
>     pipelineRef:
>       params:
>       - name: name
>         value: nodejs-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: nodejs,node
> --- 
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
<h3>2: Development changes from 6f21a7d2 to a552003d on Fri Jun 7 13:39:59 2024 </h3>  
 
<details> 
<summary>Git Diff (132 lines)</summary>  

``` 
diff --git a/components/build-service/README.md b/components/build-service/README.md
index 00d7f253..3ddf59c5 100644
--- a/components/build-service/README.md
+++ b/components/build-service/README.md
@@ -47,7 +47,7 @@ PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov
 
 Pipeline bundles are generated by [build-definitions](https://github.com/konflux-ci/build-definitions).
 
-By default, the bundle is defined in `components/build-service/build-pipeline-selector.yaml`. To use alternative pipeline bundles rather than the default ones, either update every predefined `.spec.selectors[].pipelineRef.bundle` in this file and provision cluster again, or create a custom `BuildPipelineSelector` CR in your own namespace.
+By default, the bundle is defined in `components/build-service/base/build-pipeline-config/build-pipeline-config.yaml`.
 
 ### Stage Cluster integration prerequisites
 
diff --git a/components/build-service/base/build-pipeline-selectors/OWNERS b/components/build-service/base/build-pipeline-selectors/OWNERS
deleted file mode 100644
index a8984879..00000000
--- a/components/build-service/base/build-pipeline-selectors/OWNERS
+++ /dev/null
@@ -1,36 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-- tisutisu
-- chmeliik
-- dirgim
-- hongweiliu17
-- jsztuka
-- kasemAlem
-- sonam1412
-- MartinBasti
-- Josh-Everett
-- 14rcole
-- dheerajodha
-
-reviewers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-- tisutisu
-- chmeliik
-- dirgim
-- hongweiliu17
-- jsztuka
-- kasemAlem
-- sonam1412
-- MartinBasti
-- Josh-Everett
-- 14rcole
-- dheerajodha
-
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
deleted file mode 100644
index 8bae9912..00000000
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ /dev/null
@@ -1,54 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: BuildPipelineSelector
-metadata:
-  name: build-pipeline-selector
-spec:
-  selectors:
-    - name: FBC
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: fbc-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: fbc
-    - name: Docker build
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: docker-build
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        dockerfile: true
-    - name: Java
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: java-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: java
-    - name: NodeJS
-      pipelineRef:
-        resolver: bundles
-        params:
-        - name: name
-          value: nodejs-builder
-        - name: bundle
-          value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
-        - name: kind
-          value: pipeline
-      when:
-        language: nodejs,node
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 0a4b8765..132be985 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,11 +1,10 @@
 resources:
 - allow-argocd-to-manage.yaml
-- build-pipeline-selectors/build-pipeline-selector.yaml
 - build-pipeline-config/build-pipeline-config.yaml
 - monitoring.yaml
 - rbac
 
-# Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
+# Skip applying the build-service operands while the build-service operator is being installed.
 # See more information about this option, here:
 # https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (60 lines)</summary>  

``` 
./commit-6f21a7d2/development/components/build-service/development/kustomize.out.yaml
804a805,862
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: BuildPipelineSelector
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: build-pipeline-selector
>   namespace: build-service
> spec:
>   selectors:
>   - name: FBC
>     pipelineRef:
>       params:
>       - name: name
>         value: fbc-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: fbc
>   - name: Docker build
>     pipelineRef:
>       params:
>       - name: name
>         value: docker-build
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       dockerfile: true
>   - name: Java
>     pipelineRef:
>       params:
>       - name: name
>         value: java-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-java-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: java
>   - name: NodeJS
>     pipelineRef:
>       params:
>       - name: name
>         value: nodejs-builder
>       - name: bundle
>         value: quay.io/konflux-ci/tekton-catalog/pipeline-nodejs-builder:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9
>       - name: kind
>         value: pipeline
>       resolver: bundles
>     when:
>       language: nodejs,node
> --- 
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
<h3>3: Production changes from c4d0d17e to 6f21a7d2 on Fri Jun 7 13:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 82515491..8262b34b 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 2a05c56a..d6d742fe 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
  
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
<h3>3: Staging changes from c4d0d17e to 6f21a7d2 on Fri Jun 7 13:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 82515491..8262b34b 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 2a05c56a..d6d742fe 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
  
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
<h3>3: Development changes from c4d0d17e to 6f21a7d2 on Fri Jun 7 13:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 82515491..8262b34b 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 2a05c56a..d6d742fe 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (38 lines)</summary>  

``` 
./commit-c4d0d17e/development/components/image-controller/development/kustomize.out.yaml
118a119,123
>                   pull-remote-secret:
>                     description: PullRemoteSecretName is present only if ImageRepository
>                       has labels that connect it to Application and Component. Holds
>                       the name of the RemoteSecret object that manages pull Secret.
>                     type: string
132a138,142
>                   push-remote-secret:
>                     description: PushRemoteSecretName holds name of RemoteSecret object
>                       that manages push Secret and its linking to appstudio-pipeline
>                       Service Account.
>                     type: string
321,330d330
<   - ""
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
365a366,374
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - remotesecrets
>   verbs:
>   - create
>   - get
>   - list
>   - watch
781c790
<         image: quay.io/konflux-ci/image-controller:4375ea0fae7ba37b7ebc471a166bfc1790cc0745
---
>         image: quay.io/konflux-ci/image-controller:3296e4996f6ffce1df7273d3c29adb6df20348c7 
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
<h3>4: Production changes from 0efcca0f to c4d0d17e on Fri Jun 7 09:20:51 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index bcb17f20..c22613c2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: e57f18badba3840743d942eac3577115e87bda97
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04e3fe5b..5066b48c 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: e57f18badba3840743d942eac3577115e87bda97
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 0efcca0f to c4d0d17e on Fri Jun 7 09:20:51 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index bcb17f20..c22613c2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: e57f18badba3840743d942eac3577115e87bda97
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04e3fe5b..5066b48c 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: e57f18badba3840743d942eac3577115e87bda97
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-0efcca0f/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>         image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>             image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97 
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
<h3>4: Development changes from 0efcca0f to c4d0d17e on Fri Jun 7 09:20:51 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index bcb17f20..c22613c2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: e57f18badba3840743d942eac3577115e87bda97
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04e3fe5b..5066b48c 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/default?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: e57f18badba3840743d942eac3577115e87bda97
+  newTag: 80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-0efcca0f/development/components/integration/development/kustomize.out.yaml
1454c1454
<         image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>         image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:80bf5eb5703d2d62e9b945db3c470c3fe506e5eb
---
>             image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97 
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
