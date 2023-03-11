# kustomize changes tracked by commits 
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 20 commits


<div>
<h3>1: Staging changes from 8531b70 to e71ef6d on Fri Mar 10 16:55:45 2023 with 2193 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index cab3d27..c4a4093 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -10,6 +10,7 @@ spec:
     - cloudwatch:
         groupBy: namespaceName
         region: us-east-1
+        retention_in_days: 180
       name: remote-cloudwatch
       secret:
         name: cloudwatch-forwarder 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-e71ef6d/staging/components/gitops/staging/stone-stg-rh01/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-8531b70/staging/components/gitops/staging/stone-stg-rh01/kustomize.out
0a1,2191
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops
> ---
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-argocd
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeploymentmanagedenvironments.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeploymentManagedEnvironment
>     listKind: GitOpsDeploymentManagedEnvironmentList
>     plural: gitopsdeploymentmanagedenvironments
>     singular: gitopsdeploymentmanagedenvironment
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeploymentManagedEnvironment is the Schema for the gitopsdeploymentmanagedenvironments
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
>             description: GitOpsDeploymentManagedEnvironmentSpec defines the desired
>               state of GitOpsDeploymentManagedEnvironment
>             properties:
>               allowInsecureSkipTLSVerify:
>                 type: boolean
>               apiURL:
>                 type: string
>               credentialsSecret:
>                 type: string
>             required:
>             - allowInsecureSkipTLSVerify
>             - apiURL
>             - credentialsSecret
>             type: object
>           status:
>             description: GitOpsDeploymentManagedEnvironmentStatus defines the observed
>               state of GitOpsDeploymentManagedEnvironment
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
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
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeploymentrepositorycredentials.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeploymentRepositoryCredential
>     listKind: GitOpsDeploymentRepositoryCredentialList
>     plural: gitopsdeploymentrepositorycredentials
>     singular: gitopsdeploymentrepositorycredential
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeploymentRepositoryCredential is the Schema for the gitopsdeploymentrepositorycredentials
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
>             description: GitOpsDeploymentRepositoryCredentialSpec defines the desired
>               state of GitOpsDeploymentRepositoryCredential
>             properties:
>               repository:
>                 description: Repository (HTTPS url, or SSH string) for accessing the
>                   Git repo Required field As of this writing (Mar 2022), we only support
>                   HTTPS URL
>                 type: string
>               secret:
>                 description: Reference to a K8s Secret in the namespace that contains
>                   repository credentials (Git username/password, as of this writing)
>                   Required field
>                 type: string
>             required:
>             - repository
>             - secret
>             type: object
>           status:
>             description: GitOpsDeploymentRepositoryCredentialStatus defines the observed
>               state of GitOpsDeploymentRepositoryCredential
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeployments.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeployment
>     listKind: GitOpsDeploymentList
>     plural: gitopsdeployments
>     singular: gitopsdeployment
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .status.sync.status
>       name: Sync Status
>       type: string
>     - jsonPath: .status.health.status
>       name: Health Status
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeployment is the Schema for the gitopsdeployments API
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
>             description: GitOpsDeploymentSpec defines the desired state of GitOpsDeployment
>             properties:
>               destination:
>                 description: 'Destination is a reference to a target namespace/cluster
>                   to deploy to. This field may be empty: if it is empty, it is assumed
>                   that the destination is the same namespace as the GitOpsDeployment
>                   CR.'
>                 properties:
>                   environment:
>                     type: string
>                   namespace:
>                     description: The namespace will only be set for namespace-scoped
>                       resources that have not set a value for .metadata.namespace
>                     type: string
>                 type: object
>               source:
>                 description: ApplicationSource contains all required information about
>                   the source of an application
>                 properties:
>                   path:
>                     description: Path is a directory path within the Git repository,
>                       and is only valid for applications sourced from Git.
>                     type: string
>                   repoURL:
>                     description: RepoURL is the URL to the repository (Git or Helm)
>                       that contains the application manifests
>                     type: string
>                   targetRevision:
>                     description: TargetRevision defines the revision of the source
>                       to sync the application to. In case of Git, this can be commit,
>                       tag, or branch. If omitted, will equal to HEAD. In case of Helm,
>                       this is a semver tag for the Chart's version.
>                     type: string
>                 required:
>                 - path
>                 - repoURL
>                 type: object
>               syncPolicy:
>                 description: SyncPolicy controls when and how a sync will be performed.
>                 properties:
>                   syncOptions:
>                     description: Options allow you to specify whole app sync-options.
>                       This option may be empty, if and when it is empty it is considered
>                       that there are no SyncOptions present.
>                     items:
>                       type: string
>                     type: array
>                 type: object
>               type:
>                 description: "Two possible values: - Automated: whenever a new commit
>                   occurs in the GitOps repository, or the Argo CD Application is out
>                   of sync, Argo CD should be told to (re)synchronize. - Manual: Argo
>                   CD should never be told to resynchronize. Instead, synchronize operations
>                   will be triggered via GitOpsDeploymentSyncRun operations only. -
>                   See `GitOpsDeploymentSpecType*` \n Note: This is somewhat of a placeholder
>                   for more advanced logic that can be implemented in the future. For
>                   an example of this type of logic, see the 'syncPolicy' field of
>                   Argo CD Application."
>                 type: string
>             required:
>             - source
>             - type
>             type: object
>           status:
>             description: GitOpsDeploymentStatus defines the observed state of GitOpsDeployment
>             properties:
>               conditions:
>                 items:
>                   description: GitOpsDeploymentCondition contains details about an
>                     GitOpsDeployment condition, which is usually an error or warning
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
>                       description: Type is a GitOpsDeployment condition type
>                       type: string
>                   required:
>                   - status
>                   - type
>                   type: object
>                 type: array
>               health:
>                 description: Health contains information about the application's current
>                   health status
>                 properties:
>                   message:
>                     description: Message is a human-readable informational message
>                       describing the health status
>                     type: string
>                   status:
>                     description: Status holds the status code of the application or
>                       resource
>                     type: string
>                 type: object
>               reconciledState:
>                 description: ReconciledState lists last deployment of ArgoCD Application
>                 properties:
>                   destination:
>                     description: GitOpsDeploymentDestination contains the information
>                       of .status.Sync.CompareTo.Destination field of ArgoCD Application
>                     properties:
>                       name:
>                         type: string
>                       namespace:
>                         type: string
>                     required:
>                     - name
>                     - namespace
>                     type: object
>                   source:
>                     description: GitOpsDeploymentSource contains the information of
>                       .status.Sync.CompareTo.Source field of ArgoCD Application
>                     properties:
>                       branch:
>                         type: string
>                       path:
>                         description: Path contains path from .status.Sync.CompareTo
>                           field of ArgoCD Application
>                         type: string
>                       repoURL:
>                         type: string
>                     required:
>                     - branch
>                     - path
>                     - repoURL
>                     type: object
>                 required:
>                 - destination
>                 - source
>                 type: object
>               resources:
>                 description: List of Resource created by a deployment
>                 items:
>                   description: ResourceStatus holds the current sync and health status
>                     of a resource
>                   properties:
>                     group:
>                       type: string
>                     health:
>                       description: HealthStatus contains information about the currently
>                         observed health state of an application or resource
>                       properties:
>                         message:
>                           description: Message is a human-readable informational message
>                             describing the health status
>                           type: string
>                         status:
>                           description: Status holds the status code of the application
>                             or resource
>                           type: string
>                       type: object
>                     kind:
>                       type: string
>                     name:
>                       type: string
>                     namespace:
>                       type: string
>                     status:
>                       description: SyncStatusCode is a type which represents possible
>                         comparison results
>                       type: string
>                     version:
>                       type: string
>                   type: object
>                 type: array
>               sync:
>                 description: SyncStatus contains information about the currently observed
>                   live and desired states of an application
>                 properties:
>                   revision:
>                     description: Revision contains information about the revision
>                       the comparison has been performed to
>                     type: string
>                   status:
>                     description: Status is the sync state of the comparison
>                     type: string
>                 required:
>                 - status
>                 type: object
>             required:
>             - reconciledState
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeploymentsyncruns.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeploymentSyncRun
>     listKind: GitOpsDeploymentSyncRunList
>     plural: gitopsdeploymentsyncruns
>     singular: gitopsdeploymentsyncrun
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeploymentSyncRun is the Schema for the gitopsdeploymentsyncruns
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
>             description: GitOpsDeploymentSyncRunSpec defines the desired state of
>               GitOpsDeploymentSyncRun
>             properties:
>               gitopsDeploymentName:
>                 type: string
>               revisionID:
>                 type: string
>             required:
>             - gitopsDeploymentName
>             type: object
>           status:
>             description: GitOpsDeploymentSyncRunStatus defines the observed state
>               of GitOpsDeploymentSyncRun
>             properties:
>               conditions:
>                 items:
>                   description: GitOpsDeploymentCondition contains details about an
>                     applicationset condition, which is usally an error or warning
>                   properties:
>                     lastTransitionTime:
>                       description: LastTransitionTime is the time the condition was
>                         last observed
>                       format: date-time
>                       type: string
>                     message:
>                       description: Message contains human-readable message indicating
>                         details about condition
>                       type: string
>                     reason:
>                       description: Single word camelcase representing the reason for
>                         the status eg ErrorOccurred
>                       type: string
>                     status:
>                       description: True/False/Unknown
>                       type: string
>                     type:
>                       description: Type is an applicationset condition type
>                       type: string
>                   required:
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
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: operations.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: Operation
>     listKind: OperationList
>     plural: operations
>     singular: operation
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Operation is the Schema for the operations API
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
>             description: OperationSpec defines the desired state of Operation
>             properties:
>               operationID:
>                 type: string
>             type: object
>           status:
>             description: OperationStatus defines the observed state of Operation
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-leader-election-role
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-leader-election-role
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-leader-election-role
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: gitops-appstudio-service-manager-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - promotionruns
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - promotionruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - promotionruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: gitops-core-service-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentrepositorycredentials
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentrepositorycredentials/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentrepositorycredentials/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentsyncruns
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentsyncruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentsyncruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: gitops-service-agent-manager-role
> rules:
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - appprojects
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - argocds
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-leader-election-rolebinding
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-appstudio-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-leader-election-rolebinding
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-core-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-leader-election-rolebinding
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-service-agent-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-appstudio-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-appstudio-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-core-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-core-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-service-agent-manager-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-service-agent-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: 53746cb8.redhat.com
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-manager-config
>   namespace: gitops
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: 5a3f596c.redhat.com
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-manager-config
>   namespace: gitops
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: 5a3f596c.redhat.com
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-manager-config
>   namespace: gitops
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: appstudio-controller-manager
>   name: gitops-appstudio-service-controller-manager-metrics-service
>   namespace: gitops
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: metrics
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: appstudio-controller-manager
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   name: gitops-appstudio-service-webhook-service
>   namespace: gitops
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: appstudio-controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: backend-controller-manager
>   name: gitops-core-service-controller-manager-metrics-service
>   namespace: gitops
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: metrics
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: backend-controller-manager
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: cluster-agent-controller-manager
>   name: gitops-service-agent-controller-manager-metrics-service
>   namespace: gitops
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: metrics
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: cluster-agent-controller-manager
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: appstudio-controller-manager
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: appstudio-controller-manager
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: appstudio-controller-manager
>     spec:
>       containers:
>       - args:
>         - --leader-elect
>         - --zap-time-encoding=rfc3339nano
>         - --health-probe-bind-address=:8085
>         - --metrics-bind-address=:8080
>         command:
>         - appstudio-controller
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8085
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8085
>           initialDelaySeconds: 15
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 1024Mi
>           requests:
>             cpu: 50m
>             memory: 256Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources: {}
>         terminationMessagePath: /dev/termination-log
>         terminationMessagePolicy: File
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: gitops-appstudio-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: backend-controller-manager
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: backend-controller-manager
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         control-plane: backend-controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:18081
>         - --metrics-bind-address=:8080
>         - --leader-elect
>         - --zap-time-encoding=rfc3339nano
>         command:
>         - gitops-service-backend
>         env:
>         - name: ARGO_CD_NAMESPACE
>           value: gitops-service-argocd
>         - name: DB_ADDR
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: gitops-service-postgres-rds-config
>         - name: DB_PASS
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: gitops-service-postgres-rds-config
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 18081
>           initialDelaySeconds: 120
>           periodSeconds: 60
>         name: manager
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 18081
>           initialDelaySeconds: 180
>           periodSeconds: 30
>         resources:
>           limits:
>             cpu: 2000m
>             memory: 4800Mi
>           requests:
>             cpu: 1000m
>             memory: 2400Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources: {}
>         terminationMessagePath: /dev/termination-log
>         terminationMessagePolicy: File
>       initContainers:
>       - command:
>         - /init-container/init-container
>         env:
>         - name: ARGO_CD_NAMESPACE
>           value: gitops-service-argocd
>         - name: DB_ADDR
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: gitops-service-postgres-rds-config
>         - name: DB_PASS
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: gitops-service-postgres-rds-config
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         name: init-container
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: gitops-core-service-controller-manager
>       terminationGracePeriodSeconds: 10
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: cluster-agent-controller-manager
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: cluster-agent-controller-manager
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         control-plane: cluster-agent-controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8083
>         - --metrics-bind-address=:8080
>         - --leader-elect
>         - --zap-time-encoding=rfc3339nano
>         command:
>         - gitops-service-cluster-agent
>         env:
>         - name: ARGO_CD_NAMESPACE
>           value: gitops-service-argocd
>         - name: DB_ADDR
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: gitops-service-postgres-rds-config
>         - name: DB_PASS
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: gitops-service-postgres-rds-config
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8083
>           initialDelaySeconds: 45
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8083
>           initialDelaySeconds: 45
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 300m
>             memory: 1000Mi
>           requests:
>             cpu: 200m
>             memory: 300Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tmp
>           name: tmp
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources: {}
>         terminationMessagePath: /dev/termination-log
>         terminationMessagePolicy: File
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: gitops-service-agent-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - emptyDir: {}
>         name: tmp
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ArgoCD
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   finalizers:
>   - argoproj.io/finalizer
>   name: gitops-service-argocd
>   namespace: gitops-service-argocd
> spec:
>   applicationSet:
>     resources:
>       limits:
>         cpu: "1"
>         memory: 1Gi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>   controller:
>     appSync: 60s
>     logLevel: debug
>     processors: {}
>     resources:
>       limits:
>         cpu: "1"
>         memory: 3Gi
>       requests:
>         cpu: 250m
>         memory: 256Mi
>     sharding: {}
>   grafana:
>     enabled: false
>     ingress:
>       enabled: false
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>     route:
>       enabled: false
>   ha:
>     enabled: false
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>   initialSSHKnownHosts: {}
>   prometheus:
>     enabled: false
>     ingress:
>       enabled: false
>     route:
>       enabled: false
>   rbac:
>     policy: g, system:authenticated, role:admin
>     scopes: '[groups]'
>   redis:
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>   repo:
>     logLevel: debug
>     resources:
>       limits:
>         cpu: "1"
>         memory: 1Gi
>       requests:
>         cpu: 250m
>         memory: 256Mi
>   resourceInclusions: |
>     - apiGroups:
>       - ""
>       kinds:
>       - "PersistentVolumeClaim"
>       - "PersistentVolume"
>       - "Secret"
>       - "ConfigMap"
>       - "Pod"
>       - "Endpoint"
>       - "Service"
>       - "ServiceAccounts"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "apps"
>       kinds:
>       - "ReplicaSet"
>       - "StatefulSet"
>       - "DaemonSet"
>       - "Deployment"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "discovery.k8s.io"
>       kinds:
>       - "EndpointSlice"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "networking.k8s.io"
>       kinds:
>       - "Ingress"
>       - "IngressClass"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "rbac.authorization.k8s.io"
>       kinds:
>       - "RoleBinding"
>       - "Role"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "route.openshift.io"
>       kinds:
>       - "Route"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "triggers.tekton.dev"
>       kinds:
>       - "EventListener"
>       - "TriggerTemplate"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "pipelinesascode.tekton.dev"
>       kinds:
>       - "Repository"
>       clusters:
>       - "*"
>   server:
>     autoscale:
>       enabled: false
>     grpc:
>       ingress:
>         enabled: false
>     ingress:
>       enabled: false
>     logLevel: debug
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 125m
>         memory: 128Mi
>     route:
>       enabled: true
>       tls:
>         termination: reencrypt
>     service:
>       type: ""
>   tls:
>     ca: {}
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: gitops-service-postgres-rds-config
>   namespace: gitops
> spec:
>   dataFrom:
>   - extract:
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: gitops-service-postgres-rds-config
> ---
> apiVersion: operators.coreos.com/v1alpha1
> kind: Subscription
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: openshift-gitops-operator
>   namespace: openshift-operators
> spec:
>   channel: gitops-1.7
>   installPlanApproval: Automatic
>   name: openshift-gitops-operator
>   source: redhat-operators
>   sourceNamespace: openshift-marketplace
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     service.beta.openshift.io/inject-cabundle: "true"
>   creationTimestamp: null
>   name: gitops-appstudio-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-appstudio-service-webhook-service
>       namespace: gitops
>       path: /validate-appstudio-redhat-com-v1alpha1-snapshot
>   failurePolicy: Fail
>   name: vsnapshot.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - snapshots
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-appstudio-service-webhook-service
>       namespace: gitops
>       path: /validate-appstudio-redhat-com-v1alpha1-snapshotenvironmentbinding
>   failurePolicy: Fail
>   name: vsnapshotenvironmentbinding.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - snapshotenvironmentbindings
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-appstudio-service-webhook-service
>       namespace: gitops
>       path: /validate-appstudio-redhat-com-v1alpha1-promotionrun
>   failurePolicy: Fail
>   name: vpromotionrun.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - promotionruns
>   sideEffects: None 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 8531b70 to e71ef6d on Fri Mar 10 16:55:45 2023 with 758 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index cab3d27..c4a4093 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -10,6 +10,7 @@ spec:
     - cloudwatch:
         groupBy: namespaceName
         region: us-east-1
