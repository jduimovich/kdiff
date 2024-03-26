# kustomize changes tracked by commits 
### This file generated at Tue Mar 26 16:03:36 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f204e798 to 0b126d19 on Tue Mar 26 14:50:36 2024 </h3>  
 
<details> 
<summary>Git Diff (178 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
new file mode 100644
index 00000000..0c903a1d
--- /dev/null
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -0,0 +1,49 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: keycloak
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/keycloak
+                environment: staging
+                clusterDir: base
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: keycloak-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: rhtap-auth
+        server: '{{server}}'
+      ignoreDifferences:
+        - group: keycloak.org
+          kind: KeycloakRealm
+          jsonPointers:
+            - /spec/realm/identityProviders/0/config/clientSecret
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/keycloak/kustomization.yaml b/argo-cd-apps/base/keycloak/kustomization.yaml
new file mode 100644
index 00000000..7cd7e84f
--- /dev/null
+++ b/argo-cd-apps/base/keycloak/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- keycloak.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 67c10427..efb16a30 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
+  - ../../base/keycloak
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -159,3 +160,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: ca-bundle
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index e34383c3..81978523 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
+  - ../../base/keycloak
 patchesStrategicMerge:
   - delete-applications.yaml
 patches:
diff --git a/components/keycloak/base/konflux-workspace-admins/kustomization.yaml b/components/keycloak/base/konflux-workspace-admins/kustomization.yaml
new file mode 100644
index 00000000..f40128e1
--- /dev/null
+++ b/components/keycloak/base/konflux-workspace-admins/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - rbac.yaml
+namespace: rhtap-auth
diff --git a/components/keycloak/base/konflux-workspace-admins/rbac.yaml b/components/keycloak/base/konflux-workspace-admins/rbac.yaml
new file mode 100644
index 00000000..166920d7
--- /dev/null
+++ b/components/keycloak/base/konflux-workspace-admins/rbac.yaml
@@ -0,0 +1,30 @@
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-manager
+rules:
+  - apiGroups:
+      - keycloak.org
+    resources:
+      - keycloakusers
+    verbs:
+      - get
+      - list
+      - update
+      - patch
+      - create
+      - delete
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: konflux-workspace-admins
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-workspace-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: workspaces-manager
diff --git a/components/keycloak/base/kustomization.yaml b/components/keycloak/base/kustomization.yaml
new file mode 100644
index 00000000..54b698fc
--- /dev/null
+++ b/components/keycloak/base/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - konflux-workspace-admins
+namespace: rhtap-auth
diff --git a/components/keycloak/production/base/kustomization.yaml b/components/keycloak/production/base/kustomization.yaml
new file mode 100644
index 00000000..7ec74567
--- /dev/null
+++ b/components/keycloak/production/base/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/staging/base/kustomization.yaml b/components/keycloak/staging/base/kustomization.yaml
new file mode 100644
index 00000000..7ec74567
--- /dev/null
+++ b/components/keycloak/staging/base/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/konflux-workspace-admins 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1385 lines)</summary>  

