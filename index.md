# kustomize changes tracked by commits 
### This file generated at Tue Mar 19 08:05:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 855d61a0 to fecb354d on Tue Mar 19 07:10:37 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b0f16889..278ee536 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=d11f693619e15d070fe3b343d256b7c988a3e125
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=d11f693619e15d070fe3b343d256b7c988a3e125
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=b87a8318314a02f323405fad17362516d57febe5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=b87a8318314a02f323405fad17362516d57febe5
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
+  newTag: b87a8318314a02f323405fad17362516d57febe5
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
+  newTag: b87a8318314a02f323405fad17362516d57febe5
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2383 lines)</summary>  

``` 
./commit-855d61a0/production/components/application-api/kustomize.out.yaml
0a1,2372
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: applications.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Application
>     listKind: ApplicationList
>     plural: applications
>     shortNames:
>     - hasapp
>     - ha
>     - app
>     singular: application
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Application is the Schema for the applications API.  For a detailed
>           description with examples, refer to <a href="https://github.com/redhat-appstudio/book/blob/main/book/HAS/hybrid-application-service-api.md">
>           Hybrid Application Service Kube API </a>
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
>             description: ApplicationSpec defines the desired state of Application
>             properties:
>               appModelRepository:
>                 description: AppModelRepository refers to the git repository that
>                   will store the application model (a devfile) Can be the same as
>                   GitOps repository. A repository will be generated if this field
>                   is left blank. Optional.
>                 properties:
>                   branch:
>                     description: 'Branch corresponds to the branch in the repository
>                       that should be used Example: devel. Optional.'
>                     type: string
>                   context:
>                     description: 'Context corresponds to the context within the repository
>                       that should be used Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   url:
>                     description: 'URL refers to the repository URL that should be
>                       used. If not specified, a GitOps repository under the $GITHUB_ORG
>                       (defaults to redhat-appstudio-appdata) organization on GitHub
>                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
>                       Required.'
>                     type: string
>                 required:
>                 - url
>                 type: object
>               description:
>                 description: Description refers to a brief description of the application.
>                   Optional.
>                 type: string
>               displayName:
>                 description: DisplayName refers to the name that an application will
>                   be deployed with in App Studio. Required.
>                 type: string
>               gitOpsRepository:
>                 description: GitOpsRepository refers to the git repository that will
>                   store the gitops resources. Can be the same as App Model Repository.
>                   A repository will be generated if this field is left blank. Optional.
>                 properties:
>                   branch:
>                     description: 'Branch corresponds to the branch in the repository
>                       that should be used Example: devel. Optional.'
>                     type: string
>                   context:
>                     description: 'Context corresponds to the context within the repository
>                       that should be used Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   url:
>                     description: 'URL refers to the repository URL that should be
>                       used. If not specified, a GitOps repository under the $GITHUB_ORG
>                       (defaults to redhat-appstudio-appdata) organization on GitHub
>                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
>                       Required.'
>                     type: string
>                 required:
>                 - url
>                 type: object
>             required:
>             - displayName
>             type: object
>           status:
>             description: ApplicationStatus defines the observed state of Application
>             properties:
>               conditions:
>                 description: Conditions is an array of the Application's status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               devfile:
>                 description: Devfile corresponds to the devfile representation of
>                   the Application resource
>                 type: string
>             required:
>             - conditions
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: componentdetectionqueries.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ComponentDetectionQuery
>     listKind: ComponentDetectionQueryList
>     plural: componentdetectionqueries
>     shortNames:
>     - hcdq
>     - compdetection
>     singular: componentdetectionquery
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.conditions[-1].type
>       name: Type
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ComponentDetectionQuery is the Schema for the componentdetectionqueries
>           API.    For a detailed description with examples, refer to <a href="https://github.com/redhat-appstudio/book/blob/main/book/HAS/hybrid-application-service-api.md">
>           Hybrid Application Service Kube API </a>
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
>             description: ComponentDetectionQuerySpec defines the desired state of
>               ComponentDetectionQuery
>             properties:
>               generateComponentName:
>                 description: It defines if should generate random characters at the
>                   end of the component name instead of a predicted default value The
>                   default value is false. If the value is set to true, component name
>                   will always have random characters appended Optional.
>                 type: boolean
>               git:
>                 description: Git Source for a Component. Required.
>                 properties:
>                   context:
>                     description: 'A relative path inside the git repo containing the
>                       component Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   devfileUrl:
>                     description: 'If specified, the devfile at the URI will be used
>                       for the component. Can be a local path inside the repository,
>                       or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                       Optional.'
>                     type: string
>                   dockerfileUrl:
>                     description: If specified, the dockerfile at the URI will be used
>                       for the component. Can be a local path inside the repository,
>                       or an external URL. Optional.
>                     type: string
>                   revision:
>                     description: 'Specify a branch/tag/commit id. If not specified,
>                       default is `main`/`master`. Example: devel. Optional.'
>                     type: string
>                   url:
>                     description: An HTTPS URL representing the git repository to create
>                       the component from.
>                     type: string
>                 required:
>                 - url
>                 type: object
>               secret:
>                 description: Secret describes the name of an optional Kubernetes secret
>                   containing a Personal Access Token to access the git repostiory.
>                   Optional.
>                 type: string
>             required:
>             - git
>             type: object
>           status:
>             description: ComponentDetectionQueryStatus defines the observed state
>               of ComponentDetectionQuery
>             properties:
>               componentDetected:
>                 additionalProperties:
>                   description: ComponentDetectionDescription holds all the information
>                     about the component being detected
>                   properties:
>                     componentStub:
>                       description: ComponentStub is a stub of the component detected
>                         with all the info gathered from the devfile or service detection
>                       properties:
>                         application:
>                           description: Application is the name of the application
>                             resource that the component belongs to. Required.
>                           pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                           type: string
>                         build-nudges-ref:
>                           description: The list of components to be nudged by this
>                             components build upon a successful result. Optional.
>                           items:
>                             type: string
>                           type: array
>                         componentName:
>                           description: ComponentName is name of the component to be
>                             added to the Application. The name must adhere to DNS-1123
>                             validation. Required.
>                           maxLength: 63
>                           pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                           type: string
>                         containerImage:
>                           description: 'The container image to build or create the
>                             component from Example: quay.io/someorg/somerepository:latest.
>                             Optional.'
>                           type: string
>                         env:
>                           description: An array of environment variables to add to
>                             the component (ValueFrom not currently supported) Optional
>                           items:
>                             description: EnvVar represents an environment variable
>                               present in a Container.
>                             properties:
>                               name:
>                                 description: Name of the environment variable. Must
>                                   be a C_IDENTIFIER.
>                                 type: string
>                               value:
>                                 description: 'Variable references $(VAR_NAME) are
>                                   expanded using the previously defined environment
>                                   variables in the container and any service environment
>                                   variables. If a variable cannot be resolved, the
>                                   reference in the input string will be unchanged.
>                                   Double $$ are reduced to a single $, which allows
>                                   for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)"
>                                   will produce the string literal "$(VAR_NAME)". Escaped
>                                   references will never be expanded, regardless of
>                                   whether the variable exists or not. Defaults to
>                                   "".'
>                                 type: string
>                               valueFrom:
>                                 description: Source for the environment variable's
>                                   value. Cannot be used if value is not empty.
>                                 properties:
>                                   configMapKeyRef:
>                                     description: Selects a key of a ConfigMap.
>                                     properties:
>                                       key:
>                                         description: The key to select.
>                                         type: string
>                                       name:
>                                         description: 'Name of the referent. More info:
>                                           https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                           TODO: Add other useful fields. apiVersion,
>                                           kind, uid?'
>                                         type: string
>                                       optional:
>                                         description: Specify whether the ConfigMap
>                                           or its key must be defined
>                                         type: boolean
>                                     required:
>                                     - key
>                                     type: object
>                                     x-kubernetes-map-type: atomic
>                                   fieldRef:
>                                     description: 'Selects a field of the pod: supports
>                                       metadata.name, metadata.namespace, `metadata.labels[''<KEY>'']`,
>                                       `metadata.annotations[''<KEY>'']`, spec.nodeName,
>                                       spec.serviceAccountName, status.hostIP, status.podIP,
>                                       status.podIPs.'
>                                     properties:
>                                       apiVersion:
>                                         description: Version of the schema the FieldPath
>                                           is written in terms of, defaults to "v1".
>                                         type: string
>                                       fieldPath:
>                                         description: Path of the field to select in
>                                           the specified API version.
>                                         type: string
>                                     required:
>                                     - fieldPath
>                                     type: object
>                                     x-kubernetes-map-type: atomic
>                                   resourceFieldRef:
>                                     description: 'Selects a resource of the container:
>                                       only resources limits and requests (limits.cpu,
>                                       limits.memory, limits.ephemeral-storage, requests.cpu,
>                                       requests.memory and requests.ephemeral-storage)
>                                       are currently supported.'
>                                     properties:
>                                       containerName:
>                                         description: 'Container name: required for
>                                           volumes, optional for env vars'
>                                         type: string
>                                       divisor:
>                                         anyOf:
>                                         - type: integer
>                                         - type: string
>                                         description: Specifies the output format of
>                                           the exposed resources, defaults to "1"
>                                         pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                         x-kubernetes-int-or-string: true
>                                       resource:
>                                         description: 'Required: resource to select'
>                                         type: string
>                                     required:
>                                     - resource
>                                     type: object
>                                     x-kubernetes-map-type: atomic
>                                   secretKeyRef:
>                                     description: Selects a key of a secret in the
>                                       pod's namespace
>                                     properties:
>                                       key:
>                                         description: The key of the secret to select
>                                           from.  Must be a valid secret key.
>                                         type: string
>                                       name:
>                                         description: 'Name of the referent. More info:
>                                           https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                           TODO: Add other useful fields. apiVersion,
>                                           kind, uid?'
>                                         type: string
>                                       optional:
>                                         description: Specify whether the Secret or
>                                           its key must be defined
>                                         type: boolean
>                                     required:
>                                     - key
>                                     type: object
>                                     x-kubernetes-map-type: atomic
>                                 type: object
>                             required:
>                             - name
>                             type: object
>                           type: array
>                         replicas:
>                           description: The number of replicas to deploy the component
>                             with. Optional.
>                           type: integer
>                         resources:
>                           description: Compute Resources required by this component.
>                             Optional.
>                           properties:
>                             limits:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Limits describes the maximum amount of
>                                 compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                             requests:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Requests describes the minimum amount
>                                 of compute resources required. If Requests is omitted
>                                 for a container, it defaults to Limits if that is
>                                 explicitly specified, otherwise to an implementation-defined
>                                 value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                           type: object
>                         route:
>                           description: The route to expose the component with. Optional.
>                           type: string
>                         secret:
>                           description: 'Secret describes the name of a Kubernetes
>                             secret containing either: 1. A Personal Access Token to
>                             access the Component''s git repostiory (if using a Git-source
>                             component) or 2. An Image Pull Secret to access the Component''s
>                             container image (if using an Image-source component).
>                             Optional.'
>                           type: string
>                         skipGitOpsResourceGeneration:
>                           description: Whether or not to bypass the generation of
>                             GitOps resources for the Component. Defaults to false.
>                             Optional.
>                           type: boolean
>                         source:
>                           description: Source describes the Component source. Optional.
>                           properties:
>                             git:
>                               description: Git Source for a Component. Optional.
>                               properties:
>                                 context:
>                                   description: 'A relative path inside the git repo
>                                     containing the component Example: folderA/folderB/gitops.
>                                     Optional.'
>                                   type: string
>                                 devfileUrl:
>                                   description: 'If specified, the devfile at the URI
>                                     will be used for the component. Can be a local
>                                     path inside the repository, or an external URL.
>                                     Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                                     Optional.'
>                                   type: string
>                                 dockerfileUrl:
>                                   description: If specified, the dockerfile at the
>                                     URI will be used for the component. Can be a local
>                                     path inside the repository, or an external URL.
>                                     Optional.
>                                   type: string
>                                 revision:
>                                   description: 'Specify a branch/tag/commit id. If
>                                     not specified, default is `main`/`master`. Example:
>                                     devel. Optional.'
>                                   type: string
>                                 url:
>                                   description: An HTTPS URL representing the git repository
>                                     to create the component from.
>                                   type: string
>                               required:
>                               - url
>                               type: object
>                           type: object
>                         targetPort:
>                           description: The port to expose the component over. Optional.
>                           type: integer
>                       required:
>                       - application
>                       - componentName
>                       type: object
>                     devfileFound:
>                       description: DevfileFound tells if a devfile is found in the
>                         component
>                       type: boolean
>                     language:
>                       description: 'Language specifies the language of the component
>                         detected Example: JavaScript'
>                       type: string
>                     projectType:
>                       description: ProjectType specifies the type of project for the
>                         component detected Example Node.JS
>                       type: string
>                   type: object
>                 description: ComponentDetected gives a list of components and the
>                   info from detection
>                 type: object
>               conditions:
>                 description: Conditions is an array of the ComponentDetectionQuery's
>                   status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: components.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Component
>     listKind: ComponentList
>     plural: components
>     shortNames:
>     - hascmp
>     - hc
>     - comp
>     singular: component
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.conditions[-1].type
>       name: Type
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Component is the Schema for the components API.    For a detailed
>           description with examples, refer to <a href="https://github.com/redhat-appstudio/book/blob/main/book/HAS/hybrid-application-service-api.md">
>           Hybrid Application Service Kube API </a>
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
>             description: ComponentSpec defines the desired state of Component
>             properties:
>               application:
>                 description: Application is the name of the application resource that
>                   the component belongs to. Required.
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               build-nudges-ref:
>                 description: The list of components to be nudged by this components
>                   build upon a successful result. Optional.
>                 items:
>                   type: string
>                 type: array
>               componentName:
>                 description: ComponentName is name of the component to be added to
>                   the Application. The name must adhere to DNS-1123 validation. Required.
>                 maxLength: 63
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               containerImage:
>                 description: 'The container image to build or create the component
>                   from Example: quay.io/someorg/somerepository:latest. Optional.'
>                 type: string
>               env:
>                 description: An array of environment variables to add to the component
>                   (ValueFrom not currently supported) Optional
>                 items:
>                   description: EnvVar represents an environment variable present in
>                     a Container.
>                   properties:
>                     name:
>                       description: Name of the environment variable. Must be a C_IDENTIFIER.
>                       type: string
>                     value:
>                       description: 'Variable references $(VAR_NAME) are expanded using
>                         the previously defined environment variables in the container
>                         and any service environment variables. If a variable cannot
>                         be resolved, the reference in the input string will be unchanged.
>                         Double $$ are reduced to a single $, which allows for escaping
>                         the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the
>                         string literal "$(VAR_NAME)". Escaped references will never
>                         be expanded, regardless of whether the variable exists or
>                         not. Defaults to "".'
>                       type: string
>                     valueFrom:
>                       description: Source for the environment variable's value. Cannot
>                         be used if value is not empty.
>                       properties:
>                         configMapKeyRef:
>                           description: Selects a key of a ConfigMap.
>                           properties:
>                             key:
>                               description: The key to select.
>                               type: string
>                             name:
>                               description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                 TODO: Add other useful fields. apiVersion, kind, uid?'
>                               type: string
>                             optional:
>                               description: Specify whether the ConfigMap or its key
>                                 must be defined
>                               type: boolean
>                           required:
>                           - key
>                           type: object
>                           x-kubernetes-map-type: atomic
>                         fieldRef:
>                           description: 'Selects a field of the pod: supports metadata.name,
>                             metadata.namespace, `metadata.labels[''<KEY>'']`, `metadata.annotations[''<KEY>'']`,
>                             spec.nodeName, spec.serviceAccountName, status.hostIP,
>                             status.podIP, status.podIPs.'
>                           properties:
>                             apiVersion:
>                               description: Version of the schema the FieldPath is
>                                 written in terms of, defaults to "v1".
>                               type: string
>                             fieldPath:
>                               description: Path of the field to select in the specified
>                                 API version.
>                               type: string
>                           required:
>                           - fieldPath
>                           type: object
>                           x-kubernetes-map-type: atomic
>                         resourceFieldRef:
>                           description: 'Selects a resource of the container: only
>                             resources limits and requests (limits.cpu, limits.memory,
>                             limits.ephemeral-storage, requests.cpu, requests.memory
>                             and requests.ephemeral-storage) are currently supported.'
>                           properties:
>                             containerName:
>                               description: 'Container name: required for volumes,
>                                 optional for env vars'
>                               type: string
>                             divisor:
>                               anyOf:
>                               - type: integer
>                               - type: string
>                               description: Specifies the output format of the exposed
>                                 resources, defaults to "1"
>                               pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                               x-kubernetes-int-or-string: true
>                             resource:
>                               description: 'Required: resource to select'
>                               type: string
>                           required:
>                           - resource
>                           type: object
>                           x-kubernetes-map-type: atomic
>                         secretKeyRef:
>                           description: Selects a key of a secret in the pod's namespace
>                           properties:
>                             key:
>                               description: The key of the secret to select from.  Must
>                                 be a valid secret key.
>                               type: string
>                             name:
>                               description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                 TODO: Add other useful fields. apiVersion, kind, uid?'
>                               type: string
>                             optional:
>                               description: Specify whether the Secret or its key must
>                                 be defined
>                               type: boolean
>                           required:
>                           - key
>                           type: object
>                           x-kubernetes-map-type: atomic
>                       type: object
>                   required:
>                   - name
>                   type: object
>                 type: array
>               replicas:
>                 description: The number of replicas to deploy the component with.
>                   Optional.
>                 type: integer
>               resources:
>                 description: Compute Resources required by this component. Optional.
>                 properties:
>                   limits:
>                     additionalProperties:
>                       anyOf:
>                       - type: integer
>                       - type: string
>                       pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                       x-kubernetes-int-or-string: true
>                     description: 'Limits describes the maximum amount of compute resources
>                       allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                     type: object
>                   requests:
>                     additionalProperties:
>                       anyOf:
>                       - type: integer
>                       - type: string
>                       pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                       x-kubernetes-int-or-string: true
>                     description: 'Requests describes the minimum amount of compute
>                       resources required. If Requests is omitted for a container,
>                       it defaults to Limits if that is explicitly specified, otherwise
>                       to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                     type: object
>                 type: object
>               route:
>                 description: The route to expose the component with. Optional.
>                 type: string
>               secret:
>                 description: 'Secret describes the name of a Kubernetes secret containing
>                   either: 1. A Personal Access Token to access the Component''s git
>                   repostiory (if using a Git-source component) or 2. An Image Pull
>                   Secret to access the Component''s container image (if using an Image-source
>                   component). Optional.'
>                 type: string
>               skipGitOpsResourceGeneration:
>                 description: Whether or not to bypass the generation of GitOps resources
>                   for the Component. Defaults to false. Optional.
>                 type: boolean
>               source:
>                 description: Source describes the Component source. Optional.
>                 properties:
>                   git:
>                     description: Git Source for a Component. Optional.
>                     properties:
>                       context:
>                         description: 'A relative path inside the git repo containing
>                           the component Example: folderA/folderB/gitops. Optional.'
>                         type: string
>                       devfileUrl:
>                         description: 'If specified, the devfile at the URI will be
>                           used for the component. Can be a local path inside the repository,
>                           or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                           Optional.'
>                         type: string
>                       dockerfileUrl:
>                         description: If specified, the dockerfile at the URI will
>                           be used for the component. Can be a local path inside the
>                           repository, or an external URL. Optional.
>                         type: string
>                       revision:
>                         description: 'Specify a branch/tag/commit id. If not specified,
>                           default is `main`/`master`. Example: devel. Optional.'
>                         type: string
>                       url:
>                         description: An HTTPS URL representing the git repository
>                           to create the component from.
>                         type: string
>                     required:
>                     - url
>                     type: object
>                 type: object
>               targetPort:
>                 description: The port to expose the component over. Optional.
>                 type: integer
>             required:
>             - application
>             - componentName
>             type: object
>           status:
>             description: ComponentStatus defines the observed state of Component
>             properties:
>               build-nudged-by:
>                 description: The list of names of Components whose builds nudge this
>                   resource (their spec.build-nudges-ref[] references this component)
>                 items:
>                   type: string
>                 type: array
>               conditions:
>                 description: Conditions is an array of the Component's status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               containerImage:
>                 description: ContainerImage stores the associated built container
>                   image for the component
>                 type: string
>               devfile:
>                 description: The devfile model for the Component CR
>                 type: string
>               gitops:
>                 description: GitOps specific status for the Component CR
>                 properties:
>                   branch:
>                     description: Branch is the git branch used for the gitops repository
>                     type: string
>                   commitID:
>                     description: CommitID is the most recent commit ID in the GitOps
>                       repository for this component
>                     type: string
>                   context:
>                     description: Context is the path within the gitops repository
>                       used for the gitops resources
>                     type: string
>                   repositoryURL:
>                     description: RepositoryURL is the gitops repository URL for the
>                       component
>                     type: string
>                   resourceGenerationSkipped:
>                     description: ResourceGenerationSkipped is whether or not GitOps
>                       resource generation was skipped for the component
>                     type: boolean
>                 type: object
>               lastBuiltCommit:
>                 description: 'The last built commit id (SHA-1 checksum) from the latest
>                   component build. Example: 41fbdb124775323f58fd5ce93c70bb7d79c20650.'
>                 type: string
>               webhook:
>                 description: Webhook URL generated by Builds
>                 type: string
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: deploymenttargetclaims.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: DeploymentTargetClaim
>     listKind: DeploymentTargetClaimList
>     plural: deploymenttargetclaims
>     singular: deploymenttargetclaim
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: DeploymentTargetClaim is the Schema for the deploymenttargetclaims
>           API. It represents a request for a DeploymentTarget.
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
>             description: DeploymentTargetClaimSpec defines the desired state of DeploymentTargetClaim
>             properties:
>               deploymentTargetClassName:
>                 type: string
>               targetName:
>                 type: string
>             required:
>             - deploymentTargetClassName
>             type: object
>           status:
>             description: DeploymentTargetClaimStatus defines the observed state of
>               DeploymentTargetClaim
>             properties:
>               phase:
>                 type: string
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: deploymenttargetclasses.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: DeploymentTargetClass
>     listKind: DeploymentTargetClassList
>     plural: deploymenttargetclasses
>     singular: deploymenttargetclass
>   scope: Cluster
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: DeploymentTargetClass is the Schema for the deploymenttargetclasses
>           API. Defines DeploymentTarget properties that should be abstracted from
>           the controller/user that creates a DTC and wants a DT to be provisioned
>           automatically for it.
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
>             description: DeploymentTargetClassSpec defines the desired state of DeploymentTargetClass
>             properties:
>               parameters:
>                 description: Parameters are used to forward additional information
>                   to the provisioner.
>                 type: object
>               provisioner:
>                 type: string
>               reclaimPolicy:
>                 description: The reclaimPolicy field will tell the provisioner what
>                   to do with the DT once its corresponding DTC is deleted, the values
>                   can be Retain or Delete.
>                 type: string
>             required:
>             - provisioner
>             - reclaimPolicy
>             type: object
>           status:
>             description: DeploymentTargetClassStatus defines the observed state of
>               DeploymentTargetClass
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: deploymenttargets.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: DeploymentTarget
>     listKind: DeploymentTargetList
>     plural: deploymenttargets
>     singular: deploymenttarget
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: DeploymentTarget is the Schema for the deploymenttargets API.
>           A deployment target, usually a K8s api endpoint. The credentials for connecting
>           to the target will be stored in a secret which will be referenced in the
>           clusterCredentialsSecret field
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
>             description: DeploymentTargetSpec defines the desired state of DeploymentTarget
>             properties:
>               claimRef:
>                 type: string
>               deploymentTargetClassName:
>                 type: string
>               kubernetesCredentials:
>                 description: DeploymentTargetKubernetesClusterCredentials defines
>                   the K8s cluster credentials for the DeploymentTarget.
>                 properties:
>                   allowInsecureSkipTLSVerify:
>                     description: Indicates that a Service should not check the TLS
>                       certificate when connecting to this target.
>                     type: boolean
>                   apiURL:
>                     description: APIURL is a reference to a cluster API url.
>                     type: string
>                   clusterCredentialsSecret:
>                     description: ClusterCredentialsSecret is a reference to the name
>                       of k8s Secret that contains a kubeconfig.
>                     type: string
>                   defaultNamespace:
>                     type: string
>                 required:
>                 - allowInsecureSkipTLSVerify
>                 - apiURL
>                 - clusterCredentialsSecret
>                 - defaultNamespace
>                 type: object
>             required:
>             - deploymentTargetClassName
>             - kubernetesCredentials
>             type: object
>           status:
>             description: DeploymentTargetStatus defines the observed state of DeploymentTarget
>             properties:
>               phase:
>                 type: string
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: environments.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Environment
>     listKind: EnvironmentList
>     plural: environments
>     shortNames:
>     - env
>     singular: environment
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Environment is the Schema for the environments API
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
>             description: EnvironmentSpec defines the desired state of Environment
>             properties:
>               configuration:
>                 description: Configuration contains environment-specific details for
>                   Applications/Components that are deployed to the Environment.
>                 properties:
>                   env:
>                     description: Env is an array of standard environment vairables
>                     items:
>                       description: EnvVarPair describes environment variables to use
>                         for the component
>                       properties:
>                         name:
>                           description: Name is the environment variable name
>                           type: string
>                         value:
>                           description: Value is the environment variable value
>                           type: string
>                       required:
>                       - name
>                       - value
>                       type: object
>                     type: array
>                   target:
>                     description: Target is used to reference a DeploymentTargetClaim
>                       for a target Environment. The Environment controller uses the
>                       referenced DeploymentTargetClaim to access its bounded DeploymentTarget
>                       with cluster credential secret.
>                     properties:
>                       deploymentTargetClaim:
>                         description: DeploymentTargetClaimConfig specifies the DeploymentTargetClaim
>                           details for a given Environment.
>                         properties:
>                           claimName:
>                             type: string
>                         required:
>                         - claimName
>                         type: object
>                     required:
>                     - deploymentTargetClaim
>                     type: object
>                 type: object
>               deploymentStrategy:
>                 description: DeploymentStrategy is the promotion strategy for the
>                   Environment See Environment API doc for details.
>                 type: string
>               displayName:
>                 description: DisplayName is the user-visible, user-definable name
>                   for the environment (but not used for functional requirements)
>                 type: string
>               parentEnvironment:
>                 description: 'ParentEnvironment references another Environment defined
>                   in the namespace: when automated promotion is enabled, promotions
>                   to the parent environment will cause this environment to be promoted
>                   to. See Environment API doc for details.'
>                 type: string
>               tags:
>                 description: Tags are a user-visisble, user-definable set of tags
>                   that can be applied to the environment
>                 items:
>                   type: string
>                 type: array
>               type:
>                 description: 'DEPRECATED: Type is whether the Environment is a POC
>                   or non-POC environment - This field is deprecated, and should not
>                   be used.'
>                 type: string
>               unstableConfigurationFields:
>                 description: 'UnstableConfigurationFields are experimental/prototype:
>                   the API has not been finalized here, and is subject to breaking
>                   changes. See comment on UnstableEnvironmentConfiguration for details.'
>                 properties:
>                   clusterType:
>                     description: ClusterType indicates whether the target environment
>                       is Kubernetes or OpenShift
>                     type: string
>                   kubernetesCredentials:
>                     description: KubernetesClusterCredentials contains cluster credentials
>                       for a target Kubernetes/OpenShift cluster.
>                     properties:
>                       allowInsecureSkipTLSVerify:
>                         description: Indicates that ArgoCD/GitOps Service should not
>                           check the TLS certificate.
>                         type: boolean
>                       apiURL:
>                         description: APIURL is a reference to a cluster API url defined
>                           within the kube config file of the cluster credentials secret.
>                         type: string
>                       clusterCredentialsSecret:
>                         description: "ClusterCredentialsSecret is a reference to the
>                           name of k8s Secret, defined within the same namespace as
>                           the Environment resource, that contains a kubeconfig. The
>                           Secret must be of type 'managed-gitops.redhat.com/managed-environment'
>                           \n See this temporary URL for details: https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m6-demo#gitopsdeploymentmanagedenvironment-resource"
>                         type: string
>                       clusterResources:
>                         description: "ClusterResources is used in conjuction with
>                           the Namespace field. If the Namespaces field is non-empty,
>                           this field will be used to determine whether Argo CD should
>                           attempt to manage cluster-scoped resources. - If Namespaces
>                           field is empty, this field is not used. - If you are familiar
>                           with Argo CD: this field is equivalent to the field of the
>                           same name in the Argo CD Cluster Secret. \n Optional, default
>                           to false."
>                         type: boolean
>                       ingressDomain:
>                         description: IngressDomain is the cluster's ingress domain.
>                           For example, in minikube it would be $(minikube ip).nip.io
>                           and in OCP it would look like apps.xyz.rhcloud.com. If clusterType
>                           == "Kubernetes", ingressDomain is mandatory and is enforced
>                           by the webhook validation
>                         type: string
>                       namespaces:
>                         description: "Namespaces allows one to indicate which Namespaces
>                           the Secret's ServiceAccount has access to. \n Optional,
>                           defaults to empty. If empty, it is assumed that the ServiceAccount
>                           has access to all Namespaces. \n The ServiceAccount that
>                           GitOps Service/Argo CD uses to deploy may not have access
>                           to all of the Namespaces on a cluster. If not specified,
>                           it is assumed that the Argo CD ServiceAccount has read/write
>                           at cluster-scope. - If you are familiar with Argo CD: this
>                           field is equivalent to the field of the same name in the
>                           Argo CD Cluster Secret."
>                         items:
>                           type: string
>                         type: array
>                       targetNamespace:
>                         description: TargetNamespace is the default destination target
>                           on the cluster for deployments. This Namespace will be used
>                           for any GitOps repository K8s resources where the `.metadata.Namespace`
>                           field is not specified.
>                         type: string
>                     required:
>                     - allowInsecureSkipTLSVerify
>                     - apiURL
>                     - clusterCredentialsSecret
>                     - targetNamespace
>                     type: object
>                 type: object
>             required:
>             - deploymentStrategy
>             - displayName
>             type: object
>           status:
>             description: EnvironmentStatus defines the observed state of Environment
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: promotionruns.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: PromotionRun
>     listKind: PromotionRunList
>     plural: promotionruns
>     shortNames:
>     - apr
>     - promotion
>     singular: promotionrun
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: PromotionRun is the Schema for the promotionruns API
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
>             description: PromotionRunSpec defines the desired state of PromotionRun
>             properties:
>               application:
>                 description: Application is the name of an Application resource defined
>                   within the namespaced, and which is the target of the promotion
>                 type: string
>               automatedPromotion:
>                 description: 'AutomatedPromotion is for fields specific to automated
>                   promotion Only one field should be defined: either ''manualPromotion''
>                   or ''automatedPromotion'', but not both.'
>                 properties:
>                   initialEnvironment:
>                     description: 'InitialEnvironment: start iterating through the
>                       digraph, beginning with the value specified in ''initialEnvironment'''
>                     type: string
>                 required:
>                 - initialEnvironment
>                 type: object
>               manualPromotion:
>                 description: 'ManualPromotion is for fields specific to manual promotion.
>                   Only one field should be defined: either ''manualPromotion'' or
>                   ''automatedPromotion'', but not both.'
>                 properties:
>                   targetEnvironment:
>                     description: TargetEnvironment is the environment to promote to
>                     type: string
>                 required:
>                 - targetEnvironment
>                 type: object
>               snapshot:
>                 description: Snapshot refers to the name of a Snapshot resource defined
>                   within the namespace, used to promote container images between Environments.
>                 type: string
>             required:
>             - application
>             - snapshot
>             type: object
>           status:
>             description: PromotionRunStatus defines the observed state of PromotionRun
>             properties:
>               activeBindings:
>                 description: 'ActiveBindings is the list of active bindings currently
>                   being promoted to: - For an automated promotion, there can be multiple
>                   active bindings at a time (one for each env at a particular tree
>                   depth) - For a manual promotion, there will be only one.'
>                 items:
>                   type: string
>                 type: array
>               completionResult:
>                 description: CompletionResult indicates success/failure once the promotion
>                   has completed all work. CompletionResult will only have a value
>                   if State field is 'Complete'.
>                 type: string
>               conditions:
>                 items:
>                   description: PromotionRunCondition contains details about an PromotionRun
>                     condition, which is usually an error or warning
>                   properties:
>                     lastProbeTime:
>                       description: LastProbeTime is the last time the condition was
>                         observed.
>                       format: date-time
>                       type: string
>                     lastTransitionTime:
>                       description: LastTransitionTime is the last time the condition
>                         transitioned from one status to another.
>                       format: date-time
>                       type: string
>                     message:
>                       description: Message contains human-readable message indicating
>                         details about the last condition.
>                       type: string
>                     reason:
>                       description: Reason is a unique, one-word, CamelCase reason
>                         for the condition's last transition.
>                       type: string
>                     status:
>                       description: Status is the status of the condition.
>                       type: string
>                     type:
>                       description: Type is a PromotionRun condition type
>                       type: string
>                   required:
>                   - status
>                   - type
>                   type: object
>                 type: array
>               environmentStatus:
>                 description: EnvironmentStatus represents the set of steps taken during
>                   the  current promotion
>                 items:
>                   description: 'PromotionRunEnvironmentStatus represents the set of
>                     steps taken during the  current promotion: - manual promotions
>                     will only have a single step. - automated promotions may have
>                     one or more steps, depending on how many environments have been
>                     promoted to.'
>                   properties:
>                     displayStatus:
>                       description: DisplayStatus is human-readible description of
>                         the current state/status.
>                       type: string
>                     environmentName:
>                       description: EnvironmentName is the name of the environment
>                         that was promoted to in this step
>                       type: string
>                     status:
>                       description: Status is/was the result of promoting to that environment.
>                       type: string
>                     step:
>                       description: Step is the sequential number of the step in the
>                         array, starting with 1
>                       type: integer
>                   required:
>                   - displayStatus
>                   - environmentName
>                   - status
>                   - step
>                   type: object
>                 type: array
>               promotionStartTime:
>                 description: PromotionStartTime is set to the value when the PromotionRun
>                   Reconciler first started the promotion.
>                 format: date-time
>                 type: string
>               state:
>                 description: State indicates whether or not the overall promotion
>                   (either manual or automated is complete)
>                 type: string
>             required:
>             - state
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: snapshotenvironmentbindings.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: SnapshotEnvironmentBinding
>     listKind: SnapshotEnvironmentBindingList
>     plural: snapshotenvironmentbindings
>     shortNames:
>     - aseb
>     - binding
>     singular: snapshotenvironmentbinding
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: "The `SnapshotEnvironmentBinding` resource specifies the deployment
>           relationship between (a single application, a single environment, and a
>           single snapshot) combination. \n It can be thought of as a 3-tuple that
>           defines what Application should be deployed to what Environment, and which
>           Snapshot should be deployed (Snapshot being the specific component container
>           image versions of that Aplication that should be deployed to that Environment).
>           \n **Note**: There should not exist multiple SnapshotEnvironmentBinding
>           CRs in a Namespace that share the same Application and Environment value.
>           For example: - Good: - SnapshotEnvironmentBinding A: (application=appA,
>           environment=dev, snapshot=my-snapshot) - SnapshotEnvironmentBinding B: (application=appA,
>           environment=staging, snapshot=my-snapshot) \n - Bad: - SnapshotEnvironmentBinding
>           A: (application=*appA*, environment=*staging*, snapshot=my-snapshot) - SnapshotEnvironmentBinding
>           B: (application=*appA*, environment=*staging*, snapshot=second-snapshot)"
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
>             description: See 'SnapshotEnvironmentBinding' resource for details of
>               this resource. SnapshotEnvironmentBindingSpec defines the desired state
>               of SnapshotEnvironmentBinding.
>             properties:
>               application:
>                 description: Application is a reference to the Application resource
>                   (defined in the same namespace) that we are deploying as part of
>                   this SnapshotEnvironmentBinding. Required
>                 type: string
>               components:
>                 description: Component-specific configuration information, used when
>                   generating GitOps repository resources. Required.
>                 items:
>                   description: BindingComponent contains individual component data
>                   properties:
>                     configuration:
>                       description: Configuration describes GitOps repository customizations
>                         that are specific to the the component-application-environment
>                         combination. - Values defined in this struct will overwrite
>                         values from Application/Environment/Component. Optional
>                       properties:
>                         env:
>                           description: Env describes environment variables to use
>                             for the component. Optional.
>                           items:
>                             description: EnvVarPair describes environment variables
>                               to use for the component
>                             properties:
>                               name:
>                                 description: Name is the environment variable name
>                                 type: string
>                               value:
>                                 description: Value is the environment variable value
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                         replicas:
>                           description: Replicas defines the number of replicas to
>                             use for the component Optional
>                           type: integer
>                         resources:
>                           description: Resources defines the Compute Resources required
>                             by the component. Optional.
>                           properties:
>                             limits:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Limits describes the maximum amount of
>                                 compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                             requests:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Requests describes the minimum amount
>                                 of compute resources required. If Requests is omitted
>                                 for a container, it defaults to Limits if that is
>                                 explicitly specified, otherwise to an implementation-defined
>                                 value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                           type: object
>                       type: object
>                     name:
>                       description: Name is the name of the component.
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment is the environment resource (defined in the
>                   namespace) that the binding will deploy to. Required
>                 type: string
>               snapshot:
>                 description: Snapshot is the Snapshot resource (defined in the namespace)
>                   that contains the container image versions for the components of
>                   the Application. Required
>                 type: string
>             required:
>             - application
>             - components
>             - environment
>             - snapshot
>             type: object
>           status:
>             description: SnapshotEnvironmentBindingStatus defines the observed state
>               of SnapshotEnvironmentBinding
>             properties:
>               bindingConditions:
>                 description: BindingConditions will contain user-oriented error messages
>                   from the SnapshotEnvironmentBinding reconciler.
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               componentDeploymentConditions:
>                 description: ComponentDeploymentConditions describes the deployment
>                   status of all of the Components of the Application. This status
>                   is updated by the Gitops Service's SnapshotEnvironmentBinding controller
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               components:
>                 description: Components describes a component's GitOps repository
>                   information. This status is updated by the Application Service controller.
>                 items:
>                   description: BindingComponentStatus contains the status of the components
>                   properties:
>                     generatedRouteName:
>                       description: GeneratedRouteName is the name of the route that
>                         was generated for the Component, if a Route was generated.
>                       type: string
>                     gitopsRepository:
>                       description: GitOpsRepository contains the Git URL, path, branch,
>                         and most recent commit id for the component
>                       properties:
>                         branch:
>                           description: Branch is the branch to use when accessing
>                             the GitOps repository
>                           type: string
>                         commitID:
>                           description: CommitID contains the most recent commit ID
>                             for which the Kubernetes resources of the Component were
>                             modified.
>                           type: string
>                         generatedResources:
>                           description: GeneratedResources contains the list of GitOps
>                             repository resources generated by the application service
>                             controller in the overlays/<environment> dir, for example,
>                             'deployment-patch.yaml'. This is stored to differentiate
>                             between application-service controller generated resources
>                             vs resources added by a user
>                           items:
>                             type: string
>                           type: array
>                         path:
>                           description: 'Path is a pointer to a folder in the GitOps
>                             repo, containing a kustomization.yaml NOTE: Each component-env
>                             combination must have it''s own separate path'
>                           type: string
>                         url:
>                           description: URL is the Git repository URL e.g. The Git
>                             repository that contains the K8s resources to deployment
>                             for the component of the application.
>                           type: string
>                       required:
>                       - branch
>                       - commitID
>                       - generatedResources
>                       - path
>                       - url
>                       type: object
>                     name:
>                       description: Name is the name of the component.
>                       type: string
>                   required:
>                   - gitopsRepository
>                   - name
>                   type: object
>                 type: array
>               gitopsDeployments:
>                 description: GitOpsDeployments describes the set of GitOpsDeployment
>                   resources that are owned by the SnapshotEnvironmentBinding, and
>                   are deploying the Components of the Application to the target Environment.
>                   To determine the health/sync status of a binding, you can look at
>                   the GitOpsDeployments decribed here.
>                 items:
>                   description: "BindingStatusGitOpsDeployment describes an individual
>                     reference to a GitOpsDeployment resources that is used to deploy
>                     this binding. \n To determine the health/sync status of a binding,
>                     you can look at the GitOpsDeployments decribed here."
>                   properties:
>                     commitID:
>                       description: GitOpsDeploymentCommitID is the commit ID of the
>                         GitOpsDeployment
>                       type: string
>                     componentName:
>                       description: ComponentName is the name of the component in the
>                         (component, gitopsdeployment) pair
>                       type: string
>                     gitopsDeployment:
>                       description: GitOpsDeployment is a reference to the name of
>                         a GitOpsDeployment resource which is used to deploy the binding.
>                         The Health/sync status for the binding can thus be read from
>                         the references GitOpsDeployment
>                       type: string
>                     health:
>                       description: GitOpsDeploymentHealthStatus is the health status
>                         of the deployment owned by the binding
>                       type: string
>                     syncStatus:
>                       description: GitOpsDeploymentSyncStatus is the sync status of
>                         the deployment owned by the binding
>                       type: string
>                   required:
>                   - componentName
>                   type: object
>                 type: array
>               gitopsRepoConditions:
>                 description: Condition describes operations on the GitOps repository,
>                   for example, if there were issues with generating/processing the
>                   repository. This status is updated by the Application Service controller.
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.10.0
>   creationTimestamp: null
>   name: snapshots.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Snapshot
>     listKind: SnapshotList
>     plural: snapshots
>     shortNames:
>     - as
>     - snapshot
>     singular: snapshot
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Snapshot is the Schema for the snapshots API
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
>             description: SnapshotSpec defines the desired state of Snapshot
>             properties:
>               application:
>                 description: Application is a reference to the name of an Application
>                   resource within the same namespace, which defines the target application
>                   for the Snapshot (when used with a Binding).
>                 type: string
>               artifacts:
>                 description: Artifacts is a placeholder section for 'artifact links'
>                   we want to maintain to other AppStudio resources. See Environment
>                   API doc for details.
>                 properties:
>                   unstableFields:
>                     description: 'NOTE: This field (and struct) are placeholders.
>                       - Until this API is stabilized, consumers of the API may store
>                       any unstructured JSON/YAML data here, but no backwards compatibility
>                       will be preserved.'
>                     x-kubernetes-preserve-unknown-fields: true
>                 type: object
>               components:
>                 description: Components field contains the sets of components to deploy
>                   as part of this snapshot.
>                 items:
>                   description: SnapshotComponent
>                   properties:
>                     containerImage:
>                       description: ContainerImage is the container image to use when
>                         deploying the component, as part of a Snapshot
>                       type: string
>                     name:
>                       description: Name is the name of the component
>                       type: string
>                     source:
>                       description: Source describes the Component source. Optional.
>                       properties:
>                         git:
>                           description: Git Source for a Component. Optional.
>                           properties:
>                             context:
>                               description: 'A relative path inside the git repo containing
>                                 the component Example: folderA/folderB/gitops. Optional.'
>                               type: string
>                             devfileUrl:
>                               description: 'If specified, the devfile at the URI will
>                                 be used for the component. Can be a local path inside
>                                 the repository, or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                                 Optional.'
>                               type: string
>                             dockerfileUrl:
>                               description: If specified, the dockerfile at the URI
>                                 will be used for the component. Can be a local path
>                                 inside the repository, or an external URL. Optional.
>                               type: string
>                             revision:
>                               description: 'Specify a branch/tag/commit id. If not
>                                 specified, default is `main`/`master`. Example: devel.
>                                 Optional.'
>                               type: string
>                             url:
>                               description: An HTTPS URL representing the git repository
>                                 to create the component from.
>                               type: string
>                           required:
>                           - url
>                           type: object
>                       type: object
>                   required:
>                   - containerImage
>                   - name
>                   type: object
>                 type: array
>               displayDescription:
>                 description: DisplayDescription is a user-visible, user definable
>                   description for the resource (and is not used for any functional
>                   behaviour)
>                 type: string
>               displayName:
>                 description: DisplayName is a user-visible, user-definable name for
>                   the resource (and is not used for any functional behaviour)
>                 type: string
>             required:
>             - application
>             type: object
>           status:
>             description: SnapshotStatus defines the observed state of Snapshot
>             properties:
>               conditions:
>                 description: Conditions represent the latest available observations
>                   for the Snapshot
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{ // Represents the observations of a foo's
>                     current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: crd-manager-for-application-api
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - patch
>   - get
>   - list
>   - create
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: application-api
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-application-api
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-application-api
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: application-api
./commit-855d61a0/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:b87a8318314a02f323405fad17362516d57febe5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:d11f693619e15d070fe3b343d256b7c988a3e125
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:b87a8318314a02f323405fad17362516d57febe5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:d11f693619e15d070fe3b343d256b7c988a3e125 
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
<h3>1: Staging changes from 855d61a0 to fecb354d on Tue Mar 19 07:10:37 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b0f16889..278ee536 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=d11f693619e15d070fe3b343d256b7c988a3e125
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=d11f693619e15d070fe3b343d256b7c988a3e125
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=b87a8318314a02f323405fad17362516d57febe5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=b87a8318314a02f323405fad17362516d57febe5
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
+  newTag: b87a8318314a02f323405fad17362516d57febe5
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
+  newTag: b87a8318314a02f323405fad17362516d57febe5
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-855d61a0/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:b87a8318314a02f323405fad17362516d57febe5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:d11f693619e15d070fe3b343d256b7c988a3e125
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:b87a8318314a02f323405fad17362516d57febe5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:d11f693619e15d070fe3b343d256b7c988a3e125 
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
<h3>1: Development changes from 855d61a0 to fecb354d on Tue Mar 19 07:10:37 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b0f16889..278ee536 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=d11f693619e15d070fe3b343d256b7c988a3e125
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=d11f693619e15d070fe3b343d256b7c988a3e125
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=b87a8318314a02f323405fad17362516d57febe5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=b87a8318314a02f323405fad17362516d57febe5
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
+  newTag: b87a8318314a02f323405fad17362516d57febe5
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: d11f693619e15d070fe3b343d256b7c988a3e125
+  newTag: b87a8318314a02f323405fad17362516d57febe5
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-855d61a0/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:b87a8318314a02f323405fad17362516d57febe5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:d11f693619e15d070fe3b343d256b7c988a3e125
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:b87a8318314a02f323405fad17362516d57febe5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:d11f693619e15d070fe3b343d256b7c988a3e125 
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
<h3>2: Production changes from 829ce6b9 to 855d61a0 on Tue Mar 19 03:19:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5ce8b54e..36af874a 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index c368749b..9bc7280a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 829ce6b9 to 855d61a0 on Tue Mar 19 03:19:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5ce8b54e..36af874a 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index c368749b..9bc7280a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-829ce6b9/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1199c1199
<         image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
1290c1290
<             image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40 
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
<h3>2: Development changes from 829ce6b9 to 855d61a0 on Tue Mar 19 03:19:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5ce8b54e..36af874a 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index c368749b..9bc7280a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-829ce6b9/development/components/integration/development/kustomize.out.yaml
1198c1198
<         image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
1292c1292
<             image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40 
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
<h3>3: Production changes from db4440bc to 829ce6b9 on Tue Mar 19 01:13:14 2024 </h3>  
 
<details> 
<summary>Git Diff (695 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 796c0ad1..9a4b4cb1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3036fccf..df4a098a 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 1b7f2ef7..bc2ec1ef 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1da3cb1e..948ec7fb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 796b507c..d3dd9177 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 78940544..f3fad6eb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
<h3>3: Staging changes from db4440bc to 829ce6b9 on Tue Mar 19 01:13:14 2024 </h3>  
 
<details> 
<summary>Git Diff (695 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 796c0ad1..9a4b4cb1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3036fccf..df4a098a 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 1b7f2ef7..bc2ec1ef 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1da3cb1e..948ec7fb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 796b507c..d3dd9177 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 78940544..f3fad6eb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (513 lines)</summary>  

``` 
./commit-db4440bc/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1332c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1379,1424d1420
<       initContainers:
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1512a1509,1510
>         - -threadiness
>         - "32"
1530c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1911,1940d1908
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2039,2071d2006
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2083c2018
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
./commit-db4440bc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1332c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1379,1424d1420
<       initContainers:
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1512a1509,1510
>         - -threadiness
>         - "32"
1530c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1911,1940d1908
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2039,2071d2006
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2083c2018
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
./commit-db4440bc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1332c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1379,1424d1420
<       initContainers:
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1512a1509,1510
>         - -threadiness
>         - "32"
1530c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1911,1940d1908
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2039,2071d2006
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2083c2018
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93 
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
<h3>3: Development changes from db4440bc to 829ce6b9 on Tue Mar 19 01:13:14 2024 </h3>  
 
<details> 
<summary>Git Diff (695 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 796c0ad1..9a4b4cb1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3036fccf..df4a098a 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 1b7f2ef7..bc2ec1ef 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1da3cb1e..948ec7fb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 796b507c..d3dd9177 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 78940544..f3fad6eb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (167 lines)</summary>  

``` 
./commit-db4440bc/development/components/pipeline-service/development/kustomize.out.yaml
900a901,942
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1308c1350
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1441,1485d1482
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1571c1568
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
2022,2051d2018
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2142,2174d2108
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2186c2120
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93 
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
<h3>4: Production changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
   host:
     roleBindings: 
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
<h3>4: Staging changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
   host:
     roleBindings: 
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
<h3>4: Development changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
   host:
     roleBindings: 
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