+        retention_in_days: 180
       name: remote-cloudwatch
       secret:
         name: cloudwatch-forwarder 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-e71ef6d/development/app-of-apps-development.yaml /home/john/dev/kdiff/kustomized-cache/commit-8531b70/development/app-of-apps-development.yaml
0a1,756
> apiVersion: v1
> kind: Secret
> metadata:
>   labels:
>     appstudio.redhat.com/host-cluster: "true"
>     appstudio.redhat.com/member-cluster: "true"
>     appstudio.redhat.com/quality-dashboard: "true"
>     argocd.argoproj.io/secret-type: cluster
>   name: cluster-kubernetes.default.svc
>   namespace: openshift-gitops
> stringData:
>   config: '{"tlsClientConfig":{"insecure":false}}'
>   name: in-cluster-local
>   server: https://kubernetes.default.svc
> type: Opaque
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: application-api
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: application-api-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-api
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/application-api
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: build-service
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/build-service
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: build-templates
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/build-templates
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-templates-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: cluster-registration
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: cluster-registration-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: cluster-reg-config
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/cluster-registration
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: dev-sso
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/host-cluster: "true"
>   template:
>     metadata:
>       name: dev-sso-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: dev-sso
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/dev-sso
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: dora-metrics
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/dora-metrics
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: dora-metrics-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: dora-metrics
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: enterprise-contract
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: enterprise-contract-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: enterprise-contract-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/enterprise-contract
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: gitops
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/gitops
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: gitops-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: gitops
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: has
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/has
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: has-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: image-controller
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/image-controller
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: image-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: integration
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: integration-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: integration-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/integration
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: internal-services
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: internal-services-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: internal-services
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/internal-services
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: jvm-build-service
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: jvm-build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/jvm-build-service
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: pipeline-service
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/pipeline-service
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: pipeline-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: release
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: release-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: release-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/release
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: shared-resources
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: shared-resources-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/shared-resources
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: spi
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/spi/overlays
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: spi-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: spi-system
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: spi-vault
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: spi-vault-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: spi-vault
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/spi-vault
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 361fa7f to 8531b70 on Fri Mar 10 15:03:39 2023 with 30 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 862da26..829ae9b 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,6 +16,7 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
+- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
new file mode 100644
index 0000000..76ff6a1
--- /dev/null
+++ b/components/authentication/base/sandbox-dev.yaml
@@ -0,0 +1,27 @@
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests
+  namespace: rh-ee-fmuntean-tenant
+rules:
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests"
+  verbs:
+  - "*"
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests-rb
+  namespace: rh-ee-fmuntean-tenant
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-8531b70/staging/components/authentication/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-361fa7f/staging/components/authentication/staging/kustomize.out
22,34d21
<   name: edit-spacerequests
<   namespace: rh-ee-fmuntean-tenant
< rules:
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
634,647d620
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: edit-spacerequests-rb
<   namespace: rh-ee-fmuntean-tenant
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: edit-spacerequests
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: mfrancisc 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 361fa7f to 8531b70 on Fri Mar 10 15:03:39 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 862da26..829ae9b 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,6 +16,7 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
+- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
new file mode 100644
index 0000000..76ff6a1
--- /dev/null
+++ b/components/authentication/base/sandbox-dev.yaml
@@ -0,0 +1,27 @@
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests
+  namespace: rh-ee-fmuntean-tenant
+rules:
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests"
+  verbs:
+  - "*"
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests-rb
+  namespace: rh-ee-fmuntean-tenant
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ef3ef0c to 361fa7f on Fri Mar 10 14:52:38 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/hack/hac/installHac.sh b/hack/hac/installHac.sh
new file mode 100755
index 0000000..5355737
--- /dev/null
+++ b/hack/hac/installHac.sh
@@ -0,0 +1,120 @@
+#!/bin/bash
+
+# Display help information about this script bash
+function helpUsage() {
+    echo -e "Deploy HAC and connect it to existing Stonesoup cluster\n"
+    echo 
+    echo -e "This script requires you to have access to HAC ephemeral cluster (c-rh-c-eph)."
+    echo -e "Options:"
+    echo -e "   -h,  --help                   Print this help message."
+    echo -e "   -ehk, --eph-hac-kubeconfig    A valid kubeconfig pointing to HAC Ephemeral cluster"
+    echo -e "   -sk, --stonesoup-kubeconfig   A valid kubeconfig pointing to a cluster where Stonesoup controllers are installed."
+    echo
+    echo -e "This command uses internal app-interface endpoint https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql (VPN required)"
+    echo -e "In order to use this without VPN, env vars QONTRACT_BASE_URL, QONTRACT_USERNAME and QONTRACT_PASSWORD need to be set."
+}
+
+while [[ $# -gt 0 ]]
+do
+    case "$1" in
+        -h|--help)
+            helpUsage
+            exit 0
+            ;;
+        -ehk|--eph-hac-kubeconfig)
+            export HAC_KUBECONFIG=$2
+            ;;
+        -sk|--stonesoup-kubeconfig)
+            export STONESOUP_KUBECONFIG=$2
+            ;;
+        *)
+            ;;
+    esac
+    shift
+done
+
+if [[ -z "$QONTRACT_BASE_URL" ]]; then
+    echo "[INFO] QONTRACT_BASE_URL env variable was not provided. Using default endpoint (RH VPN required)"
+    if ! curl --connect-timeout 3 https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql; then
+        echo "[ERROR] QONTRACT_BASE_URL was not provided and default app-interface endpint cannot be reached (Are you on VPN?)."
+        helpUsage & exit 1
+    fi
+else
+    if [[ -z "$QONTRACT_USERNAME" || -z "$QONTRACT_PASSWORD" ]]; then 
+        echo "[ERROR] QONTRACT_USERNAME and QONTRACT_PASSWORD needs to be set when QONTRACT_BASE_URL is provided."
+        helpUsage & exit 1
+    fi
+fi
+
+if [[ -z "$HAC_KUBECONFIG" ]]; then
+    echo "[ERROR] Ephemeral HAC cluster kubeconfig not defined. Please use flag '-ehk' or '--eph-hac-kubeconfig' to define the ephemeral hac cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+if [[ -z "$STONESOUP_KUBECONFIG" ]]; then
+    echo "[ERROR] stonesoup cluster kubeconfig not defined. Please use flag '-sk' or '--stonesoup-kubeconfig' to define the stonestoup cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+installBonfire(){
+    echo "Installing bonfire."
+    VENV_DIR=$(mktemp -d)
+    python3 -m venv "$VENV_DIR"
+    . "$VENV_DIR"/bin/activate
+    pip install crc-bonfire
+}
+
+reserveNamespace() {
+    echo "Reserving namespace."
+    NAMESPACE=$(KUBECONFIG=$HAC_KUBECONFIG bonfire namespace reserve -f)
+}
+
+installHac() {
+    echo "Preparing bonfire config"
+    CONFIG_DIR=$(mktemp -d)
+    cat > "$CONFIG_DIR/config.yaml" << EOF
+# Bonfire deployment configuration
+
+# Defines where to fetch the file that defines application configs
+appsFile:
+  host: gitlab
+  repo: insights-platform/cicd-common
+  path: bonfire_configs/ephemeral_apps.yaml
+
+# (optional) define any apps locally. An app defined here with <name> will override config for app
+# <name> in above fetched config.
+apps:
+- name: insights-ephemeral
+  components:
+    - name: frontend-configs
+      host: github
+      repo: redhat-appstudio-qe/frontend-configs
+      path: deploy/deploy.yaml
+EOF
+
+    echo "Installing HAC on Ephemeral cluster"
+    KUBECONFIG=$HAC_KUBECONFIG bonfire deploy -c "$CONFIG_DIR/config.yaml" hac --frontends true --source=appsre --clowd-env env-"${NAMESPACE}" --namespace="$NAMESPACE"
+}
+
+patchfeenv() {
+    KEYCLOAK_ENDPOINT=https://$(oc get route/keycloak --kubeconfig="$STONESOUP_KUBECONFIG" -n dev-sso -o jsonpath="{.spec.host}")/auth
+    oc patch feenv/env-"$NAMESPACE" --kubeconfig="$HAC_KUBECONFIG" --type=merge --patch-file=/dev/stdin << EOF
+    spec:
+        sso: $KEYCLOAK_ENDPOINT
+EOF
+}
+
+deployProxy() {
+    STONESOUP_API_ENDPOINT=https://$(oc get route/api --kubeconfig="$STONESOUP_KUBECONFIG" -n toolchain-host-operator  -o jsonpath="{.spec.host}")
+    oc process --kubeconfig="$HAC_KUBECONFIG" -f https://raw.githubusercontent.com/openshift/hac-dev/main/tmp/hac-proxy.yaml -n "$NAMESPACE" -p NAMESPACE="$NAMESPACE" -p ENV_NAME=env-"$NAMESPACE" -p HOSTNAME=$(oc get --kubeconfig="$HAC_KUBECONFIG" feenv env-"$NAMESPACE" -o=jsonpath='{.spec.hostname}') | oc create --kubeconfig="$HAC_KUBECONFIG" -f -
+    oc set env Deployment/hac-proxy --kubeconfig="$HAC_KUBECONFIG" -n "$NAMESPACE" HJ_K8S="$STONESOUP_API_ENDPOINT" HJ_PROXY_SSL=false
+}
+
+installBonfire
+reserveNamespace
+installHac
+patchfeenv
+deployProxy
+
+echo "Eph cluster namespace: $NAMESPACE"
+echo "Stonesoup URL: https://$(oc get feenv env-$NAMESPACE -o jsonpath="{.spec.hostname}")/hac/stonesoup" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from ef3ef0c to 361fa7f on Fri Mar 10 14:52:38 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/hack/hac/installHac.sh b/hack/hac/installHac.sh
new file mode 100755
index 0000000..5355737
--- /dev/null
+++ b/hack/hac/installHac.sh
@@ -0,0 +1,120 @@
+#!/bin/bash
+
+# Display help information about this script bash
+function helpUsage() {
+    echo -e "Deploy HAC and connect it to existing Stonesoup cluster\n"
+    echo 
+    echo -e "This script requires you to have access to HAC ephemeral cluster (c-rh-c-eph)."
+    echo -e "Options:"
+    echo -e "   -h,  --help                   Print this help message."
+    echo -e "   -ehk, --eph-hac-kubeconfig    A valid kubeconfig pointing to HAC Ephemeral cluster"
+    echo -e "   -sk, --stonesoup-kubeconfig   A valid kubeconfig pointing to a cluster where Stonesoup controllers are installed."
+    echo
+    echo -e "This command uses internal app-interface endpoint https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql (VPN required)"
+    echo -e "In order to use this without VPN, env vars QONTRACT_BASE_URL, QONTRACT_USERNAME and QONTRACT_PASSWORD need to be set."
+}
+
+while [[ $# -gt 0 ]]
+do
+    case "$1" in
+        -h|--help)
+            helpUsage
+            exit 0
+            ;;
+        -ehk|--eph-hac-kubeconfig)
+            export HAC_KUBECONFIG=$2
+            ;;
+        -sk|--stonesoup-kubeconfig)
+            export STONESOUP_KUBECONFIG=$2
+            ;;
+        *)
+            ;;
+    esac
+    shift
+done
+
+if [[ -z "$QONTRACT_BASE_URL" ]]; then
+    echo "[INFO] QONTRACT_BASE_URL env variable was not provided. Using default endpoint (RH VPN required)"
+    if ! curl --connect-timeout 3 https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql; then
+        echo "[ERROR] QONTRACT_BASE_URL was not provided and default app-interface endpint cannot be reached (Are you on VPN?)."
+        helpUsage & exit 1
+    fi
+else
+    if [[ -z "$QONTRACT_USERNAME" || -z "$QONTRACT_PASSWORD" ]]; then 
+        echo "[ERROR] QONTRACT_USERNAME and QONTRACT_PASSWORD needs to be set when QONTRACT_BASE_URL is provided."
+        helpUsage & exit 1
+    fi
+fi
+
+if [[ -z "$HAC_KUBECONFIG" ]]; then
+    echo "[ERROR] Ephemeral HAC cluster kubeconfig not defined. Please use flag '-ehk' or '--eph-hac-kubeconfig' to define the ephemeral hac cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+if [[ -z "$STONESOUP_KUBECONFIG" ]]; then
+    echo "[ERROR] stonesoup cluster kubeconfig not defined. Please use flag '-sk' or '--stonesoup-kubeconfig' to define the stonestoup cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+installBonfire(){
+    echo "Installing bonfire."
+    VENV_DIR=$(mktemp -d)
+    python3 -m venv "$VENV_DIR"
+    . "$VENV_DIR"/bin/activate
+    pip install crc-bonfire
+}
+
+reserveNamespace() {
+    echo "Reserving namespace."
+    NAMESPACE=$(KUBECONFIG=$HAC_KUBECONFIG bonfire namespace reserve -f)
+}
+
+installHac() {
+    echo "Preparing bonfire config"
+    CONFIG_DIR=$(mktemp -d)
+    cat > "$CONFIG_DIR/config.yaml" << EOF
+# Bonfire deployment configuration
+
+# Defines where to fetch the file that defines application configs
+appsFile:
+  host: gitlab
+  repo: insights-platform/cicd-common
+  path: bonfire_configs/ephemeral_apps.yaml
+
+# (optional) define any apps locally. An app defined here with <name> will override config for app
+# <name> in above fetched config.
+apps:
+- name: insights-ephemeral
+  components:
+    - name: frontend-configs
+      host: github
+      repo: redhat-appstudio-qe/frontend-configs
+      path: deploy/deploy.yaml
+EOF
+
+    echo "Installing HAC on Ephemeral cluster"
+    KUBECONFIG=$HAC_KUBECONFIG bonfire deploy -c "$CONFIG_DIR/config.yaml" hac --frontends true --source=appsre --clowd-env env-"${NAMESPACE}" --namespace="$NAMESPACE"
+}
+
+patchfeenv() {
+    KEYCLOAK_ENDPOINT=https://$(oc get route/keycloak --kubeconfig="$STONESOUP_KUBECONFIG" -n dev-sso -o jsonpath="{.spec.host}")/auth
+    oc patch feenv/env-"$NAMESPACE" --kubeconfig="$HAC_KUBECONFIG" --type=merge --patch-file=/dev/stdin << EOF
+    spec:
+        sso: $KEYCLOAK_ENDPOINT
+EOF
+}
+
+deployProxy() {
+    STONESOUP_API_ENDPOINT=https://$(oc get route/api --kubeconfig="$STONESOUP_KUBECONFIG" -n toolchain-host-operator  -o jsonpath="{.spec.host}")
+    oc process --kubeconfig="$HAC_KUBECONFIG" -f https://raw.githubusercontent.com/openshift/hac-dev/main/tmp/hac-proxy.yaml -n "$NAMESPACE" -p NAMESPACE="$NAMESPACE" -p ENV_NAME=env-"$NAMESPACE" -p HOSTNAME=$(oc get --kubeconfig="$HAC_KUBECONFIG" feenv env-"$NAMESPACE" -o=jsonpath='{.spec.hostname}') | oc create --kubeconfig="$HAC_KUBECONFIG" -f -
+    oc set env Deployment/hac-proxy --kubeconfig="$HAC_KUBECONFIG" -n "$NAMESPACE" HJ_K8S="$STONESOUP_API_ENDPOINT" HJ_PROXY_SSL=false
+}
+
+installBonfire
+reserveNamespace
+installHac
+patchfeenv
+deployProxy
+
+echo "Eph cluster namespace: $NAMESPACE"
+echo "Stonesoup URL: https://$(oc get feenv env-$NAMESPACE -o jsonpath="{.spec.hostname}")/hac/stonesoup" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 75df761 to ef3ef0c on Fri Mar 10 13:21:16 2023 with 5 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index d6c7ba1..5741356 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+  newTag: 41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-ef3ef0c/staging/components/integration/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-75df761/staging/components/integration/kustomize.out
1024c1024
<         image: quay.io/redhat-appstudio/integration-service:41fbdb124775323f58fd5ce93c70bb7d79c20650
---
>         image: quay.io/redhat-appstudio/integration-service:949eecfb02c6be08a3d840ba03739aa5bacf9ec7 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 75df761 to ef3ef0c on Fri Mar 10 13:21:16 2023 with 5 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index d6c7ba1..5741356 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+  newTag: 41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-ef3ef0c/development/components/integration/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-75df761/development/components/integration/kustomize.out
1024c1024
<         image: quay.io/redhat-appstudio/integration-service:41fbdb124775323f58fd5ce93c70bb7d79c20650
---
>         image: quay.io/redhat-appstudio/integration-service:949eecfb02c6be08a3d840ba03739aa5bacf9ec7 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Staging changes from 928e19a to 75df761 on Fri Mar 10 12:09:03 2023 with 24 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 6c986d6..97c6fc9 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 29e55f1..030f2a8 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
\ No newline at end of file
+    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index bdc8f52..968e264 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-75df761/staging/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-928e19a/staging/components/jvm-build-service/kustomize.out
176,183c176,182
<                     \n \ttype FooStatus struct{ \t    // Represents the observations
<                     of a foo's current state. \t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
<                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
<                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
<                     \t}"
---
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
1047,1048c1046,1047
<           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
---
>           value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:77e1ca7dff9d83a159e64aacd3b6a7db9121b3de 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Development changes from 928e19a to 75df761 on Fri Mar 10 12:09:03 2023 with 24 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 6c986d6..97c6fc9 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 29e55f1..030f2a8 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
\ No newline at end of file
+    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index bdc8f52..968e264 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-75df761/development/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-928e19a/development/components/jvm-build-service/kustomize.out
176,183c176,182
<                     \n \ttype FooStatus struct{ \t    // Represents the observations
<                     of a foo's current state. \t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
<                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
<                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
<                     \t}"
---
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
1047,1048c1046,1047
<           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
---
>           value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:77e1ca7dff9d83a159e64aacd3b6a7db9121b3de 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Staging changes from afa1f62 to 928e19a on Fri Mar 10 12:08:48 2023 with 166 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index d12034a..842ff17 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index b322b7e..77fb71a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 57e894304ade673867272ba0a1dacc64b3a9a6e9
+  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-928e19a/staging/components/dora-metrics/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-afa1f62/staging/components/dora-metrics/staging/kustomize.out
1,133d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   name: dora-metrics
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: dora-metrics-exporter-sa
<   namespace: dora-metrics
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: dora-metrics-reader
< rules:
< - apiGroups:
<   - apps
<   resources:
<   - deployments
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - delete
<   - patch
<   - update
< - apiGroups:
<   - apps
<   resources:
<   - replicasets
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - delete
<   - patch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: dora-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: dora-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: dora-metrics-exporter-sa
<   namespace: dora-metrics
< ---
< apiVersion: v1
< data:
<   imageExclude: '["quay.io/redhat-appstudio/gitopsdepl", "quay.io/redhat-appstudio/user-workload"]'
<   imageFilters: '["quay.io/redhat-appstudio/", "quay.io/redhat-appstudio-qe/", "quay.io/stolostron/"]'
<   searchLabel: app.kubernetes.io/instance
<   verbosity: "1"
< kind: ConfigMap
< metadata:
<   name: exporters-config
<   namespace: dora-metrics
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: exporter
<   name: exporters-svc
<   namespace: dora-metrics
< spec:
<   ports:
<   - name: metrics-port
<     port: 9101
<     protocol: TCP
<     targetPort: 9101
<   selector:
<     app: exporter
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   name: exporter
<   namespace: dora-metrics
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: exporter
<   template:
<     metadata:
<       labels:
<         app: exporter
<     spec:
<       containers:
<       - env:
<         - name: GITHUB_TOKEN
<           valueFrom:
<             secretKeyRef:
<               key: github
<               name: exporters-secret
<               optional: false
<         image: quay.io/redhat-appstudio/dora-metrics:b0b889ba5d95e759c184d483b57c4701e961214d
<         name: container
<         ports:
<         - containerPort: 9101
<           name: metrics-port
<           protocol: TCP
<       serviceAccount: dora-metrics-exporter-sa
<       serviceAccountName: dora-metrics-exporter-sa
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: exporters-secret
<   namespace: dora-metrics
< spec:
<   dataFrom:
<   - extract:
<       key: staging/qe/exporters-secret
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: exporters-secret
diff -r /home/john/dev/kdiff/kustomized-cache/commit-928e19a/staging/components/release/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-afa1f62/staging/components/release/kustomize.out
14d13
<   creationTimestamp: null
16a16,25
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
112d120
<   creationTimestamp: null
114a123,132
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
2293c2311
<         image: quay.io/redhat-appstudio/release-service:913a02c3595a2457680bb6221ae17753e04a08cd
---
>         image: quay.io/redhat-appstudio/release-service:57e894304ade673867272ba0a1dacc64b3a9a6e9 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Development changes from afa1f62 to 928e19a on Fri Mar 10 12:08:48 2023 with 31 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index d12034a..842ff17 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index b322b7e..77fb71a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 57e894304ade673867272ba0a1dacc64b3a9a6e9
+  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-928e19a/development/components/release/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-afa1f62/development/components/release/kustomize.out
14d13
<   creationTimestamp: null
16a16,25
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
112d120
<   creationTimestamp: null
114a123,132
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
2293c2311
<         image: quay.io/redhat-appstudio/release-service:913a02c3595a2457680bb6221ae17753e04a08cd
---
>         image: quay.io/redhat-appstudio/release-service:57e894304ade673867272ba0a1dacc64b3a9a6e9 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Staging changes from 237461b to afa1f62 on Fri Mar 10 12:08:26 2023 with 178 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 9de2911..13ab154 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=8826226f7d2f74dd0f3e74b70dde1fcd1e88f722
+- https://github.com/redhat-appstudio/application-api/config/crd?ref=6e0986f521321faf0c549258e281fc92d916f1bd
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-afa1f62/staging/components/application-api/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-237461b/staging/components/application-api/kustomize.out
258,260c258,259
<                     description: 'If specified, the devfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                     description: 'If specified, the devfile at the URL will be used
>                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
264,266c263,264
<                     description: If specified, the dockerfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Optional.
---
>                     description: If specified, the dockerfile at the URL will be used
>                       for the component. Optional.
497,500c495,496
<                                   description: 'If specified, the devfile at the URI
<                                     will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                                   description: 'If specified, the devfile at the URL
>                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
505,507c501
<                                     URI will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Optional.
---
>                                     URL will be used for the component. Optional.
857,859c851,852
<                         description: 'If specified, the devfile at the URI will be
<                           used for the component. Can be a local path inside the repository,
<                           or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                         description: 'If specified, the devfile at the URL will be
>                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
863,865c856,857
<                         description: If specified, the dockerfile at the URI will
<                           be used for the component. Can be a local path inside the
<                           repository, or an external URL. Optional.
---
>                         description: If specified, the dockerfile at the URL will
>                           be used for the component. Optional.
diff -r /home/john/dev/kdiff/kustomized-cache/commit-afa1f62/staging/components/dora-metrics/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-237461b/staging/components/dora-metrics/staging/kustomize.out
0a1,133
> apiVersion: v1
> kind: Namespace
> metadata:
>   name: dora-metrics
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: dora-metrics-exporter-sa
>   namespace: dora-metrics
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: dora-metrics-reader
> rules:
> - apiGroups:
>   - apps
>   resources:
>   - deployments
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - delete
>   - patch
>   - update
> - apiGroups:
>   - apps
>   resources:
>   - replicasets
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - delete
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: dora-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: dora-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: dora-metrics-exporter-sa
>   namespace: dora-metrics
> ---
> apiVersion: v1
> data:
>   imageExclude: '["quay.io/redhat-appstudio/gitopsdepl", "quay.io/redhat-appstudio/user-workload"]'
>   imageFilters: '["quay.io/redhat-appstudio/", "quay.io/redhat-appstudio-qe/", "quay.io/stolostron/"]'
>   searchLabel: app.kubernetes.io/instance
>   verbosity: "1"
> kind: ConfigMap
> metadata:
>   name: exporters-config
>   namespace: dora-metrics
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: exporter
>   name: exporters-svc
>   namespace: dora-metrics
> spec:
>   ports:
>   - name: metrics-port
>     port: 9101
>     protocol: TCP
>     targetPort: 9101
>   selector:
>     app: exporter
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   name: exporter
>   namespace: dora-metrics
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: exporter
>   template:
>     metadata:
>       labels:
>         app: exporter
>     spec:
>       containers:
>       - env:
>         - name: GITHUB_TOKEN
>           valueFrom:
>             secretKeyRef:
>               key: github
>               name: exporters-secret
>               optional: false
>         image: quay.io/redhat-appstudio/dora-metrics:b0b889ba5d95e759c184d483b57c4701e961214d
>         name: container
>         ports:
>         - containerPort: 9101
>           name: metrics-port
>           protocol: TCP
>       serviceAccount: dora-metrics-exporter-sa
>       serviceAccountName: dora-metrics-exporter-sa
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: exporters-secret
>   namespace: dora-metrics
> spec:
>   dataFrom:
>   - extract:
>       key: staging/qe/exporters-secret
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: exporters-secret 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Development changes from 237461b to afa1f62 on Fri Mar 10 12:08:26 2023 with 43 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 9de2911..13ab154 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=8826226f7d2f74dd0f3e74b70dde1fcd1e88f722
+- https://github.com/redhat-appstudio/application-api/config/crd?ref=6e0986f521321faf0c549258e281fc92d916f1bd
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-afa1f62/development/components/application-api/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-237461b/development/components/application-api/kustomize.out
258,260c258,259
<                     description: 'If specified, the devfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                     description: 'If specified, the devfile at the URL will be used
>                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
264,266c263,264
<                     description: If specified, the dockerfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Optional.
---
>                     description: If specified, the dockerfile at the URL will be used
>                       for the component. Optional.
497,500c495,496
<                                   description: 'If specified, the devfile at the URI
<                                     will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                                   description: 'If specified, the devfile at the URL
>                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
505,507c501
<                                     URI will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Optional.
---
>                                     URL will be used for the component. Optional.
857,859c851,852
<                         description: 'If specified, the devfile at the URI will be
<                           used for the component. Can be a local path inside the repository,
<                           or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                         description: 'If specified, the devfile at the URL will be
>                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
863,865c856,857
<                         description: If specified, the dockerfile at the URI will
<                           be used for the component. Can be a local path inside the
<                           repository, or an external URL. Optional.
---
>                         description: If specified, the dockerfile at the URL will
>                           be used for the component. Optional. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Staging changes from d79bb21 to 237461b on Fri Mar 10 12:08:12 2023 with 5 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 932127d..8f38edd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-service/config/default?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+- https://github.com/redhat-appstudio/application-service/config/default?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/application-service
   newName: quay.io/redhat-appstudio/application-service