``` 
./commit-f204e798/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1,1383d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: integration-service
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.8.0
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: integrationtestscenarios.appstudio.redhat.com
< spec:
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
<   group: appstudio.redhat.com
<   names:
<     kind: IntegrationTestScenario
<     listKind: IntegrationTestScenarioList
<     plural: integrationtestscenarios
<     shortNames:
<     - its
<     singular: integrationtestscenario
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.application
<       name: Application
<       type: string
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
<     served: false
<     storage: false
<     subresources:
<       status: {}
<   - additionalPrinterColumns:
<     - jsonPath: .spec.application
<       name: Application
<       type: string
<     name: v1beta1
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
<     storage: true
<     subresources:
<       status: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: integration-service-controller-manager
<   namespace: integration-service
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: integration-service-metrics-reader
<   namespace: integration-service
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: integration-service-leader-election-role
<   namespace: integration-service
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - coordination.k8s.io
<   resources:
<   - leases
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: crd-manager-for-integration
< rules:
< - apiGroups:
<   - apiextensions.k8s.io
<   resources:
<   - customresourcedefinitions
<   verbs:
<   - patch
<   - get
<   - list
<   - create
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: delete-snapshots
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - delete
<   - deletecollection
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   creationTimestamp: null
<   name: integration-service-manager-role
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications/status
<   verbs:
<   - get
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components
<   verbs:
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - deploymenttargetclaims
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - deploymenttargetclasses
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - deploymenttargets
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - environments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - environments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - environments/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseplans
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseplans/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releases
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releases/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshotenvironmentbindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshotenvironmentbindings/status
<   verbs:
<   - get
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - pipelinesascode.tekton.dev
<   resources:
<   - repositories
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
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
<   - tekton.dev
<   resources:
<   - pipelineruns/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - tekton.dev
<   resources:
<   - taskruns/status
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: integration-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: integration-service-prometheus-viewer-role
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: integration-service-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: integration-service-snapshot-garbage-collector
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releases
<   - snapshotenvironmentbindings
<   verbs:
<   - get
<   - list
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - get
<   - list
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: integration-service-tekton-editor-role
< rules:
< - apiGroups:
<   - triggers.tekton.dev
<   resources:
<   - eventlisteners
<   - triggers
<   - triggertemplates
<   verbs:
<   - create
<   - update
<   - patch
<   - delete
<   - watch
<   - list
< - apiGroups:
<   - ""
<   resources:
<   - persistentvolumeclaims
<   - persistentvolumeclaims/status
<   verbs:
<   - get
<   - list
<   - create
<   - watch
< - apiGroups:
<   - route.openshift.io
<   resources:
<   - routes
<   verbs:
<   - get
<   - list
<   - create
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: grant-argocd
<   namespace: integration-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: admin
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-application-controller
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: integration-service-leader-election-rolebinding
<   namespace: integration-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: integration-service-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: integration-service-controller-manager
<   namespace: integration-service
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
<   kind: Group
<   name: konflux-integration
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: delete-snapshots
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: delete-snapshots
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: grant-argocd-crd-permissions-for-integration
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: crd-manager-for-integration
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-application-controller
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: integration-service-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: integration-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: integration-service-controller-manager
<   namespace: integration-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: integration-service-prometheus-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: integration-service-prometheus-viewer-role
< subjects:
< - kind: ServiceAccount
<   name: integration-service-metrics-reader
<   namespace: integration-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: integration-service-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: integration-service-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: integration-service-controller-manager
<   namespace: integration-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: integration-service-snapshot-garbage-collector
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: integration-service-snapshot-garbage-collector
< subjects:
< - kind: ServiceAccount
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: integration-service-tekton-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: integration-service-tekton-editor-role
< subjects:
< - kind: ServiceAccount
<   name: integration-service-controller-manager
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
<   CONSOLE_URL: https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace
<     }}/pipelinerun/{{ .PipelineRunName }}
< kind: ConfigMap
< metadata:
<   name: console-url-h2kgf6tmbb
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
<   controller_manager_config.yaml: |
<     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
<     kind: ControllerManagerConfig
<     health:
<       healthProbeBindAddress: :8081
<     metrics:
<       bindAddress: 127.0.0.1:8080
<     webhook:
<       port: 9443
<     leaderElection:
<       leaderElect: true
<       resourceName: f1944211.redhat.com
< kind: ConfigMap
< metadata:
<   name: integration-service-manager-config
<   namespace: integration-service
< ---
< apiVersion: v1
< kind: ConfigMap
< metadata:
<   labels:
<     config.openshift.io/inject-trusted-cabundle: "true"
<   name: trusted-ca-6ct58987ht
<   namespace: integration-service
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: integration-service-metrics-reader
<   name: integration-service-metrics-reader
<   namespace: integration-service
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: integration-service-controller-manager-metrics-service
<   namespace: integration-service
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: controller-manager
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
<   labels:
<     app.kubernetes.io/component: webhook
<     app.kubernetes.io/created-by: integration-service
<     app.kubernetes.io/instance: webhook-service
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: service
<     app.kubernetes.io/part-of: integration-service
<   name: integration-service-webhook-service
<   namespace: integration-service
< spec:
<   ports:
<   - port: 443
<     protocol: TCP
<     targetPort: 9443
<   selector:
<     control-plane: controller-manager
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: integration-service-controller-manager
<   namespace: integration-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: controller-manager
<   template:
<     metadata:
<       annotations:
<         kubectl.kubernetes.io/default-container: manager
<       labels:
<         control-plane: controller-manager
<     spec:
<       containers:
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
<         - --leader-elect
<         command:
<         - /manager
<         env:
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: console-url-h2kgf6tmbb
<               optional: true
<         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 9443
<           name: webhook-server
<           protocol: TCP
<         - containerPort: 8081
<           name: probes
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 600m
<             memory: 1200Mi
<           requests:
<             cpu: 200m
<             memory: 600Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /etc/pki/ca-trust/extracted/pem
<           name: trusted-ca
<           readOnly: true
<         - mountPath: /tmp/k8s-webhook-server/serving-certs
<           name: cert
<           readOnly: true
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --http2-disable
<         - --v=0
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: integration-service-controller-manager
<       terminationGracePeriodSeconds: 10
<       volumes:
<       - configMap:
<           items:
<           - key: ca-bundle.crt
<             path: tls-ca-bundle.pem
<           name: trusted-ca-6ct58987ht
<         name: trusted-ca
<       - name: cert
<         secret:
<           defaultMode: 420
<           secretName: webhook-server-cert
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< spec:
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /snapshotgc
<             - --zap-log-level=debug
<             - --pr-snapshots-to-keep=100
<             - --non-pr-snapshots-to-keep=700
<             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
<             imagePullPolicy: Always
<             name: test-gc
<             resources:
<               limits:
<                 cpu: 1000m
<                 memory: 500Mi
<               requests:
<                 cpu: 1000m
<                 memory: 500Mi
<             securityContext:
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<           restartPolicy: Never
<           serviceAccountName: integration-service-snapshot-garbage-collector
<   schedule: 0 5 * * *
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: pipelines-as-code-secret
<   namespace: integration-service
< spec:
<   dataFrom:
<   - extract:
<       key: production/pipeline-service/stone-prod-p01/github-app
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: pipelines-as-code-secret
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: integration-service
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: integration-service
<     control-plane: controller-manager
<   name: integration-service-controller-manager-metrics-monitor
<   namespace: integration-service
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: integration-service-metrics-reader
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: ValidatingWebhookConfiguration
< metadata:
<   annotations:
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: integration-service-validating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: integration-service-webhook-service
<       namespace: integration-service
<       path: /validate-appstudio-redhat-com-v1beta1-integrationtestscenario
<   failurePolicy: Fail
<   name: vintegrationtestscenario.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1beta1
<     operations:
<     - CREATE
<     - UPDATE
<     - DELETE
<     resources:
<     - integrationtestscenarios
<   sideEffects: None 
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
<h3>1: Staging changes from f204e798 to 0b126d19 on Tue Mar 26 14:50:36 2024 </h3>  
 
<details> 
<summary>Git Diff (178 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
new file mode 100644
index 00000000..0c903a1d
--- /dev/null
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -0,0 +1,49 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: keycloak
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/keycloak
+                environment: staging
+                clusterDir: base
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: keycloak-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: rhtap-auth
+        server: '{{server}}'
+      ignoreDifferences:
+        - group: keycloak.org
+          kind: KeycloakRealm
+          jsonPointers:
+            - /spec/realm/identityProviders/0/config/clientSecret
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/keycloak/kustomization.yaml b/argo-cd-apps/base/keycloak/kustomization.yaml
new file mode 100644
index 00000000..7cd7e84f
--- /dev/null
+++ b/argo-cd-apps/base/keycloak/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- keycloak.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 67c10427..efb16a30 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
+  - ../../base/keycloak
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -159,3 +160,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: ca-bundle
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index e34383c3..81978523 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
+  - ../../base/keycloak
 patchesStrategicMerge:
   - delete-applications.yaml
 patches:
diff --git a/components/keycloak/base/konflux-workspace-admins/kustomization.yaml b/components/keycloak/base/konflux-workspace-admins/kustomization.yaml
new file mode 100644
index 00000000..f40128e1
--- /dev/null
+++ b/components/keycloak/base/konflux-workspace-admins/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - rbac.yaml
+namespace: rhtap-auth
diff --git a/components/keycloak/base/konflux-workspace-admins/rbac.yaml b/components/keycloak/base/konflux-workspace-admins/rbac.yaml
new file mode 100644
index 00000000..166920d7
--- /dev/null
+++ b/components/keycloak/base/konflux-workspace-admins/rbac.yaml
@@ -0,0 +1,30 @@
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-manager
+rules:
+  - apiGroups:
+      - keycloak.org
+    resources:
+      - keycloakusers
+    verbs:
+      - get
+      - list
+      - update
+      - patch
+      - create
+      - delete
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: konflux-workspace-admins
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-workspace-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: workspaces-manager
diff --git a/components/keycloak/base/kustomization.yaml b/components/keycloak/base/kustomization.yaml
new file mode 100644
index 00000000..54b698fc
--- /dev/null
+++ b/components/keycloak/base/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - konflux-workspace-admins
+namespace: rhtap-auth
diff --git a/components/keycloak/production/base/kustomization.yaml b/components/keycloak/production/base/kustomization.yaml
new file mode 100644
index 00000000..7ec74567
--- /dev/null
+++ b/components/keycloak/production/base/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/staging/base/kustomization.yaml b/components/keycloak/staging/base/kustomization.yaml
new file mode 100644
index 00000000..7ec74567
--- /dev/null
+++ b/components/keycloak/staging/base/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/konflux-workspace-admins 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from f204e798 to 0b126d19 on Tue Mar 26 14:50:36 2024 </h3>  
 
<details> 
<summary>Git Diff (178 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
new file mode 100644
index 00000000..0c903a1d
--- /dev/null
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -0,0 +1,49 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: keycloak
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/keycloak
+                environment: staging
+                clusterDir: base
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: keycloak-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: rhtap-auth
+        server: '{{server}}'
+      ignoreDifferences:
+        - group: keycloak.org
+          kind: KeycloakRealm
+          jsonPointers:
+            - /spec/realm/identityProviders/0/config/clientSecret
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/keycloak/kustomization.yaml b/argo-cd-apps/base/keycloak/kustomization.yaml
new file mode 100644
index 00000000..7cd7e84f
--- /dev/null
+++ b/argo-cd-apps/base/keycloak/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- keycloak.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 67c10427..efb16a30 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
+  - ../../base/keycloak
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -159,3 +160,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: ca-bundle
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: keycloak
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index e34383c3..81978523 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
+  - ../../base/keycloak
 patchesStrategicMerge:
   - delete-applications.yaml
 patches:
diff --git a/components/keycloak/base/konflux-workspace-admins/kustomization.yaml b/components/keycloak/base/konflux-workspace-admins/kustomization.yaml
new file mode 100644
index 00000000..f40128e1
--- /dev/null
+++ b/components/keycloak/base/konflux-workspace-admins/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - rbac.yaml
+namespace: rhtap-auth
diff --git a/components/keycloak/base/konflux-workspace-admins/rbac.yaml b/components/keycloak/base/konflux-workspace-admins/rbac.yaml
new file mode 100644
index 00000000..166920d7
--- /dev/null
+++ b/components/keycloak/base/konflux-workspace-admins/rbac.yaml
@@ -0,0 +1,30 @@
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-manager
+rules:
+  - apiGroups:
+      - keycloak.org
+    resources:
+      - keycloakusers
+    verbs:
+      - get
+      - list
+      - update
+      - patch
+      - create
+      - delete
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: konflux-workspace-admins
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-workspace-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: workspaces-manager
diff --git a/components/keycloak/base/kustomization.yaml b/components/keycloak/base/kustomization.yaml
new file mode 100644
index 00000000..54b698fc
--- /dev/null
+++ b/components/keycloak/base/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - konflux-workspace-admins
+namespace: rhtap-auth
diff --git a/components/keycloak/production/base/kustomization.yaml b/components/keycloak/production/base/kustomization.yaml
new file mode 100644
index 00000000..7ec74567
--- /dev/null
+++ b/components/keycloak/production/base/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/konflux-workspace-admins
diff --git a/components/keycloak/staging/base/kustomization.yaml b/components/keycloak/staging/base/kustomization.yaml
new file mode 100644
index 00000000..7ec74567
--- /dev/null
+++ b/components/keycloak/staging/base/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/konflux-workspace-admins 
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
<h3>2: Production changes from 6f580f3c to f204e798 on Tue Mar 26 03:06:28 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3bdb4f2c..374ccc31 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index f72d51c9..97a486f7 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7d4c0cc0..c7b081e1 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 31df4c4b..576f9995 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 3be8a938..3571ffd0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 56053a12..f6c267ad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1385 lines)</summary>  

``` 
./commit-6f580f3c/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
0a1,1383
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>     service.beta.openshift.io/inject-cabundle: "true"
>   creationTimestamp: null
>   name: integrationtestscenarios.appstudio.redhat.com
> spec:
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: integration-service-webhook-service
>           namespace: integration-service
>           path: /convert
>       conversionReviewVersions:
>       - v1alpha1
>       - v1beta1
>   group: appstudio.redhat.com
>   names:
>     kind: IntegrationTestScenario
>     listKind: IntegrationTestScenarioList
>     plural: integrationtestscenarios
>     shortNames:
>     - its
>     singular: integrationtestscenario
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     deprecated: true
>     deprecationWarning: The v1alpha1 version is deprecated and will be automatically
>       migrated to v1beta1
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: IntegrationTestScenario is the Schema for the integrationtestscenarios
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
>             description: IntegrationTestScenarioSpec defines the desired state of
>               IntegrationScenario
>             properties:
>               application:
>                 description: Application that's associated with the IntegrationTestScenario
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               bundle:
>                 description: Tekton Bundle where to find the pipeline
>                 type: string
>               contexts:
>                 description: Contexts where this IntegrationTestScenario can be applied
>                 items:
>                   description: TestContext contains the name and values of a Test
>                     context
>                   properties:
>                     description:
>                       type: string
>                     name:
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment that will be utilized by the test pipeline
>                 properties:
>                   configuration:
>                     description: EnvironmentConfiguration contains Environment-specific
>                       configurations details, to be used when generating Component/Application
>                       GitOps repository resources.
>                     properties:
>                       env:
>                         description: Env is an array of standard environment vairables
>                         items:
>                           description: EnvVarPair describes environment variables
>                             to use for the component
>                           properties:
>                             name:
>                               description: Name is the environment variable name
>                               type: string
>                             value:
>                               description: Value is the environment variable value
>                               type: string
>                           required:
>                           - name
>                           - value
>                           type: object
>                         type: array
>                       target:
>                         description: Target is used to reference a DeploymentTargetClaim
>                           for a target Environment. The Environment controller uses
>                           the referenced DeploymentTargetClaim to access its bounded
>                           DeploymentTarget with cluster credential secret.
>                         properties:
>                           deploymentTargetClaim:
>                             description: DeploymentTargetClaimConfig specifies the
>                               DeploymentTargetClaim details for a given Environment.
>                             properties:
>                               claimName:
>                                 type: string
>                             required:
>                             - claimName
>                             type: object
>                         required:
>                         - deploymentTargetClaim
>                         type: object
>                     type: object
>                   name:
>                     type: string
>                   type:
>                     description: 'DEPRECATED: EnvironmentType should no longer be
>                       used, and has no replacement. - It''s original purpose was to
>                       indicate whether an environment is POC/Non-POC, but these data
>                       were ultimately not required.'
>                     type: string
>                 required:
>                 - name
>                 - type
>                 type: object
>               params:
>                 description: Params to pass to the pipeline
>                 items:
>                   description: PipelineParameter contains the name and values of a
>                     Tekton Pipeline parameter
>                   properties:
>                     name:
>                       type: string
>                     value:
>                       type: string
>                     values:
>                       items:
>                         type: string
>                       type: array
>                   required:
>                   - name
>                   type: object
>                 type: array
>               pipeline:
>                 description: Release Tekton Pipeline to execute
>                 type: string
>             required:
>             - application
>             - bundle
>             - pipeline
>             type: object
>           status:
>             description: IntegrationTestScenarioStatus defines the observed state
>               of IntegrationTestScenario
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
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
>             required:
>             - conditions
>             type: object
>         type: object
>     served: false
>     storage: false
>     subresources:
>       status: {}
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     name: v1beta1
>     schema:
>       openAPIV3Schema:
>         description: IntegrationTestScenario is the Schema for the integrationtestscenarios
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
>             description: IntegrationTestScenarioSpec defines the desired state of
>               IntegrationScenario
>             properties:
>               application:
>                 description: Application that's associated with the IntegrationTestScenario
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               contexts:
>                 description: Contexts where this IntegrationTestScenario can be applied
>                 items:
>                   description: TestContext contains the name and values of a Test
>                     context
>                   properties:
>                     description:
>                       type: string
>                     name:
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment that will be utilized by the test pipeline
>                 properties:
>                   configuration:
>                     description: EnvironmentConfiguration contains Environment-specific
>                       configurations details, to be used when generating Component/Application
>                       GitOps repository resources.
>                     properties:
>                       env:
>                         description: Env is an array of standard environment vairables
>                         items:
>                           description: EnvVarPair describes environment variables
>                             to use for the component
>                           properties:
>                             name:
>                               description: Name is the environment variable name
>                               type: string
>                             value:
>                               description: Value is the environment variable value
>                               type: string
>                           required:
>                           - name
>                           - value
>                           type: object
>                         type: array
>                       target:
>                         description: Target is used to reference a DeploymentTargetClaim
>                           for a target Environment. The Environment controller uses
>                           the referenced DeploymentTargetClaim to access its bounded
>                           DeploymentTarget with cluster credential secret.
>                         properties:
>                           deploymentTargetClaim:
>                             description: DeploymentTargetClaimConfig specifies the
>                               DeploymentTargetClaim details for a given Environment.
>                             properties:
>                               claimName:
>                                 type: string
>                             required:
>                             - claimName
>                             type: object
>                         required:
>                         - deploymentTargetClaim
>                         type: object
>                     type: object
>                   name:
>                     type: string
>                   type:
>                     description: 'DEPRECATED: EnvironmentType should no longer be
>                       used, and has no replacement. - It''s original purpose was to
>                       indicate whether an environment is POC/Non-POC, but these data
>                       were ultimately not required.'
>                     type: string
>                 required:
>                 - name
>                 - type
>                 type: object
>               params:
>                 description: Params to pass to the pipeline
>                 items:
>                   description: PipelineParameter contains the name and values of a
>                     Tekton Pipeline parameter
>                   properties:
>                     name:
>                       type: string
>                     value:
>                       type: string
>                     values:
>                       items:
>                         type: string
>                       type: array
>                   required:
>                   - name
>                   type: object
>                 type: array
>               resolverRef:
>                 description: Tekton Resolver where to store the Tekton resolverRef
>                   trigger Tekton pipeline used to refer to a Pipeline or Task in a
>                   remote location like a git repo.
>                 properties:
>                   params:
>                     description: Params contains the parameters used to identify the
>                       referenced Tekton resource. Example entries might include "repo"
>                       or "path" but the set of params ultimately depends on the chosen
>                       resolver.
>                     items:
>                       description: ResolverParameter contains the name and values
>                         used to identify the referenced Tekton resource
>                       properties:
>                         name:
>                           type: string
>                         value:
>                           type: string
>                       required:
>                       - name
>                       - value
>                       type: object
>                     type: array
>                   resolver:
>                     description: Resolver is the name of the resolver that should
>                       perform resolution of the referenced Tekton resource, such as
>                       "git" or "bundle"..
>                     type: string
>                 required:
>                 - params
>                 - resolver
>                 type: object
>             required:
>             - application
>             - resolverRef
>             type: object
>           status:
>             description: IntegrationTestScenarioStatus defines the observed state
>               of IntegrationTestScenario
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
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
>             required:
>             - conditions
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
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: integration-service-metrics-reader
>   namespace: integration-service
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: integration-service-snapshot-garbage-collector
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: integration-service-leader-election-role
>   namespace: integration-service
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
>   name: crd-manager-for-integration
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
> kind: ClusterRole
> metadata:
>   name: delete-snapshots
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - delete
>   - deletecollection
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: integration-service-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
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
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
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
>   - deploymenttargetclaims
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
>   - deploymenttargetclasses
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargets
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
>   - integrationtestscenarios
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
>   - integrationtestscenarios/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
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
>   - releases/status
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
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
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
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-prometheus-viewer-role
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-proxy-role
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
>   name: integration-service-snapshot-garbage-collector
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   - snapshotenvironmentbindings
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-tekton-editor-role
> rules:
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggers
>   - triggertemplates
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
>   - watch
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: integration-service
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
> kind: RoleBinding
> metadata:
>   name: integration-service-leader-election-rolebinding
>   namespace: integration-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: integration-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
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
>   kind: Group
>   name: konflux-integration
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: delete-snapshots
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: delete-snapshots
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-integration
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-integration
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-integration
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-prometheus-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-prometheus-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-metrics-reader
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshot-garbage-collector
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshot-garbage-collector
> subjects:
> - kind: ServiceAccount
>   name: integration-service-snapshot-garbage-collector
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-tekton-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-tekton-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: v1
> data:
>   CONSOLE_URL: https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace
>     }}/pipelinerun/{{ .PipelineRunName }}
> kind: ConfigMap
> metadata:
>   name: console-url-h2kgf6tmbb
>   namespace: integration-service
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
>       resourceName: f1944211.redhat.com
> kind: ConfigMap
> metadata:
>   name: integration-service-manager-config
>   namespace: integration-service
> ---
> apiVersion: v1
> kind: ConfigMap
> metadata:
>   labels:
>     config.openshift.io/inject-trusted-cabundle: "true"
>   name: trusted-ca-6ct58987ht
>   namespace: integration-service
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: integration-service-metrics-reader
>   name: integration-service-metrics-reader
>   namespace: integration-service
> type: kubernetes.io/service-account-token
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-controller-manager-metrics-service
>   namespace: integration-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   labels:
>     app.kubernetes.io/component: webhook
>     app.kubernetes.io/created-by: integration-service
>     app.kubernetes.io/instance: webhook-service
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: service
>     app.kubernetes.io/part-of: integration-service
>   name: integration-service-webhook-service
>   namespace: integration-service
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-controller-manager
>   namespace: integration-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         env:
>         - name: CONSOLE_URL
>           valueFrom:
>             configMapKeyRef:
>               key: CONSOLE_URL
>               name: console-url-h2kgf6tmbb
>               optional: true
>         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         - containerPort: 8081
>           name: probes
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 600m
>             memory: 1200Mi
>           requests:
>             cpu: 200m
>             memory: 600Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /etc/pki/ca-trust/extracted/pem
>           name: trusted-ca
>           readOnly: true
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --http2-disable
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: integration-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - configMap:
>           items:
>           - key: ca-bundle.crt
>             path: tls-ca-bundle.pem
>           name: trusted-ca-6ct58987ht
>         name: trusted-ca
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   name: integration-service-snapshot-garbage-collector
>   namespace: integration-service
> spec:
>   jobTemplate:
>     spec:
>       template:
>         spec:
>           containers:
>           - command:
>             - /snapshotgc
>             - --zap-log-level=debug
>             - --pr-snapshots-to-keep=100
>             - --non-pr-snapshots-to-keep=700
>             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
>             imagePullPolicy: Always
>             name: test-gc
>             resources:
>               limits:
>                 cpu: 1000m
>                 memory: 500Mi
>               requests:
>                 cpu: 1000m
>                 memory: 500Mi
>             securityContext:
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>           restartPolicy: Never
>           serviceAccountName: integration-service-snapshot-garbage-collector
>   schedule: 0 5 * * *
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: pipelines-as-code-secret
>   namespace: integration-service
> spec:
>   dataFrom:
>   - extract:
>       key: production/pipeline-service/stone-prod-p01/github-app
>   refreshInterval: 5m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: pipelines-as-code-secret
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   labels:
>     app.kubernetes.io/component: metrics
>     app.kubernetes.io/created-by: integration-service
>     app.kubernetes.io/instance: controller-manager-metrics-monitor
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: servicemonitor
>     app.kubernetes.io/part-of: integration-service
>     control-plane: controller-manager
>   name: integration-service-controller-manager-metrics-monitor
>   namespace: integration-service
> spec:
>   endpoints:
>   - bearerTokenSecret:
>       key: token
>       name: integration-service-metrics-reader
>     path: /metrics
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: controller-manager
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   creationTimestamp: null
>   name: integration-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: integration-service-webhook-service
>       namespace: integration-service
>       path: /validate-appstudio-redhat-com-v1beta1-integrationtestscenario
>   failurePolicy: Fail
>   name: vintegrationtestscenario.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1beta1
>     operations:
>     - CREATE
>     - UPDATE
>     - DELETE
>     resources:
>     - integrationtestscenarios
>   sideEffects: None 
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
<h3>2: Staging changes from 6f580f3c to f204e798 on Tue Mar 26 03:06:28 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3bdb4f2c..374ccc31 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index f72d51c9..97a486f7 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7d4c0cc0..c7b081e1 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 31df4c4b..576f9995 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 3be8a938..3571ffd0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 56053a12..f6c267ad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-6f580f3c/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1545c1545
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
2041c2041
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
./commit-6f580f3c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1545c1545
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
2041c2041
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
./commit-6f580f3c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1545c1545
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
2041c2041
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6f580f3c to f204e798 on Tue Mar 26 03:06:28 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3bdb4f2c..374ccc31 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index f72d51c9..97a486f7 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7d4c0cc0..c7b081e1 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 31df4c4b..576f9995 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 3be8a938..3571ffd0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 56053a12..f6c267ad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1542,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
@@ -2038,7 +2038,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6f580f3c/development/components/pipeline-service/development/kustomize.out.yaml
1614c1614
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
2141c2141
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d 
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
<h3>3: Production changes from da26be46 to 6f580f3c on Mon Mar 25 18:48:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 67c6eb5f..102ab5db 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 434b4b78..cb424f87 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 5a5229a8..d7e5efa3 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b3fb198b..9de01026 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-da26be46/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b
---
>         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59 
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
<h3>3: Staging changes from da26be46 to 6f580f3c on Mon Mar 25 18:48:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 67c6eb5f..102ab5db 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 434b4b78..cb424f87 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 5a5229a8..d7e5efa3 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b3fb198b..9de01026 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-da26be46/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b
---
>         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from da26be46 to 6f580f3c on Mon Mar 25 18:48:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 67c6eb5f..102ab5db 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 434b4b78..cb424f87 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
+    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 5a5229a8..d7e5efa3 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b3fb198b..9de01026 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-da26be46/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b
---
>         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59 
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
<h3>4: Production changes from 5a44bb88 to da26be46 on Mon Mar 25 14:30:56 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6277c0ab..b6357b17 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1670c08c..a5f50390 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
+    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
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
<h3>4: Staging changes from 5a44bb88 to da26be46 on Mon Mar 25 14:30:56 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6277c0ab..b6357b17 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1670c08c..a5f50390 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
+    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 5a44bb88 to da26be46 on Mon Mar 25 14:30:56 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6277c0ab..b6357b17 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 1670c08c..a5f50390 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
+    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-5a44bb88/development/components/release/development/kustomize.out.yaml
613a614,637
>               deployment:
>                 description: Deployment contains information about the deployment
>                 properties:
>                   completionTime:
>                     description: CompletionTime is the time when the Release deployment
>                       was completed
>                     format: date-time
>                     type: string
>                   environment:
>                     description: Environment is the environment where the Release
>                       will be deployed to
>                     type: string
>                   snapshotEnvironmentBinding:
>                     description: SnapshotEnvironmentBinding contains the namespaced
>                       name of the SnapshotEnvironmentBinding created as part of this
>                       release
>                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                     type: string
>                   startTime:
>                     description: StartTime is the time when the Release deployment
>                       started
>                     format: date-time
>                     type: string
>                 type: object
1766c1790
<         image: quay.io/redhat-appstudio/release-service:5466ccb1bf2680804599c7f2d7635f04492f0fd0
---
>         image: quay.io/redhat-appstudio/release-service:2518642f06f601d05935c4f6f152a04c695e5467 
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