-  newTag: fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  newTag: d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 configMapGenerator:
 - literals:
diff --git a/components/monitoring/grafana/base/has/kustomization.yaml b/components/monitoring/grafana/base/has/kustomization.yaml
index f9a3ce9..7493156 100644
--- a/components/monitoring/grafana/base/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/has/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-237461b/staging/components/has/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-d79bb21/staging/components/has/staging/kustomize.out
683c683
<         image: quay.io/redhat-appstudio/application-service:d4d3f6e353a7f300de0e91a5bf9333a222d412bc
---
>         image: quay.io/redhat-appstudio/application-service:fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Development changes from d79bb21 to 237461b on Fri Mar 10 12:08:12 2023 with 5 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 932127d..8f38edd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-service/config/default?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+- https://github.com/redhat-appstudio/application-service/config/default?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/application-service
   newName: quay.io/redhat-appstudio/application-service
-  newTag: fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  newTag: d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 configMapGenerator:
 - literals:
diff --git a/components/monitoring/grafana/base/has/kustomization.yaml b/components/monitoring/grafana/base/has/kustomization.yaml
index f9a3ce9..7493156 100644
--- a/components/monitoring/grafana/base/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/has/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-237461b/development/components/has/development/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-d79bb21/development/components/has/development/kustomize.out
683c683
<         image: quay.io/redhat-appstudio/application-service:d4d3f6e353a7f300de0e91a5bf9333a222d412bc
---
>         image: quay.io/redhat-appstudio/application-service:fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Staging changes from 2153ebb to d79bb21 on Fri Mar 10 12:07:13 2023 with 82 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index c2804da..fa32a0f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 12adba270722dde8c7b8553ddceee2167284a62b
+  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index b90cfbe..959a581 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-d79bb21/staging/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-2153ebb/staging/components/build-service/staging/kustomize.out
250,296d249
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   creationTimestamp: null
<   name: build-service-manager-role
<   namespace: build-service
< rules:
< - apiGroups:
<   - batch
<   resources:
<   - jobs
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
357a311,321
>   - batch
>   resources:
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - watch
> - apiGroups:
460,475d423
<   name: build-service-manager-rolebinding
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: build-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: build-service-controller-manager
<   namespace: build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
585c533
<         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
---
>         image: quay.io/redhat-appstudio/build-service:12adba270722dde8c7b8553ddceee2167284a62b 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Development changes from 2153ebb to d79bb21 on Fri Mar 10 12:07:13 2023 with 82 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index c2804da..fa32a0f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 12adba270722dde8c7b8553ddceee2167284a62b
+  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index b90cfbe..959a581 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-d79bb21/development/components/build-service/development/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-2153ebb/development/components/build-service/development/kustomize.out
250,296d249
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   creationTimestamp: null
<   name: build-service-manager-role
<   namespace: build-service
< rules:
< - apiGroups:
<   - batch
<   resources:
<   - jobs
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
357a311,321
>   - batch
>   resources:
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - watch
> - apiGroups:
460,475d423
<   name: build-service-manager-rolebinding
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: build-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: build-service-controller-manager
<   namespace: build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
585c533
<         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
---
>         image: quay.io/redhat-appstudio/build-service:12adba270722dde8c7b8553ddceee2167284a62b 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Staging changes from 68157f1 to 2153ebb on Fri Mar 10 11:30:14 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
index f0c606e..4daf990 100644
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
@@ -2,11 +2,11 @@
   {
     "op": "replace",
     "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps.stone-stg-m01.1ion.p1.openshiftapps.com"
+    "value": "https://vault-spi-vault.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
   },
   {
     "op": "replace",
     "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.1ion.p1.openshiftapps.com"
+    "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
index 7f37bf6..836f3fd 100644
--- a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host1.hjvn.p1.openshiftapps.com:443"
+    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
index 477ed1f..55d3199 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
@@ -2,11 +2,11 @@
   {
     "op": "replace",
     "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps.stone-stg-rh01.0fk9.p1.openshiftapps.com"
+    "value": "https://vault-spi-vault.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
   },
   {
     "op": "replace",
     "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.0fk9.p1.openshiftapps.com"
+    "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
index 7f37bf6..836f3fd 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host1.hjvn.p1.openshiftapps.com:443"
+    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
   }
 ] 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Development changes from 68157f1 to 2153ebb on Fri Mar 10 11:30:14 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
index f0c606e..4daf990 100644
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
@@ -2,11 +2,11 @@
   {
     "op": "replace",
     "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps.stone-stg-m01.1ion.p1.openshiftapps.com"
+    "value": "https://vault-spi-vault.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
   },
   {
     "op": "replace",
     "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.1ion.p1.openshiftapps.com"
+    "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
index 7f37bf6..836f3fd 100644
--- a/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-m01/oauth-service-config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host1.hjvn.p1.openshiftapps.com:443"
+    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
index 477ed1f..55d3199 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
@@ -2,11 +2,11 @@
   {
     "op": "replace",
     "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps.stone-stg-rh01.0fk9.p1.openshiftapps.com"
+    "value": "https://vault-spi-vault.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
   },
   {
     "op": "replace",
     "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.0fk9.p1.openshiftapps.com"
+    "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
index 7f37bf6..836f3fd 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-rh01/oauth-service-config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-stg-host1.hjvn.p1.openshiftapps.com:443"
+    "value": "https://api-toolchain-host-operator.apps.stone-stg-host.qc0p.p1.openshiftapps.com:443"
   }
 ] 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Staging changes from 8959d63 to 68157f1 on Fri Mar 10 01:12:51 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Development changes from 8959d63 to 68157f1 on Fri Mar 10 01:12:51 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Staging changes from dea26a9 to 8959d63 on Fri Mar 10 01:12:41 2023 with 240 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index e3d94d4..3fb22ac 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=489156497d26c4cae149a8b682d9280d440bd3ad
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 - ../openshift-gitops
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 489156497d26c4cae149a8b682d9280d440bd3ad
+    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index c1ea634..a0b895d 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=489156497d26c4cae149a8b682d9280d440bd3ad
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 489156497d26c4cae149a8b682d9280d440bd3ad
+    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index c1ea634..a0b895d 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=489156497d26c4cae149a8b682d9280d440bd3ad
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 489156497d26c4cae149a8b682d9280d440bd3ad
+    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-8959d63/staging/components/gitops/staging/stone-stg-m01/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-dea26a9/staging/components/gitops/staging/stone-stg-m01/kustomize.out
1565,1580d1564
<     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
<   name: gitops-appstudio-service-webhook-service
<   namespace: gitops
< spec:
<   ports:
<   - port: 443
<     protocol: TCP
<     targetPort: 9443
<   selector:
<     control-plane: appstudio-controller-manager
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1654c1638
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1665,1667d1648
<         - containerPort: 9443
<           name: webhook-server
<           protocol: TCP
1684,1687d1664
<         volumeMounts:
<         - mountPath: /tmp/k8s-webhook-server/serving-certs
<           name: cert
<           readOnly: true
1707,1711d1683
<       volumes:
<       - name: cert
<         secret:
<           defaultMode: 420
<           secretName: webhook-server-cert
1757c1729
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1817c1789
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1868c1840
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
2122,2191d2093
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: ValidatingWebhookConfiguration
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: gitops-appstudio-service-validating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshot
<   failurePolicy: Fail
<   name: vsnapshot.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshots
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshotenvironmentbinding
<   failurePolicy: Fail
<   name: vsnapshotenvironmentbinding.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshotenvironmentbindings
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-promotionrun
<   failurePolicy: Fail
<   name: vpromotionrun.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - promotionruns
<   sideEffects: None
diff -r /home/john/dev/kdiff/kustomized-cache/commit-8959d63/staging/components/gitops/staging/stone-stg-rh01/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-dea26a9/staging/components/gitops/staging/stone-stg-rh01/kustomize.out
1565,1580d1564
<     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
<   name: gitops-appstudio-service-webhook-service
<   namespace: gitops
< spec:
<   ports:
<   - port: 443
<     protocol: TCP
<     targetPort: 9443
<   selector:
<     control-plane: appstudio-controller-manager
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1654c1638
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1665,1667d1648
<         - containerPort: 9443
<           name: webhook-server
<           protocol: TCP
1684,1687d1664
<         volumeMounts:
<         - mountPath: /tmp/k8s-webhook-server/serving-certs
<           name: cert
<           readOnly: true
1707,1711d1683
<       volumes:
<       - name: cert
<         secret:
<           defaultMode: 420
<           secretName: webhook-server-cert
1757c1729
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1817c1789
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1868c1840
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
2122,2191d2093
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: ValidatingWebhookConfiguration
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: gitops-appstudio-service-validating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshot
<   failurePolicy: Fail
<   name: vsnapshot.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshots
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshotenvironmentbinding
<   failurePolicy: Fail
<   name: vsnapshotenvironmentbinding.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshotenvironmentbindings
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-promotionrun
<   failurePolicy: Fail
<   name: vpromotionrun.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - promotionruns
<   sideEffects: None 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Development changes from dea26a9 to 8959d63 on Fri Mar 10 01:12:41 2023 with 114 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index e3d94d4..3fb22ac 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=489156497d26c4cae149a8b682d9280d440bd3ad
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 - ../openshift-gitops
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 489156497d26c4cae149a8b682d9280d440bd3ad
+    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index c1ea634..a0b895d 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=489156497d26c4cae149a8b682d9280d440bd3ad
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 489156497d26c4cae149a8b682d9280d440bd3ad
+    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index c1ea634..a0b895d 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=489156497d26c4cae149a8b682d9280d440bd3ad
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 489156497d26c4cae149a8b682d9280d440bd3ad
+    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-8959d63/development/components/gitops/development/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-dea26a9/development/components/gitops/development/kustomize.out
1498,1512d1497
<   annotations:
<     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
<   name: gitops-appstudio-service-webhook-service
<   namespace: gitops
< spec:
<   ports:
<   - port: 443
<     protocol: TCP
<     targetPort: 9443
<   selector:
<     control-plane: appstudio-controller-manager
< ---
< apiVersion: v1
< kind: Service
< metadata:
1624c1609
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1635,1637d1619
<         - containerPort: 9443
<           name: webhook-server
<           protocol: TCP
1654,1657d1635
<         volumeMounts:
<         - mountPath: /tmp/k8s-webhook-server/serving-certs
<           name: cert
<           readOnly: true
1677,1681d1654
<       volumes:
<       - name: cert
<         secret:
<           defaultMode: 420
<           secretName: webhook-server-cert
1718c1691
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
1800c1773
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
---
>         image: quay.io/redhat-appstudio/gitops-service:489156497d26c4cae149a8b682d9280d440bd3ad
2135,2203d2107
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: ValidatingWebhookConfiguration
< metadata:
<   annotations:
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: gitops-appstudio-service-validating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshot
<   failurePolicy: Fail
<   name: vsnapshot.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshots
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshotenvironmentbinding
<   failurePolicy: Fail
<   name: vsnapshotenvironmentbinding.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshotenvironmentbindings
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-promotionrun
<   failurePolicy: Fail
<   name: vpromotionrun.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - promotionruns
<   sideEffects: None 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Staging changes from 2887ab9 to dea26a9 on Thu Mar 9 17:26:35 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/docs/testing/e2e-tests.md b/docs/testing/e2e-tests.md
index 033c916..d4138a2 100644
--- a/docs/testing/e2e-tests.md
+++ b/docs/testing/e2e-tests.md
@@ -3,5 +3,3 @@ title: End-to-End Tests
 ---
 
 The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/redhat-appstudio/e2e-tests) for details on how to build and run the tests.
-
-[Tests are executed for each PR created .ci](../../.ci/Readme.md).
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Development changes from 2887ab9 to dea26a9 on Thu Mar 9 17:26:35 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/docs/testing/e2e-tests.md b/docs/testing/e2e-tests.md
index 033c916..d4138a2 100644
--- a/docs/testing/e2e-tests.md
+++ b/docs/testing/e2e-tests.md
@@ -3,5 +3,3 @@ title: End-to-End Tests
 ---
 
 The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/redhat-appstudio/e2e-tests) for details on how to build and run the tests.
-
-[Tests are executed for each PR created .ci](../../.ci/Readme.md).
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Staging changes from a4b853e to 2887ab9 on Thu Mar 9 14:38:22 2023 with 19 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index a575191..acdfcf2 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=dea0b94a906b57aa8de117296bc9d5c7946060d5
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 00b4fcbfee90cf4edb5eb332467648dfed031ad3
\ No newline at end of file
+    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index e26c7ff..0883dc6 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=dea0b94a906b57aa8de117296bc9d5c7946060d5
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 00b4fcbfee90cf4edb5eb332467648dfed031ad3
\ No newline at end of file
+    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-2887ab9/staging/components/quality-dashboard/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-a4b853e/staging/components/quality-dashboard/staging/kustomize.out
5d4
<     argocd.argoproj.io/sync-wave: "0"
82d80
<     argocd.argoproj.io/sync-wave: "0"
160c158
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:62d693e2f57a4c3394a842966f51e646691b28df
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:00b4fcbfee90cf4edb5eb332467648dfed031ad3
184,185d181
<   annotations:
<     argocd.argoproj.io/sync-wave: "0"
244c240
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:62d693e2f57a4c3394a842966f51e646691b28df
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:00b4fcbfee90cf4edb5eb332467648dfed031ad3
307,308d302
<   annotations:
<     argocd.argoproj.io/sync-wave: "1" 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Development changes from a4b853e to 2887ab9 on Thu Mar 9 14:38:22 2023 with 19 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index a575191..acdfcf2 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=dea0b94a906b57aa8de117296bc9d5c7946060d5
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 00b4fcbfee90cf4edb5eb332467648dfed031ad3
\ No newline at end of file
+    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index e26c7ff..0883dc6 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=dea0b94a906b57aa8de117296bc9d5c7946060d5
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 00b4fcbfee90cf4edb5eb332467648dfed031ad3
\ No newline at end of file
+    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-2887ab9/development/components/quality-dashboard/development/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-a4b853e/development/components/quality-dashboard/development/kustomize.out
5d4
<     argocd.argoproj.io/sync-wave: "0"
43d41
<     argocd.argoproj.io/sync-wave: "0"
121c119
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:62d693e2f57a4c3394a842966f51e646691b28df
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:00b4fcbfee90cf4edb5eb332467648dfed031ad3
145,146d142
<   annotations:
<     argocd.argoproj.io/sync-wave: "0"
205c201
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:62d693e2f57a4c3394a842966f51e646691b28df
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:00b4fcbfee90cf4edb5eb332467648dfed031ad3
247,248d242
<   annotations:
<     argocd.argoproj.io/sync-wave: "1" 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Staging changes from 498d7c6 to a4b853e on Thu Mar 9 13:19:19 2023 with 898 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/authentication/sandbox-sre-admins.yaml b/components/authentication/base/sandbox-sre-admins.yaml
similarity index 100%
rename from components/authentication/sandbox-sre-admins.yaml
rename to components/authentication/base/sandbox-sre-admins.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-a4b853e/staging/components/authentication/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-498d7c6/staging/components/authentication/staging/kustomize.out
1,896d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   name: group-sync-operator
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: gitops-namespace-all-access
<   namespace: gitops
< rules:
< - apiGroups:
<   - '*'
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: vault-admin
<   namespace: spi-vault
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   verbs:
<   - get
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - pods/exec
<   verbs:
<   - create
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - delete
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: dora-metrics-maintainer
<   namespace: dora-metrics
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - edit
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: pact-broker-maintainer
<   namespace: hac-pact-broker
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - edit
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: cluster-registration-maintainer
< rules:
< - apiGroups:
<   - singapore.open-cluster-management.io
<   resources:
<   - clusterregistrars
<   - hubconfigs
<   - registeredclusters
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - list
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: component-maintainer
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - pipeline
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
<   - get
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - get
<   - list
<   - watch
<   - delete
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - '*'
< - apiGroups:
<   - results.tekton.dev
<   resources:
<   - results
<   - records
<   verbs:
<   - get
<   - list
< - apiGroups:
<   - ""
<   resources:
<   - pods/exec
<   - pods/portforward
<   verbs:
<   - create
< - apiGroups:
<   - apps
<   resources:
<   - deployments
<   verbs:
<   - get
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: gitops-component-maintainer
< rules:
< - apiGroups:
<   - '*'
<   resources:
<   - '*'
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: impersonate-groups-and-users
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - groups
<   - users
<   verbs:
<   - impersonate
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: pipeline-service-sre
< rules:
< - apiGroups:
<   - tekton.dev
<   resources:
<   - clustertasks
<   - conditions
<   - pipelineresources
<   - pipelineruns
<   - pipelines
<   - runs
<   - taskruns
<   - tasks
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - delete
<   - patch
< - apiGroups:
<   - triggers.tekton.dev
<   resources:
<   - clusterinterceptors
<   - clustertriggerbindings
<   - eventlisteners
<   - triggerbindings
<   - triggers
<   - triggertemplates
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - delete
<   - patch
< - apiGroups:
<   - pipelinesascode.tekton.dev
<   resources:
<   - repositories
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - delete
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: view-appstudio
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications
<   - buildpipelineselectors
<   - componentdetectionqueries
<   - components
<   - enterprisecontractpolicies
<   - environments
<   - integrationtestscenarios
<   - promotionruns
<   - releaseplanadmissions
<   - releaseplans
<   - releases
<   - releasestrategies
<   - snapshotenvironmentbindings
<   - snapshots
<   - spiaccesschecks
<   - spiaccesstokenbindings
<   - spifilecontentrequests
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments
<   - gitopsdeployments
<   - gitopsdeploymentsyncruns
<   - operations
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   - dependencybuilds
<   - rebuiltartifacts
<   - systemconfigs
<   - tektonwrappers
<   - jbsconfigs
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - pipelinesascode.tekton.dev
<   resources:
<   - repositories
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: application-service-maintainers
<   namespace: application-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: johnmcollier
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: kim-tsao
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: yangcao77
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: component-maintainers
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: build-templates-maintainers
<   namespace: build-templates-e2e
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: psturc
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: build-templates-maintainers
<   namespace: build-templates
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: cluster-registration-service-component-maintainers
<   namespace: cluster-reg-config
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - kind: User
<   name: chrisahl
< - kind: User
<   name: leena-jawale
< - kind: User
<   name: itdove
< - kind: User
<   name: vidyanambiar
< - kind: User
<   name: tpouyer
< - kind: User
<   name: robinbobbit
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: dora-metrics-maintainers
<   namespace: dora-metrics
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: dora-metrics-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: rhopp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: flacatus
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jkopriva
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sawood14012
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: albarbaro
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: gitops-service-maintainers-gitops-namespace-all-access
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-namespace-all-access
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jgwest
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: group-sync-operator-maintainers
<   namespace: group-sync-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - kind: User
<   name: Michkov
< - kind: User
<   name: sbose78
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pact-broker-maintainers
<   namespace: hac-pact-broker
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pact-broker-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Katka92
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: QE team
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pact-broker-read
<   namespace: hac-pact-broker
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: view
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Katka92
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: QE team
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: integration-service-maintainers
<   namespace: integration-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: dirgim
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: internal-services
<   namespace: internal-services
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Release team
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: component-maintainers
<   namespace: jvm-build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: stuartwdouglas
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: gabemontero
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: openshift-pipelines-maintainers
<   namespace: openshift-pipelines
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pipelines-as-code-maintainers
<   namespace: pipelines-as-code
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: chmouel
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pipeline-service-admin
<   namespace: plnsvc-tests
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: release-service-maintainers
<   namespace: release-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Release team
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: spi-service-maintainers
<   namespace: spi-system
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - kind: User
<   name: skabashnyuk
< - kind: User
<   name: sbose78
< - kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: vault-admin
<   namespace: spi-vault
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: vault-admin
< subjects:
< - kind: User
<   name: skabashnyuk
< - kind: User
<   name: sparkoo
< - kind: User
<   name: metlos
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: component-maintainers
<   namespace: tekton-chains
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: tekton-results-maintainers
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: gitops-service-gitops-component-maintainers
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jgwest
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: cluster-registration-maintainer-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: cluster-registration-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: chrisahl
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: robinbobbit
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: everyone-view
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: view
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: stage
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: everyone-view-appstudio
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: view-appstudio
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: stage
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: internal-services
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: internal-service-request-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Release team
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: pipeline-service-sre
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pipeline-service-sre
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: sandbox-sre-admins-can-impersonate
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: impersonate-groups-and-users
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: MatousJobanek
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: alexeykazakov
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: xcoulon
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: github-redhat-appstudio
<   namespace: group-sync-operator
< spec:
<   dataFrom:
<   - extract:
<       conversionStrategy: Default
<       decodingStrategy: None
<       key: staging/group-sync/github-redhat-appstudio
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: github-redhat-appstudio
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: github-redhat-appstudio-sre
<   namespace: group-sync-operator
< spec:
<   dataFrom:
<   - extract:
<       conversionStrategy: Default
<       decodingStrategy: None
<       key: staging/group-sync/github-redhat-appstudio-sre
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: github-redhat-appstudio-sre
< ---
< apiVersion: operators.coreos.com/v1
< kind: OperatorGroup
< metadata:
<   name: group-sync-operator
<   namespace: group-sync-operator
< spec:
<   targetNamespaces:
<   - group-sync-operator
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   name: group-sync-operator
<   namespace: group-sync-operator
< spec:
<   channel: alpha
<   installPlanApproval: Automatic
<   name: group-sync-operator
<   source: community-operators
<   sourceNamespace: openshift-marketplace
< ---
< apiVersion: redhatcop.redhat.io/v1alpha1
< kind: GroupSync
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: github-redhat-appstudio
<   namespace: group-sync-operator
< spec:
<   providers:
<   - github:
<       credentialsSecret:
<         name: github-redhat-appstudio
<         namespace: group-sync-operator
<       organization: redhat-appstudio
<     name: github
<   schedule: '*/15 * * * *'
< ---
< apiVersion: redhatcop.redhat.io/v1alpha1
< kind: GroupSync
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: github-redhat-appstudio-sre
<   namespace: group-sync-operator
< spec:
<   providers:
<   - github:
<       credentialsSecret:
<         name: github-redhat-appstudio-sre
<         namespace: group-sync-operator
<       organization: redhat-appstudio-sre
<     name: github
<   schedule: '*/15 * * * *' 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Development changes from 498d7c6 to a4b853e on Thu Mar 9 13:19:19 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/authentication/sandbox-sre-admins.yaml b/components/authentication/base/sandbox-sre-admins.yaml
similarity index 100%
rename from components/authentication/sandbox-sre-admins.yaml
rename to components/authentication/base/sandbox-sre-admins.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Staging changes from 8ff4b18 to 498d7c6 on Thu Mar 9 12:34:49 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index c08436d..d23d2f4 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=9c73fb62c5041841adf4defbac2536c752f72dd3
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 3cea2a3..40c2334 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=9c73fb62c5041841adf4defbac2536c752f72dd3
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 9990176..d80a0ce 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=9c73fb62c5041841adf4defbac2536c752f72dd3
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 9c73fb62c5041841adf4defbac2536c752f72dd3
+    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 9c73fb62c5041841adf4defbac2536c752f72dd3
+    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Development changes from 8ff4b18 to 498d7c6 on Thu Mar 9 12:34:49 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index c08436d..d23d2f4 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=9c73fb62c5041841adf4defbac2536c752f72dd3
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 3cea2a3..40c2334 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=9c73fb62c5041841adf4defbac2536c752f72dd3
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 9990176..d80a0ce 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=9c73fb62c5041841adf4defbac2536c752f72dd3
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 9c73fb62c5041841adf4defbac2536c752f72dd3
+    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 9c73fb62c5041841adf4defbac2536c752f72dd3
+    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Staging changes from 9eb0e40 to 8ff4b18 on Thu Mar 9 10:27:43 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/logging/base/install-logging-operator.yaml b/components/monitoring/logging/base/install-logging-operator.yaml
index 1bf6bcb..548eb3e 100644
--- a/components/monitoring/logging/base/install-logging-operator.yaml
+++ b/components/monitoring/logging/base/install-logging-operator.yaml
@@ -17,22 +17,6 @@ metadata:
   labels:
     openshift.io/cluster-monitoring: "true"
 ---
-apiVersion: operators.coreos.com/v1
-kind: OperatorGroup
-metadata:
-  name: openshift-operators-redhat
-  namespace: openshift-operators-redhat 
-spec: {}
----
-apiVersion: operators.coreos.com/v1
-kind: OperatorGroup
-metadata:
-  name: cluster-logging
-  namespace: openshift-logging 
-spec:
-  targetNamespaces:
-  - openshift-logging
----
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Development changes from 9eb0e40 to 8ff4b18 on Thu Mar 9 10:27:43 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/logging/base/install-logging-operator.yaml b/components/monitoring/logging/base/install-logging-operator.yaml
index 1bf6bcb..548eb3e 100644
--- a/components/monitoring/logging/base/install-logging-operator.yaml
+++ b/components/monitoring/logging/base/install-logging-operator.yaml
@@ -17,22 +17,6 @@ metadata:
   labels:
     openshift.io/cluster-monitoring: "true"
 ---
-apiVersion: operators.coreos.com/v1
-kind: OperatorGroup
-metadata:
-  name: openshift-operators-redhat
-  namespace: openshift-operators-redhat 
-spec: {}
----
-apiVersion: operators.coreos.com/v1
-kind: OperatorGroup
-metadata:
-  name: cluster-logging
-  namespace: openshift-logging 
-spec:
-  targetNamespaces:
-  - openshift-logging
----
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Staging changes from c69b6b2 to 9eb0e40 on Thu Mar 9 10:16:15 2023 with 866 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 2ab01f9..862da26 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - pact-broker.yaml
 - internal-services.yaml
 - pipeline-service-sre.yaml
+- sandbox-sre-admins.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/sandbox-sre-admins.yaml b/components/authentication/sandbox-sre-admins.yaml
new file mode 100644
index 0000000..febbfa0
--- /dev/null
+++ b/components/authentication/sandbox-sre-admins.yaml
@@ -0,0 +1,32 @@
+---
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: impersonate-groups-and-users
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - "groups"
+  - "users"
+  verbs:
+  - "impersonate"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins-can-impersonate
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: impersonate-groups-and-users 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
diff -r /home/john/dev/kdiff/kustomized-cache/commit-9eb0e40/staging/components/authentication/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/commit-c69b6b2/staging/components/authentication/staging/kustomize.out
0a1,864
> apiVersion: v1
> kind: Namespace
> metadata:
>   name: group-sync-operator
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: gitops-namespace-all-access
>   namespace: gitops
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: vault-admin
>   namespace: spi-vault
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   verbs:
>   - get
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - pods/exec
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - delete
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: dora-metrics-maintainer
>   namespace: dora-metrics
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - edit
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: pact-broker-maintainer
>   namespace: hac-pact-broker
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - edit
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: cluster-registration-maintainer
> rules:
> - apiGroups:
>   - singapore.open-cluster-management.io
>   resources:
>   - clusterregistrars
>   - hubconfigs
>   - registeredclusters
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - list
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: component-maintainer
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pipeline
>   resources:
>   - serviceaccounts
>   verbs:
>   - patch
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - delete
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - '*'
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - pods/exec
>   - pods/portforward
>   verbs:
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - deployments
>   verbs:
>   - get
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: gitops-component-maintainer
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: pipeline-service-sre
> rules:
> - apiGroups:
>   - tekton.dev
>   resources:
>   - clustertasks
>   - conditions
>   - pipelineresources
>   - pipelineruns
>   - pipelines
>   - runs
>   - taskruns
>   - tasks
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - delete
>   - patch
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - clusterinterceptors
>   - clustertriggerbindings
>   - eventlisteners
>   - triggerbindings
>   - triggers
>   - triggertemplates
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - delete
>   - patch
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - delete
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: view-appstudio
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   - buildpipelineselectors
>   - componentdetectionqueries
>   - components
>   - enterprisecontractpolicies
>   - environments
>   - integrationtestscenarios
>   - promotionruns
>   - releaseplanadmissions
>   - releaseplans
>   - releases
>   - releasestrategies
>   - snapshotenvironmentbindings
>   - snapshots
>   - spiaccesschecks
>   - spiaccesstokenbindings
>   - spifilecontentrequests
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   - gitopsdeployments
>   - gitopsdeploymentsyncruns
>   - operations
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds
>   - dependencybuilds
>   - rebuiltartifacts
>   - systemconfigs
>   - tektonwrappers
>   - jbsconfigs
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: application-service-maintainers
>   namespace: application-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: johnmcollier
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: kim-tsao
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: yangcao77
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: component-maintainers
>   namespace: build-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: build-templates-maintainers
>   namespace: build-templates-e2e
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: psturc
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: build-templates-maintainers
>   namespace: build-templates
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: cluster-registration-service-component-maintainers
>   namespace: cluster-reg-config
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - kind: User
>   name: chrisahl
> - kind: User
>   name: leena-jawale
> - kind: User
>   name: itdove
> - kind: User
>   name: vidyanambiar
> - kind: User
>   name: tpouyer
> - kind: User
>   name: robinbobbit
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: dora-metrics-maintainers
>   namespace: dora-metrics
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: dora-metrics-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: rhopp
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: flacatus
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jkopriva
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sawood14012
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: albarbaro
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: gitops-service-maintainers-gitops-namespace-all-access
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-namespace-all-access
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jgwest
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: group-sync-operator-maintainers
>   namespace: group-sync-operator
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - kind: User
>   name: Michkov
> - kind: User
>   name: sbose78
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: pact-broker-maintainers
>   namespace: hac-pact-broker
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pact-broker-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Katka92
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: QE team
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: pact-broker-read
>   namespace: hac-pact-broker
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: view
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Katka92
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: QE team
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: integration-service-maintainers
>   namespace: integration-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: dirgim
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: internal-services
>   namespace: internal-services
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Release team
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: component-maintainers
>   namespace: jvm-build-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: stuartwdouglas
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: gabemontero
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: openshift-pipelines-maintainers
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Pipeline Service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: pipelines-as-code-maintainers
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Pipeline Service
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: chmouel
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: pipeline-service-admin
>   namespace: plnsvc-tests
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Pipeline Service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: release-service-maintainers
>   namespace: release-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Release team
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: spi-service-maintainers
>   namespace: spi-system
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - kind: User
>   name: skabashnyuk
> - kind: User
>   name: sbose78
> - kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: vault-admin
>   namespace: spi-vault
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: vault-admin
> subjects:
> - kind: User
>   name: skabashnyuk
> - kind: User
>   name: sparkoo
> - kind: User
>   name: metlos
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: component-maintainers
>   namespace: tekton-chains
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Pipeline Service
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jduimovich
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: tekton-results-maintainers
>   namespace: tekton-results
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Pipeline Service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: gitops-service-gitops-component-maintainers
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jgwest
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: cluster-registration-maintainer-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: cluster-registration-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: chrisahl
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: robinbobbit
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: everyone-view
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: view
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: stage
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: everyone-view-appstudio
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: view-appstudio
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: stage
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: internal-services
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: internal-service-request-role
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Release team
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: pipeline-service-sre
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-service-sre
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Pipeline Service
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: github-redhat-appstudio
>   namespace: group-sync-operator
> spec:
>   dataFrom:
>   - extract:
>       conversionStrategy: Default
>       decodingStrategy: None
>       key: staging/group-sync/github-redhat-appstudio
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: github-redhat-appstudio
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: github-redhat-appstudio-sre
>   namespace: group-sync-operator
> spec:
>   dataFrom:
>   - extract:
>       conversionStrategy: Default
>       decodingStrategy: None
>       key: staging/group-sync/github-redhat-appstudio-sre
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: github-redhat-appstudio-sre
> ---
> apiVersion: operators.coreos.com/v1
> kind: OperatorGroup
> metadata:
>   name: group-sync-operator
>   namespace: group-sync-operator
> spec:
>   targetNamespaces:
>   - group-sync-operator
> ---
> apiVersion: operators.coreos.com/v1alpha1
> kind: Subscription
> metadata:
>   name: group-sync-operator
>   namespace: group-sync-operator
> spec:
>   channel: alpha
>   installPlanApproval: Automatic
>   name: group-sync-operator
>   source: community-operators
>   sourceNamespace: openshift-marketplace
> ---
> apiVersion: redhatcop.redhat.io/v1alpha1
> kind: GroupSync
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: github-redhat-appstudio
>   namespace: group-sync-operator
> spec:
>   providers:
>   - github:
>       credentialsSecret:
>         name: github-redhat-appstudio
>         namespace: group-sync-operator
>       organization: redhat-appstudio
>     name: github
>   schedule: '*/15 * * * *'
> ---
> apiVersion: redhatcop.redhat.io/v1alpha1
> kind: GroupSync
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: github-redhat-appstudio-sre
>   namespace: group-sync-operator
> spec:
>   providers:
>   - github:
>       credentialsSecret:
>         name: github-redhat-appstudio-sre
>         namespace: group-sync-operator
>       organization: redhat-appstudio-sre
>     name: github
>   schedule: '*/15 * * * *' 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Development changes from c69b6b2 to 9eb0e40 on Thu Mar 9 10:16:15 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 2ab01f9..862da26 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -15,6 +15,7 @@ resources:
 - pact-broker.yaml
 - internal-services.yaml
 - pipeline-service-sre.yaml
+- sandbox-sre-admins.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/sandbox-sre-admins.yaml b/components/authentication/sandbox-sre-admins.yaml
new file mode 100644
index 0000000..febbfa0
--- /dev/null
+++ b/components/authentication/sandbox-sre-admins.yaml
@@ -0,0 +1,32 @@
+---
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: impersonate-groups-and-users
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - "groups"
+  - "users"
+  verbs:
+  - "impersonate"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: sandbox-sre-admins-can-impersonate
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: MatousJobanek
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: alexeykazakov
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: xcoulon
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: impersonate-groups-and-users 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Staging changes from 6129c46 to c69b6b2 on Thu Mar 9 10:06:21 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 682daee..d0308cd 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -188,7 +188,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/base/kustomization.yaml
 
-[[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/openshift-pipelines/pipeline-service*\")) |= \"git::https://github.com/${PIPELINE_PR_OWNER}/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=${PIPELINE_PR_SHA}\"" $ROOT/components/pipeline-service/development/kustomization.yaml
+[[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e ".resources[] |= sub(\"ref=[^ ]*\"; \"ref=${PIPELINE_PR_SHA}\") | .resources[] |= sub(\"openshift-pipelines\"; \"${PIPELINE_PR_OWNER}\")" $ROOT/components/pipeline-service/development/kustomization.yaml
 
 if ! git diff --exit-code --quiet; then
     git commit -a -m "Preview mode, do not merge into main" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Development changes from 6129c46 to c69b6b2 on Thu Mar 9 10:06:21 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 682daee..d0308cd 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -188,7 +188,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/base/kustomization.yaml
 
-[[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/openshift-pipelines/pipeline-service*\")) |= \"git::https://github.com/${PIPELINE_PR_OWNER}/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=${PIPELINE_PR_SHA}\"" $ROOT/components/pipeline-service/development/kustomization.yaml
+[[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e ".resources[] |= sub(\"ref=[^ ]*\"; \"ref=${PIPELINE_PR_SHA}\") | .resources[] |= sub(\"openshift-pipelines\"; \"${PIPELINE_PR_OWNER}\")" $ROOT/components/pipeline-service/development/kustomization.yaml
 
 if ! git diff --exit-code --quiet; then
     git commit -a -m "Preview mode, do not merge into main" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Staging changes from 698f27e to 6129c46 on Thu Mar 9 08:54:19 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml b/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml
index 7012547..85e3a95 100644
--- a/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml
+++ b/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml
@@ -9,6 +9,7 @@ spec:
   dataFrom:
   - extract:
       key: "" # will be added by the overlays
+      decodingStrategy: Base64
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Development changes from 698f27e to 6129c46 on Thu Mar 9 08:54:19 2023 with 0 lines changed </h3>  
 
<details> 
<summary>Git Diff</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml b/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml
index 7012547..85e3a95 100644
--- a/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml
+++ b/components/monitoring/prometheus/base/external-secrets/monitoring-prometheus-oauth-config.yaml
@@ -9,6 +9,7 @@ spec:
   dataFrom:
   - extract:
       key: "" # will be added by the overlays
+      decodingStrategy: Base64
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff</summary>  

``` 
 
```
 
</details> 
<br> 


</div>
