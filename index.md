# kustomize changes tracked by commits 
### This file generated at Tue Aug 27 04:03:20 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from cbf90844 to d2317e06 on Mon Aug 26 23:24:54 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 890d901f..8f5e6d2b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=735da595a594c672ab85075e7b7af998d7aa60fe
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 4ebad13c..d1947b8f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=735da595a594c672ab85075e7b7af998d7aa60fe
+  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 735da595a594c672ab85075e7b7af998d7aa60fe
+    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from cbf90844 to d2317e06 on Mon Aug 26 23:24:54 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 890d901f..8f5e6d2b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=735da595a594c672ab85075e7b7af998d7aa60fe
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 4ebad13c..d1947b8f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=735da595a594c672ab85075e7b7af998d7aa60fe
+  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 735da595a594c672ab85075e7b7af998d7aa60fe
+    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from cbf90844 to d2317e06 on Mon Aug 26 23:24:54 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 890d901f..8f5e6d2b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=735da595a594c672ab85075e7b7af998d7aa60fe
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 4ebad13c..d1947b8f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=735da595a594c672ab85075e7b7af998d7aa60fe
+  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 735da595a594c672ab85075e7b7af998d7aa60fe
+    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-cbf90844/development/components/release/development/kustomize.out.yaml
1861c1861
<         image: quay.io/konflux-ci/release-service:64bd76e4fce9e30164e65f4385c1ae094417b91d
---
>         image: quay.io/konflux-ci/release-service:735da595a594c672ab85075e7b7af998d7aa60fe 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 84d31c3e to cbf90844 on Mon Aug 26 19:36:40 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index fbac6307..33863d61 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -63,6 +63,30 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - hypershift.openshift.io
+  resources:
+  - awsendpointservices
+  - certificatesigningrequestapprovals
+  - hostedclusters
+  - hostedcontrolplanes
+  - nodepools
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplates
+  - clustertemplateinstances
+  - clustertemplatequotas
+  - clustertemplatesetups
+  - configs
+  verbs:
+  - get
+  - list
+  - watch
 ---
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5287 lines)</summary>  

``` 
./commit-84d31c3e/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
470,493d469
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - awsendpointservices
<   - certificatesigningrequestapprovals
<   - hostedclusters
<   - hostedcontrolplanes
<   - nodepools
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   - clustertemplateinstances
<   - clustertemplatequotas
<   - clustertemplatesetups
<   - configs
<   verbs:
<   - get
<   - list
<   - watch
./commit-84d31c3e/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
470,493d469
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - awsendpointservices
<   - certificatesigningrequestapprovals
<   - hostedclusters
<   - hostedcontrolplanes
<   - nodepools
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   - clustertemplateinstances
<   - clustertemplatequotas
<   - clustertemplatesetups
<   - configs
<   verbs:
<   - get
<   - list
<   - watch
./commit-84d31c3e/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml
1,3652d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-argocd
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.12.1
<   name: gitopsdeploymentmanagedenvironments.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeploymentManagedEnvironment
<     listKind: GitOpsDeploymentManagedEnvironmentList
<     plural: gitopsdeploymentmanagedenvironments
<     singular: gitopsdeploymentmanagedenvironment
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeploymentManagedEnvironment is the Schema for the gitopsdeploymentmanagedenvironments
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
<             description: The GitOpsDeploymentManagedEnvironment CR describes a remote
<               cluster which the GitOps Service will deploy to, via Argo CD. This resource
<               references a Secret resource, of type managed-gitops.redhat.com/managed-environment,
<               that contains the cluster credentials. The Secret should contain credentials
<               to a ServiceAccount/User account on the target cluster. This is referred
<               to as the Argo CD 'ServiceAccount' below.
<             properties:
<               allowInsecureSkipTLSVerify:
<                 description: 'AllowInsecureSkipTLSVerify controls whether Argo CD
<                   will accept a Kubernetes API URL with untrusted-TLS certificate.
<                   Optional: If true, the GitOps Service will allow Argo CD to connect
<                   to the specified cluster even if it is using an invalid or self-signed
<                   TLS certificate. Defaults to false.'
<                 type: boolean
<               apiURL:
<                 description: APIURL is the URL of the cluster to connect to
<                 type: string
<               clusterResources:
<                 description: "ClusterResources is used in conjuction with the Namespace
<                   field. If the .spec.namespaces field is non-empty, this field will
<                   be used to determine whether Argo CD should attempt to manage cluster-scoped
<                   resources. - If .spec.namespaces field is empty, this field is ignored.
<                   - If you are familiar with Argo CD: this field is equivalent to
<                   the field of the same name in the Argo CD Cluster Secret. \n Optional,
<                   default to false."
<                 type: boolean
<               createNewServiceAccount:
<                 description: "CreateNewServiceAccount controls whether Argo CD will
<                   use the ServiceAccount provided by the user in the Secret, or if
<                   a new ServiceAccount should be created. \n Optional, default to
<                   false. \n - If true, the GitOps Service will automatically create
<                   a ServiceAccount/ClusterRole/ClusterRoleBinding on the target cluster,
<                   using the credentials provided by the user in the secret. - Argo
<                   CD will then be configured to deploy with that new ServiceAccount.
<                   \n - Default: If false, it is assumed that the credentials provided
<                   by the user in the Secret are for a ServiceAccount on the cluster,
<                   and Argo CD will be configred to use the ServiceAccount referenced
<                   by the Secret of the user. No new ServiceAccount will be created.
<                   - This should be used, for example, when the ServiceAccount Argo
<                   CD does not have full cluster access (*/*/* at cluster scope)"
<                 type: boolean
<               credentialsSecret:
<                 description: ClusterCredentialsSecret is a reference to a Secret that
<                   contains cluster connection details. The cluster details should
<                   be in the form of a kubeconfig file.
<                 type: string
<               namespaces:
<                 description: "Namespaces allows one to indicate which Namespaces the
<                   Secret's ServiceAccount has access to. \n Optional, defaults to
<                   empty. If empty, it is assumed that the ServiceAccount has access
<                   to all Namespaces. \n The ServiceAccount that GitOps Service/Argo
<                   CD uses to deploy may not have access to all of the Namespaces on
<                   a cluster. If not specified, it is assumed that the Argo CD ServiceAccount
<                   has read/write at cluster-scope. - If you are familiar with Argo
<                   CD: this field is equivalent to the field of the same name in the
<                   Argo CD Cluster Secret."
<                 items:
<                   type: string
<                 type: array
<             required:
<             - allowInsecureSkipTLSVerify
<             - apiURL
<             - credentialsSecret
<             type: object
<           status:
<             description: GitOpsDeploymentManagedEnvironmentStatus defines the observed
<               state of GitOpsDeploymentManagedEnvironment
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
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.12.1
<   name: gitopsdeploymentrepositorycredentials.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeploymentRepositoryCredential
<     listKind: GitOpsDeploymentRepositoryCredentialList
<     plural: gitopsdeploymentrepositorycredentials
<     singular: gitopsdeploymentrepositorycredential
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeploymentRepositoryCredential is the Schema for the gitopsdeploymentrepositorycredentials
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
<             description: GitOpsDeploymentRepositoryCredentialSpec defines the desired
<               state of GitOpsDeploymentRepositoryCredential
<             properties:
<               repository:
<                 description: Repository (HTTPS url, or SSH string) for accessing the
<                   Git repo Required field As of this writing (Mar 2022), we only support
<                   HTTPS URL
<                 type: string
<               secret:
<                 description: Reference to a K8s Secret in the namespace that contains
<                   repository credentials (Git username/password, as of this writing)
<                   Required field
<                 type: string
<             required:
<             - repository
<             - secret
<             type: object
<           status:
<             description: GitOpsDeploymentRepositoryCredentialStatus defines the observed
<               state of GitOpsDeploymentRepositoryCredential
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
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.12.1
<   name: gitopsdeployments.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeployment
<     listKind: GitOpsDeploymentList
<     plural: gitopsdeployments
<     singular: gitopsdeployment
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .status.sync.status
<       name: Sync Status
<       type: string
<     - jsonPath: .status.health.status
<       name: Health Status
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeployment is the Schema for the gitopsdeployments API
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
<             description: GitOpsDeploymentSpec defines the desired state of GitOpsDeployment
<             properties:
<               destination:
<                 description: 'Destination is a reference to a target namespace/cluster
<                   to deploy to. This field may be empty: if it is empty, it is assumed
<                   that the destination is the same namespace as the GitOpsDeployment
<                   CR.'
<                 properties:
<                   environment:
<                     type: string
<                   namespace:
<                     description: The namespace will only be set for namespace-scoped
<                       resources that have not set a value for .metadata.namespace
<                     type: string
<                 type: object
<               source:
<                 description: ApplicationSource contains all required information about
<                   the source of an application
<                 properties:
<                   path:
<                     description: Path is a directory path within the Git repository,
<                       and is only valid for applications sourced from Git.
<                     type: string
<                   repoURL:
<                     description: RepoURL is the URL to the repository (Git or Helm)
<                       that contains the application manifests
<                     type: string
<                   targetRevision:
<                     description: TargetRevision defines the revision of the source
<                       to sync the application to. In case of Git, this can be commit,
<                       tag, or branch. If omitted, will equal to HEAD. In case of Helm,
<                       this is a semver tag for the Chart's version.
<                     type: string
<                 required:
<                 - path
<                 - repoURL
<                 type: object
<               syncPolicy:
<                 description: SyncPolicy controls when and how a sync will be performed.
<                 properties:
<                   syncOptions:
<                     description: Options allow you to specify whole app sync-options.
<                       This option may be empty, if and when it is empty it is considered
<                       that there are no SyncOptions present.
<                     items:
<                       type: string
<                     type: array
<                 type: object
<               type:
<                 description: "Two possible values: - Automated: whenever a new commit
<                   occurs in the GitOps repository, or the Argo CD Application is out
<                   of sync, Argo CD should be told to (re)synchronize. - Manual: Argo
<                   CD should never be told to resynchronize. Instead, synchronize operations
<                   will be triggered via GitOpsDeploymentSyncRun operations only. -
<                   See `GitOpsDeploymentSpecType*` \n Note: This is somewhat of a placeholder
<                   for more advanced logic that can be implemented in the future. For
<                   an example of this type of logic, see the 'syncPolicy' field of
<                   Argo CD Application."
<                 type: string
<             required:
<             - source
<             - type
<             type: object
<           status:
<             description: GitOpsDeploymentStatus defines the observed state of GitOpsDeployment
<             properties:
<               conditions:
<                 items:
<                   description: GitOpsDeploymentCondition contains details about an
<                     GitOpsDeployment condition, which is usually an error or warning
<                   properties:
<                     lastProbeTime:
<                       description: LastProbeTime is the last time the condition was
<                         observed.
<                       format: date-time
<                       type: string
<                     lastTransitionTime:
<                       description: LastTransitionTime is the last time the condition
<                         transitioned from one status to another.
<                       format: date-time
<                       type: string
<                     message:
<                       description: Message contains human-readable message indicating
<                         details about the last condition.
<                       type: string
<                     reason:
<                       description: Reason is a unique, one-word, CamelCase reason
<                         for the condition's last transition.
<                       type: string
<                     status:
<                       description: Status is the status of the condition.
<                       type: string
<                     type:
<                       description: Type is a GitOpsDeployment condition type
<                       type: string
<                   required:
<                   - status
<                   - type
<                   type: object
<                 type: array
<               health:
<                 description: Health contains information about the application's current
<                   health status
<                 properties:
<                   message:
<                     description: Message is a human-readable informational message
<                       describing the health status
<                     type: string
<                   status:
<                     description: Status holds the status code of the application or
<                       resource
<                     type: string
<                 type: object
<               operationState:
<                 description: OperationState contains information about any ongoing
<                   operations, such as a sync
<                 properties:
<                   finishedAt:
<                     description: FinishedAt contains time of operation completion
<                     format: date-time
<                     type: string
<                   message:
<                     description: Message holds any pertinent messages when attempting
<                       to perform operation (typically errors).
<                     type: string
<                   operation:
<                     description: Operation is the original requested operation
<                     properties:
<                       info:
<                         description: Info is a list of informational items for this
<                           operation
<                         items:
<                           properties:
<                             name:
<                               type: string
<                             value:
<                               type: string
<                           required:
<                           - name
<                           - value
<                           type: object
<                         type: array
<                       initiatedBy:
<                         description: InitiatedBy contains information about who initiated
<                           the operations
<                         properties:
<                           automated:
<                             description: Automated is set to true if operation was
<                               initiated automatically by the application controller.
<                             type: boolean
<                           username:
<                             description: Username contains the name of a user who
<                               started operation
<                             type: string
<                         type: object
<                       retry:
<                         description: Retry controls the strategy to apply if a sync
<                           fails
<                         properties:
<                           backoff:
<                             description: Backoff controls how to backoff on subsequent
<                               retries of failed syncs
<                             properties:
<                               duration:
<                                 description: Duration is the amount to back off. Default
<                                   unit is seconds, but could also be a duration (e.g.
<                                   "2m", "1h")
<                                 type: string
<                               factor:
<                                 description: Factor is a factor to multiply the base
<                                   duration after each failed retry
<                                 format: int64
<                                 type: integer
<                               maxDuration:
<                                 description: MaxDuration is the maximum amount of
<                                   time allowed for the backoff strategy
<                                 type: string
<                             type: object
<                           limit:
<                             description: Limit is the maximum number of attempts for
<                               retrying a failed sync. If set to 0, no retries will
<                               be performed.
<                             format: int64
<                             type: integer
<                         type: object
<                       sync:
<                         description: Sync contains parameters for the operation
<                         properties:
<                           dryRun:
<                             description: DryRun specifies to perform a `kubectl apply
<                               --dry-run` without actually performing the sync
<                             type: boolean
<                           manifests:
<                             description: Manifests is an optional field that overrides
<                               sync source with a local directory for development
<                             items:
<                               type: string
<                             type: array
<                           prune:
<                             description: Prune specifies to delete resources from
<                               the cluster that are no longer tracked in git
<                             type: boolean
<                           resources:
<                             description: Resources describes which resources shall
<                               be part of the sync
<                             items:
<                               description: SyncOperationResource contains resources
<                                 to sync.
<                               properties:
<                                 group:
<                                   type: string
<                                 kind:
<                                   type: string
<                                 name:
<                                   type: string
<                                 namespace:
<                                   type: string
<                               required:
<                               - kind
<                               - name
<                               type: object
<                             type: array
<                           revision:
<                             description: Revision is the revision (Git) or chart version
<                               (Helm) which to sync the application to If omitted,
<                               will use the revision specified in app spec.
<                             type: string
<                           revisions:
<                             description: Revisions is the list of revision (Git) or
<                               chart version (Helm) which to sync each source in sources
<                               field for the application to If omitted, will use the
<                               revision specified in app spec.
<                             items:
<                               type: string
<                             type: array
<                           source:
<                             description: Source overrides the source definition set
<                               in the application. This is typically set in a Rollback
<                               operation and is nil during a Sync operation
<                             properties:
<                               path:
<                                 description: Path is a directory path within the Git
<                                   repository, and is only valid for applications sourced
<                                   from Git.
<                                 type: string
<                               repoURL:
<                                 description: RepoURL is the URL to the repository
<                                   (Git or Helm) that contains the application manifests
<                                 type: string
<                               targetRevision:
<                                 description: TargetRevision defines the revision of
<                                   the source to sync the application to. In case of
<                                   Git, this can be commit, tag, or branch. If omitted,
<                                   will equal to HEAD. In case of Helm, this is a semver
<                                   tag for the Chart's version.
<                                 type: string
<                             required:
<                             - path
<                             - repoURL
<                             type: object
<                           sources:
<                             description: Sources overrides the source definition set
<                               in the application. This is typically set in a Rollback
<                               operation and is nil during a Sync operation
<                             items:
<                               description: ApplicationSource contains all required
<                                 information about the source of an application
<                               properties:
<                                 path:
<                                   description: Path is a directory path within the
<                                     Git repository, and is only valid for applications
<                                     sourced from Git.
<                                   type: string
<                                 repoURL:
<                                   description: RepoURL is the URL to the repository
<                                     (Git or Helm) that contains the application manifests
<                                   type: string
<                                 targetRevision:
<                                   description: TargetRevision defines the revision
<                                     of the source to sync the application to. In case
<                                     of Git, this can be commit, tag, or branch. If
<                                     omitted, will equal to HEAD. In case of Helm,
<                                     this is a semver tag for the Chart's version.
<                                   type: string
<                               required:
<                               - path
<                               - repoURL
<                               type: object
<                             type: array
<                           syncOptions:
<                             description: SyncOptions provide per-sync sync-options,
<                               e.g. Validate=false
<                             items:
<                               type: string
<                             type: array
<                           syncStrategy:
<                             description: SyncStrategy describes how to perform the
<                               sync
<                             properties:
<                               apply:
<                                 description: Apply will perform a `kubectl apply`
<                                   to perform the sync.
<                                 properties:
<                                   force:
<                                     description: Force indicates whether or not to
<                                       supply the --force flag to `kubectl apply`.
<                                       The --force flag deletes and re-create the resource,
<                                       when PATCH encounters conflict and has retried
<                                       for 5 times.
<                                     type: boolean
<                                 type: object
<                               hook:
<                                 description: Hook will submit any referenced resources
<                                   to perform the sync. This is the default strategy
<                                 properties:
<                                   force:
<                                     description: Force indicates whether or not to
<                                       supply the --force flag to `kubectl apply`.
<                                       The --force flag deletes and re-create the resource,
<                                       when PATCH encounters conflict and has retried
<                                       for 5 times.
<                                     type: boolean
<                                 type: object
<                             type: object
<                         type: object
<                     type: object
<                   phase:
<                     description: Phase is the current phase of the operation
<                     type: string
<                   retryCount:
<                     description: RetryCount contains time of operation retries
<                     format: int64
<                     type: integer
<                   startedAt:
<                     description: StartedAt contains time of operation start
<                     format: date-time
<                     type: string
<                   syncResult:
<                     description: SyncResult is the result of a Sync operation
<                     properties:
<                       managedNamespaceMetadata:
<                         description: ManagedNamespaceMetadata contains the current
<                           sync state of managed namespace metadata
<                         properties:
<                           annotations:
<                             additionalProperties:
<                               type: string
<                             type: object
<                           labels:
<                             additionalProperties:
<                               type: string
<                             type: object
<                         type: object
<                       resources:
<                         description: Resources contains a list of sync result items
<                           for each individual resource in a sync operation
<                         items:
<                           description: ResourceResult holds the operation result details
<                             of a specific resource
<                           properties:
<                             group:
<                               description: Group specifies the API group of the resource
<                               type: string
<                             hookPhase:
<                               description: HookPhase contains the state of any operation
<                                 associated with this resource OR hook This can also
<                                 contain values for non-hook resources.
<                               type: string
<                             hookType:
<                               description: HookType specifies the type of the hook.
<                                 Empty for non-hook resources
<                               type: string
<                             kind:
<                               description: Kind specifies the API kind of the resource
<                               type: string
<                             message:
<                               description: Message contains an informational or error
<                                 message for the last sync OR operation
<                               type: string
<                             name:
<                               description: Name specifies the name of the resource
<                               type: string
<                             namespace:
<                               description: Namespace specifies the target namespace
<                                 of the resource
<                               type: string
<                             status:
<                               description: Status holds the final result of the sync.
<                                 Will be empty if the resources is yet to be applied/pruned
<                                 and is always zero-value for hooks
<                               type: string
<                             syncPhase:
<                               description: SyncPhase indicates the particular phase
<                                 of the sync that this result was acquired in
<                               type: string
<                             version:
<                               description: Version specifies the API version of the
<                                 resource
<                               type: string
<                           required:
<                           - group
<                           - kind
<                           - name
<                           - namespace
<                           - version
<                           type: object
<                         type: array
<                       revision:
<                         description: Revision holds the revision this sync operation
<                           was performed to
<                         type: string
<                       revisions:
<                         description: Revisions holds the revision this sync operation
<                           was performed for respective indexed source in sources field
<                         items:
<                           type: string
<                         type: array
<                       source:
<                         description: Source records the application source information
<                           of the sync, used for comparing auto-sync
<                         properties:
<                           path:
<                             description: Path is a directory path within the Git repository,
<                               and is only valid for applications sourced from Git.
<                             type: string
<                           repoURL:
<                             description: RepoURL is the URL to the repository (Git
<                               or Helm) that contains the application manifests
<                             type: string
<                           targetRevision:
<                             description: TargetRevision defines the revision of the
<                               source to sync the application to. In case of Git, this
<                               can be commit, tag, or branch. If omitted, will equal
<                               to HEAD. In case of Helm, this is a semver tag for the
<                               Chart's version.
<                             type: string
<                         required:
<                         - path
<                         - repoURL
<                         type: object
<                       sources:
<                         description: Source records the application source information
<                           of the sync, used for comparing auto-sync
<                         items:
<                           description: ApplicationSource contains all required information
<                             about the source of an application
<                           properties:
<                             path:
<                               description: Path is a directory path within the Git
<                                 repository, and is only valid for applications sourced
<                                 from Git.
<                               type: string
<                             repoURL:
<                               description: RepoURL is the URL to the repository (Git
<                                 or Helm) that contains the application manifests
<                               type: string
<                             targetRevision:
<                               description: TargetRevision defines the revision of
<                                 the source to sync the application to. In case of
<                                 Git, this can be commit, tag, or branch. If omitted,
<                                 will equal to HEAD. In case of Helm, this is a semver
<                                 tag for the Chart's version.
<                               type: string
<                           required:
<                           - path
<                           - repoURL
<                           type: object
<                         type: array
<                     required:
<                     - revision
<                     type: object
<                 required:
<                 - operation
<                 - phase
<                 - startedAt
<                 type: object
<               reconciledState:
<                 description: ReconciledState contains the last version of the GitOpsDeployment
<                   resource that the ArgoCD Controller reconciled
<                 properties:
<                   destination:
<                     description: GitOpsDeploymentDestination contains the information
<                       of .status.Sync.CompareTo.Destination field of ArgoCD Application
<                     properties:
<                       name:
<                         type: string
<                       namespace:
<                         type: string
<                     required:
<                     - name
<                     - namespace
<                     type: object
<                   source:
<                     description: GitOpsDeploymentSource contains the information of
<                       .status.Sync.CompareTo.Source field of ArgoCD Application
<                     properties:
<                       branch:
<                         type: string
<                       path:
<                         description: Path contains path from .status.Sync.CompareTo
<                           field of ArgoCD Application
<                         type: string
<                       repoURL:
<                         type: string
<                     required:
<                     - branch
<                     - path
<                     - repoURL
<                     type: object
<                 required:
<                 - destination
<                 - source
<                 type: object
<               resources:
<                 description: List of Resource created by a deployment
<                 items:
<                   description: ResourceStatus holds the current sync and health status
<                     of a resource
<                   properties:
<                     group:
<                       type: string
<                     health:
<                       description: HealthStatus contains information about the currently
<                         observed health state of an application or resource
<                       properties:
<                         message:
<                           description: Message is a human-readable informational message
<                             describing the health status
<                           type: string
<                         status:
<                           description: Status holds the status code of the application
<                             or resource
<                           type: string
<                       type: object
<                     kind:
<                       type: string
<                     name:
<                       type: string
<                     namespace:
<                       type: string
<                     status:
<                       description: SyncStatusCode is a type which represents possible
<                         comparison results
<                       type: string
<                     version:
<                       type: string
<                   type: object
<                 type: array
<               sync:
<                 description: SyncStatus contains information about the currently observed
<                   live and desired states of an application
<                 properties:
<                   revision:
<                     description: Revision contains information about the revision
<                       the comparison has been performed to
<                     type: string
<                   status:
<                     description: Status is the sync state of the comparison
<                     type: string
<                 required:
<                 - status
<                 type: object
<             required:
<             - reconciledState
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
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.12.1
<   name: gitopsdeploymentsyncruns.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeploymentSyncRun
<     listKind: GitOpsDeploymentSyncRunList
<     plural: gitopsdeploymentsyncruns
<     singular: gitopsdeploymentsyncrun
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeploymentSyncRun is the Schema for the gitopsdeploymentsyncruns
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
<             description: GitOpsDeploymentSyncRunSpec defines the desired state of
<               GitOpsDeploymentSyncRun
<             properties:
<               gitopsDeploymentName:
<                 description: Reference to the target GitOpsDeployment to issue the
<                   synchronization operation to
<                 type: string
<               revisionID:
<                 description: 'Optional: If specified, tells the GitOps Service to
<                   deploy a particular git commit SHA'
<                 type: string
<             required:
<             - gitopsDeploymentName
<             type: object
<           status:
<             description: GitOpsDeploymentSyncRunStatus defines the observed state
<               of GitOpsDeploymentSyncRun
<             properties:
<               conditions:
<                 items:
<                   description: GitOpsDeploymentCondition contains details about an
<                     applicationset condition, which is usally an error or warning
<                   properties:
<                     lastTransitionTime:
<                       description: LastTransitionTime is the time the condition was
<                         last observed
<                       format: date-time
<                       type: string
<                     message:
<                       description: Message contains human-readable message indicating
<                         details about condition
<                       type: string
<                     reason:
<                       description: Single word camelcase representing the reason for
<                         the status eg ErrorOccurred
<                       type: string
<                     status:
<                       description: True/False/Unknown
<                       type: string
<                     type:
<                       description: Type is an applicationset condition type
<                       type: string
<                   required:
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
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
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.12.1
<   name: operations.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: Operation
<     listKind: OperationList
<     plural: operations
<     singular: operation
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: Operation is the Schema for the operations API
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
<             description: OperationSpec defines the desired state of Operation
<             properties:
<               operationID:
<                 type: string
<             type: object
<           status:
<             description: OperationStatus defines the observed state of Operation
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: metrics-reader
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-all-access
<   namespace: gitops-service-argocd
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-delete-pods-access
<   namespace: gitops-service-argocd
< rules:
< - apiGroups:
<   - ""
<   - apps
<   resources:
<   - pods
<   verbs:
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-read-access
<   namespace: gitops-service-argocd
< rules:
< - apiGroups:
<   - ""
<   - apps
<   resources:
<   - pods
<   - pods/log
<   - deployments
<   - events
<   - bindings
<   - replicas
<   - configmaps
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-read-all-access
<   namespace: gitops-service-argocd
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
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-leader-election-role
<   namespace: gitops
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
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-leader-election-role
<   namespace: gitops
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
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-all-access
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-delete-pods-access
<   namespace: gitops
< rules:
< - apiGroups:
<   - ""
<   - apps
<   resources:
<   - pods
<   verbs:
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-read-access
<   namespace: gitops
< rules:
< - apiGroups:
<   - ""
<   - apps
<   resources:
<   - pods
<   - pods/log
<   - deployments
<   - events
<   - bindings
<   - replicas
<   - configmaps
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespaces-read-all-access
<   namespace: gitops
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
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-leader-election-role
<   namespace: gitops
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: appstudio-openshift-gitops-argocd-application-controller
< rules:
< - apiGroups:
<   - '*'
<   resources:
<   - '*'
<   verbs:
<   - '*'
< - nonResourceURLs:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: appstudio-openshift-gitops-argocd-server
< rules:
< - apiGroups:
<   - '*'
<   resources:
<   - '*'
<   verbs:
<   - delete
<   - get
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - list
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   - pods/log
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-deploymenttargetclass-viewer-role
< rules:
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
<   - deploymenttargetclasses/status
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-manager-role
< rules:
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
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components
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
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - deploymenttargetclaims/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - deploymenttargetclaims/status
<   verbs:
<   - get
<   - patch
<   - update
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
<   - deploymenttargets/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - deploymenttargets/status
<   verbs:
<   - get
<   - patch
<   - update
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
<   - promotionruns
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
<   - promotionruns/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - promotionruns/status
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
<   - snapshotenvironmentbindings/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshotenvironmentbindings/status
<   verbs:
<   - get
<   - patch
<   - update
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
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests/status
<   verbs:
<   - get
<   - patch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-proxy-role
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-component-maintainer
< rules:
< - apiGroups:
<   - apiextensions.k8s.io
<   resources:
<   - customresourcedefinitions
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - clusterrolebindings
<   - clusterroles
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   - roles
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   - apps
<   resources:
<   - bindings
<   - configmaps
<   - daemonsets
<   - deployments
<   - events
<   - namespaces
<   - nodes
<   - pods
<   - pods/log
<   - replicas
<   - replicasets
<   - routes
<   - secrets
<   - serviceaccounts
<   - services
<   - statefulsets
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshotenvironmentbindings
<   verbs:
<   - delete
< - apiGroups:
<   - admissionregistration.k8s.io
<   resources:
<   - validatingwebhookconfigurations
<   - mutatingwebhookconfigurations
<   verbs:
<   - get
<   - list
<   - watch
<   - delete
< - apiGroups:
<   - operators.coreos.com
<   resources:
<   - catalogsources
<   - clusterserviceversions
<   - installplans
<   - operatorgroups
<   - subscriptions
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - monitoring.coreos.com
<   resources:
<   - alertmanagers
<   - prometheuses
<   - prometheusrules
<   - servicemonitors
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - operators.coreos.com
<   resources:
<   - installplans
<   verbs:
<   - get
<   - list
<   - update
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-manager-role
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   - endpoints
<   - persistentvolumeclaims
<   - persistentvolumes
<   - pods
<   - secrets
<   - serviceaccounts
<   - services
<   verbs:
<   - delete
<   - get
<   - list
< - apiGroups:
<   - apps
<   resources:
<   - daemonsets
<   - deployments
<   - replicasets
<   - statefulsets
<   verbs:
<   - delete
<   - get
<   - list
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - discovery.k8s.io
<   resources:
<   - endpointslices
<   verbs:
<   - delete
<   - get
<   - list
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentrepositorycredentials
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentrepositorycredentials/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentrepositorycredentials/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentsyncruns
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentsyncruns/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentsyncruns/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - networking.k8s.io
<   resources:
<   - ingressclasses
<   - ingresses
<   verbs:
<   - delete
<   - get
<   - list
< - apiGroups:
<   - pipelinesascode.tekton.dev
<   resources:
<   - repositories
<   verbs:
<   - delete
<   - get
<   - list
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   - roles
<   verbs:
<   - delete
<   - get
<   - list
< - apiGroups:
<   - route.openshift.io
<   resources:
<   - routes
<   verbs:
<   - delete
<   - get
<   - list
< - apiGroups:
<   - triggers.tekton.dev
<   resources:
<   - eventlisteners
<   - triggertemplates
<   verbs:
<   - delete
<   - get
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-proxy-role
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-manager-role
< rules:
< - apiGroups:
<   - argoproj.io
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
<   - argoproj.io
<   resources:
<   - appprojects
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - argoproj.io
<   resources:
<   - argocds
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - route.openshift.io
<   resources:
<   - routes
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-proxy-role
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
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-argocd-namespace-all-access
<   namespace: gitops-service-argocd
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-namespaces-all-access
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops-admins
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-argocd-namespace-read-access
<   namespace: gitops-service-argocd
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-namespaces-read-access
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-leader-election-rolebinding
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-appstudio-service-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-leader-election-rolebinding
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-core-service-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespace-all-access
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-namespaces-all-access
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops-admins
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-namespace-read-access
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-namespaces-read-access
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-leader-election-rolebinding
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-service-agent-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-gitops-component-maintainers
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops-admins
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: appstudio-openshift-gitops-argocd-application-controller
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: appstudio-openshift-gitops-argocd-application-controller
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-application-controller
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: appstudio-openshift-gitops-argocd-server
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: appstudio-openshift-gitops-argocd-server
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-server
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-deploymenttargetclass-viewer-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-appstudio-service-deploymenttargetclass-viewer-role
< subjects:
< - kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-appstudio-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-appstudio-service-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-core-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-core-service-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-service-agent-manager-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-service-agent-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: prometheus-gitops-appstudio-service-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-appstudio-service-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: prometheus-gitops-core-service-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-core-service-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: prometheus-gitops-service-agent-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-service-agent-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: gitops
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
<       resourceName: 53746cb8.redhat.com
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-manager-config
<   namespace: gitops
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
<       resourceName: 5a3f596c.redhat.com
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-manager-config
<   namespace: gitops
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
<       resourceName: 5a3f596c.redhat.com
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-manager-config
<   namespace: gitops
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: gitops
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: appstudio-controller-manager
<   name: gitops-appstudio-service-controller-manager-metrics-service
<   namespace: gitops
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: metrics
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: appstudio-controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
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
<   labels:
<     control-plane: backend-controller-manager
<   name: gitops-core-service-controller-manager-metrics-service
<   namespace: gitops
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: metrics
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: backend-controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/serving-cert-secret-name: core-webhook-server-cert
<   name: gitops-core-service-webhook-service
<   namespace: gitops
< spec:
<   ports:
<   - port: 443
<     protocol: TCP
<     targetPort: 9443
<   selector:
<     control-plane: backend-controller-manager
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: cluster-agent-controller-manager
<   name: gitops-service-agent-controller-manager-metrics-service
<   namespace: gitops
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: metrics
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: cluster-agent-controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: appstudio-controller-manager
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: appstudio-controller-manager
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         kubectl.kubernetes.io/default-container: manager
<       labels:
<         control-plane: appstudio-controller-manager
<     spec:
<       containers:
<       - args:
<         - --leader-elect
<         - --zap-time-encoding=rfc3339nano
<         - --health-probe-bind-address=:8085
<         - --metrics-bind-address=:8080
<         - --zap-log-level
<         - info
<         command:
<         - appstudio-controller
<         image: quay.io/redhat-appstudio/gitops-service:87e1f9acc67bf033d2159951ba6489f0836586ef
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8085
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         - containerPort: 9443
<           name: webhook-server
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8085
<           initialDelaySeconds: 15
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 500m
<             memory: 3172Mi
<           requests:
<             cpu: 200m
<             memory: 1024Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /tmp/k8s-webhook-server/serving-certs
<           name: cert
<           readOnly: true
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=10
<         - --http2-disable=true
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         imagePullPolicy: IfNotPresent
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 50m
<             memory: 50Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         terminationMessagePath: /dev/termination-log
<         terminationMessagePolicy: File
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: gitops-appstudio-service-controller-manager
<       terminationGracePeriodSeconds: 10
<       volumes:
<       - name: cert
<         secret:
<           defaultMode: 420
<           secretName: webhook-server-cert
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: backend-controller-manager
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: backend-controller-manager
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         control-plane: backend-controller-manager
<     spec:
<       containers:
<       - args:
<         - --health-probe-bind-address=:18081
<         - --metrics-bind-address=:8080
<         - --leader-elect
<         - --zap-time-encoding=rfc3339nano
<         - --zap-log-level
<         - info
<         command:
<         - gitops-service-backend
<         env:
<         - name: ARGO_CD_NAMESPACE
<           value: gitops-service-argocd
<         - name: DB_ADDR
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: gitops-service-postgres-rds-config
<         - name: DB_PASS
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: gitops-service-postgres-rds-config
<         - name: ENABLE_APPPROJECT_ISOLATION
<           value: "true"
<         image: quay.io/redhat-appstudio/gitops-service:87e1f9acc67bf033d2159951ba6489f0836586ef
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 18081
<           initialDelaySeconds: 120
<           periodSeconds: 60
<         name: manager
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 18081
<           initialDelaySeconds: 180
<           periodSeconds: 30
<         resources:
<           limits:
<             cpu: 2000m
<             memory: 4800Mi
<           requests:
<             cpu: 1000m
<             memory: 2400Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /tmp/k8s-webhook-server/serving-certs
<           name: cert
<           readOnly: true
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=10
<         - --http2-disable=true
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         imagePullPolicy: IfNotPresent
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 50m
<             memory: 50Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         terminationMessagePath: /dev/termination-log
<         terminationMessagePolicy: File
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: gitops-core-service-controller-manager
<       terminationGracePeriodSeconds: 10
<       volumes:
<       - name: cert
<         secret:
<           defaultMode: 420
<           secretName: core-webhook-server-cert
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: cluster-agent-controller-manager
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: cluster-agent-controller-manager
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         control-plane: cluster-agent-controller-manager
<     spec:
<       containers:
<       - args:
<         - --health-probe-bind-address=:8083
<         - --metrics-bind-address=:8080
<         - --leader-elect
<         - --zap-time-encoding=rfc3339nano
<         - --zap-log-level
<         - info
<         command:
<         - gitops-service-cluster-agent
<         env:
<         - name: ARGO_CD_NAMESPACE
<           value: gitops-service-argocd
<         - name: DB_ADDR
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: gitops-service-postgres-rds-config
<         - name: DB_PASS
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: gitops-service-postgres-rds-config
<         - name: ENABLE_APPPROJECT_ISOLATION
<           value: "true"
<         image: quay.io/redhat-appstudio/gitops-service:87e1f9acc67bf033d2159951ba6489f0836586ef
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8083
<           initialDelaySeconds: 45
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8083
<           initialDelaySeconds: 45
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 300m
<             memory: 1000Mi
<           requests:
<             cpu: 200m
<             memory: 300Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /tmp
<           name: tmp
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=10
<         - --http2-disable=true
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         imagePullPolicy: IfNotPresent
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 50m
<             memory: 50Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         terminationMessagePath: /dev/termination-log
<         terminationMessagePolicy: File
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: gitops-service-agent-controller-manager
<       terminationGracePeriodSeconds: 10
<       volumes:
<       - emptyDir: {}
<         name: tmp
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: DeploymentTargetClass
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: isolation-level-namespace
< spec:
<   parameters: {}
<   provisioner: appstudio.redhat.com/devsandbox
<   reclaimPolicy: Delete
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ArgoCD
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   finalizers:
<   - argoproj.io/finalizer
<   name: gitops-service-argocd
<   namespace: gitops-service-argocd
< spec:
<   applicationSet:
<     resources:
<       limits:
<         cpu: "1"
<         memory: 1Gi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<   controller:
<     env:
<     - name: ARGOCD_RECONCILIATION_TIMEOUT
<       value: 60s
<     logLevel: info
<     processors: {}
<     resources:
<       limits:
<         cpu: "2"
<         memory: 6Gi
<       requests:
<         cpu: "1"
<         memory: 3Gi
<     sharding: {}
<   grafana:
<     enabled: false
<     ingress:
<       enabled: false
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<     route:
<       enabled: false
<   ha:
<     enabled: false
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<   initialSSHKnownHosts: {}
<   prometheus:
<     enabled: false
<     ingress:
<       enabled: false
<     route:
<       enabled: false
<   rbac:
<     policy: g, system:authenticated, role:admin
<     scopes: '[groups]'
<   redis:
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<   repo:
<     env:
<     - name: ARGOCD_RECONCILIATION_TIMEOUT
<       value: 60s
<     execTimeout: 30
<     extraRepoCommandArgs:
<     - --max-combined-directory-manifests-size
<     - 10M
<     - --parallelismlimit
<     - "20"
<     logLevel: info
<     resources:
<       limits:
<         cpu: "1"
<         memory: 2Gi
<       requests:
<         cpu: 500m
<         memory: 512Mi
<   resourceInclusions: |
<     - apiGroups:
<       - ""
<       kinds:
<       - "PersistentVolumeClaim"
<       - "PersistentVolume"
<       - "Secret"
<       - "ConfigMap"
<       - "Pod"
<       - "Endpoint"
<       - "Service"
<       - "ServiceAccounts"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "apps"
<       kinds:
<       - "ReplicaSet"
<       - "StatefulSet"
<       - "DaemonSet"
<       - "Deployment"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "discovery.k8s.io"
<       kinds:
<       - "EndpointSlice"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "networking.k8s.io"
<       kinds:
<       - "Ingress"
<       - "IngressClass"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "rbac.authorization.k8s.io"
<       kinds:
<       - "RoleBinding"
<       - "Role"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "route.openshift.io"
<       kinds:
<       - "Route"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "triggers.tekton.dev"
<       kinds:
<       - "EventListener"
<       - "TriggerTemplate"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "pipelinesascode.tekton.dev"
<       kinds:
<       - "Repository"
<       clusters:
<       - "*"
<   server:
<     autoscale:
<       enabled: false
<     grpc:
<       ingress:
<         enabled: false
<     ingress:
<       enabled: false
<     logLevel: info
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 125m
<         memory: 128Mi
<     route:
<       enabled: true
<       tls:
<         termination: reencrypt
<     service:
<       type: ""
<   tls:
<     ca: {}
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: gitops-service-postgres-rds-config
<   namespace: gitops
< spec:
<   dataFrom:
<   - extract:
<       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: gitops-service-postgres-rds-config
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service
<   namespace: gitops
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: appstudio-controller-manager
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service
<   namespace: gitops
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: backend-controller-manager
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent
<   namespace: gitops
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: cluster-agent-controller-manager
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: openshift-gitops-operator
<   namespace: openshift-operators
< spec:
<   channel: gitops-1.9
<   installPlanApproval: Automatic
<   name: openshift-gitops-operator
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: MutatingWebhookConfiguration
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: gitops-core-service-mutating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeployment
<   failurePolicy: Fail
<   name: mgitopsdeployment.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeployments
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentmanagedenvironment
<   failurePolicy: Fail
<   name: mgitopsdeploymentmanagedenvironment.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeploymentmanagedenvironments
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentrepositorycredential
<   failurePolicy: Fail
<   name: mgitopsdeploymentrepositorycredential.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeploymentrepositorycredentials
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentsyncrun
<   failurePolicy: Fail
<   name: mgitopsdeploymentsyncrun.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeploymentsyncruns
<   sideEffects: None
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: ValidatingWebhookConfiguration
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/inject-cabundle: "true"
<   name: gitops-appstudio-service-validating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   - v1beta1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-environment
<   failurePolicy: Fail
<   name: venvironment.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - environments
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
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: ValidatingWebhookConfiguration
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: gitops-core-service-validating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeployment
<   failurePolicy: Fail
<   name: vgitopsdeployment.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeployments
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentmanagedenvironment
<   failurePolicy: Fail
<   name: vgitopsdeploymentmanagedenvironment.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeploymentmanagedenvironments
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentrepositorycredential
<   failurePolicy: Fail
<   name: vgitopsdeploymentrepositorycredential.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeploymentrepositorycredentials
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-core-service-webhook-service
<       namespace: gitops
<       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentsyncrun
<   failurePolicy: Fail
<   name: vgitopsdeploymentsyncrun.kb.io
<   rules:
<   - apiGroups:
<     - managed-gitops.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - gitopsdeploymentsyncruns
<   sideEffects: None
./commit-84d31c3e/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1,1579d0
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
<       - v1beta2
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
<                         description: Env is an array of standard environment variables
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
<     deprecated: true
<     deprecationWarning: The v1beta1 version is deprecated and will be automatically
<       migrated to v1beta2
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
<                         description: Env is an array of standard environment variables
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
<   - environments
<   verbs:
<   - get
<   - list
<   - watch
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
< kind: ClusterRole
< metadata:
<   name: manage-integrationtestscenarios
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
<   - delete
<   - deletecollection
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
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: manage-integrationtestscenarios
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: manage-integrationtestscenarios
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration
< ---
< apiVersion: v1
< data:
<   CONSOLE_NAME: Red Hat Konflux
<   CONSOLE_URL: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
<     .Namespace }}/pipelinerun/{{ .PipelineRunName }}
<   CONSOLE_URL_TASKLOG: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
<     .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}
< kind: ConfigMap
< metadata:
<   name: integration-config-gkchk67fck
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
< data:
<   FINALLY_TIMEOUT: 2h
<   PIPELINE_TIMEOUT: 6h
<   TASKS_TIMEOUT: 4h
< kind: ConfigMap
< metadata:
<   name: pipelinerun-options-g6875ct7d8
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
<         - name: CONSOLE_NAME
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_NAME
<               name: integration-config-gkchk67fck
<               optional: true
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: integration-config-gkchk67fck
<               optional: true
<         - name: CONSOLE_URL_TASKLOG
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL_TASKLOG
<               name: integration-config-gkchk67fck
<               optional: true
<         - name: PIPELINE_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: PIPELINE_TIMEOUT
<               name: pipelinerun-options-g6875ct7d8
<               optional: true
<         - name: TASKS_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: TASKS_TIMEOUT
<               name: pipelinerun-options-g6875ct7d8
<               optional: true
<         - name: FINALLY_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: FINALLY_TIMEOUT
<               name: pipelinerun-options-g6875ct7d8
<               optional: true
<         image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
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
<             memory: 1500Mi
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
<             image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
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
<       key: production/pipeline-service/stone-prod-p02/github-app
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
<       path: /validate-appstudio-redhat-com-v1beta2-integrationtestscenario
<   failurePolicy: Fail
<   name: vintegrationtestscenario.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1beta2
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 84d31c3e to cbf90844 on Mon Aug 26 19:36:40 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index fbac6307..33863d61 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -63,6 +63,30 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - hypershift.openshift.io
+  resources:
+  - awsendpointservices
+  - certificatesigningrequestapprovals
+  - hostedclusters
+  - hostedcontrolplanes
+  - nodepools
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplates
+  - clustertemplateinstances
+  - clustertemplatequotas
+  - clustertemplatesetups
+  - configs
+  verbs:
+  - get
+  - list
+  - watch
 ---
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-84d31c3e/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
470,493d469
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - awsendpointservices
<   - certificatesigningrequestapprovals
<   - hostedclusters
<   - hostedcontrolplanes
<   - nodepools
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   - clustertemplateinstances
<   - clustertemplatequotas
<   - clustertemplatesetups
<   - configs
<   verbs:
<   - get
<   - list
<   - watch 
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
<h3>2: Development changes from 84d31c3e to cbf90844 on Mon Aug 26 19:36:40 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index fbac6307..33863d61 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -63,6 +63,30 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - hypershift.openshift.io
+  resources:
+  - awsendpointservices
+  - certificatesigningrequestapprovals
+  - hostedclusters
+  - hostedcontrolplanes
+  - nodepools
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplates
+  - clustertemplateinstances
+  - clustertemplatequotas
+  - clustertemplatesetups
+  - configs
+  verbs:
+  - get
+  - list
+  - watch
 ---
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1489 lines)</summary>  

``` 
./commit-84d31c3e/development/components/jvm-build-service/development/kustomize.out.yaml
1,1487d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: jvm-build-service
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: artifactbuilds.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: ArtifactBuild
<     listKind: ArtifactBuildList
<     plural: artifactbuilds
<     singular: artifactbuild
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.gav
<       name: GAV
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: ArtifactBuild TODO provide godoc description
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
<             properties:
<               gav:
<                 description: GAV is the groupID:artifactID:version tuple seen in maven
<                   pom.xml files
<                 type: string
<             type: object
<           status:
<             properties:
<               message:
<                 type: string
<               scm:
<                 properties:
<                   commitHash:
<                     type: string
<                   path:
<                     type: string
<                   private:
<                     type: boolean
<                   scmType:
<                     type: string
<                   scmURL:
<                     type: string
<                   tag:
<                     type: string
<                 type: object
<               state:
<                 description: 'TODO: conditions?'
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: dependencybuilds.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: DependencyBuild
<     listKind: DependencyBuildList
<     plural: dependencybuilds
<     singular: dependencybuild
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.scm.scmURL
<       name: URL
<       type: string
<     - jsonPath: .spec.scm.tag
<       name: Tag
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     - jsonPath: .status.message
<       name: Message
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: DependencyBuild TODO provide godoc description
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
<             properties:
<               scm:
<                 properties:
<                   commitHash:
<                     type: string
<                   path:
<                     type: string
<                   private:
<                     type: boolean
<                   scmType:
<                     type: string
<                   scmURL:
<                     type: string
<                   tag:
<                     type: string
<                 type: object
<               version:
<                 type: string
<             type: object
<           status:
<             properties:
<               buildAttempts:
<                 items:
<                   properties:
<                     build:
<                       properties:
<                         complete:
<                           type: boolean
<                         diagnosticDockerFile:
<                           type: string
<                         finishTime:
<                           format: int64
<                           type: integer
<                         pipelineName:
<                           type: string
<                         results:
<                           properties:
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
<                             gavs:
<                               description: The produced GAVs
<                               items:
<                                 type: string
<                               type: array
<                             gitArchive:
<                               description: The git archive source information
<                               properties:
<                                 sha:
<                                   type: string
<                                 tag:
<                                   type: string
<                                 url:
<                                   type: string
<                               type: object
<                             hermeticBuildImage:
<                               description: The hermetic build image produced by the
<                                 build
<                               type: string
<                             image:
<                               description: the image resulting from the run
<                               type: string
<                             imageDigest:
<                               type: string
<                             pipelineResults:
<                               description: The Tekton results
<                               properties:
<                                 logs:
<                                   type: string
<                                 record:
<                                   type: string
<                                 result:
<                                   type: string
<                               type: object
<                             verificationFailures:
<                               type: string
<                             verified:
<                               description: If the resulting image was verified
<                               type: boolean
<                           required:
<                           - imageDigest
<                           type: object
<                         startTime:
<                           format: int64
<                           type: integer
<                         succeeded:
<                           type: boolean
<                       required:
<                       - complete
<                       - pipelineName
<                       type: object
<                     buildId:
<                       type: string
<                     buildRecipe:
<                       properties:
<                         additionalDownloads:
<                           items:
<                             properties:
<                               binaryPath:
<                                 type: string
<                               fileName:
<                                 type: string
<                               packageName:
<                                 type: string
<                               sha256:
<                                 type: string
<                               type:
<                                 type: string
<                               uri:
<                                 type: string
<                             required:
<                             - type
<                             type: object
<                           type: array
<                         additionalMemory:
<                           type: integer
<                         allowedDifferences:
<                           items:
<                             type: string
<                           type: array
<                         commandLine:
<                           items:
<                             type: string
<                           type: array
<                         contextPath:
<                           type: string
<                         disableSubmodules:
<                           type: boolean
<                         disabledPlugins:
<                           items:
<                             type: string
<                           type: array
<                         enforceVersion:
<                           type: string
<                         image:
<                           type: string
<                         javaVersion:
<                           type: string
<                         pipeline:
<                           description: Deprecated
<                           type: string
<                         postBuildScript:
<                           type: string
<                         preBuildScript:
<                           type: string
<                         repositories:
<                           items:
<                             type: string
<                           type: array
<                         tool:
<                           type: string
<                         toolVersion:
<                           type: string
<                         toolVersions:
<                           additionalProperties:
<                             type: string
<                           type: object
<                       type: object
<                   type: object
<                 type: array
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                     tool:
<                       type: string
<                   type: object
<                 type: array
<               commitTime:
<                 format: int64
<                 type: integer
<               conditions:
<                 description: 'Conditions for capturing generic status NOTE: inspecting
<                   the fabric8 Status class, it looked analogous to k8s Condition,
<                   and then I took the liberty of making it an array, given best practices
<                   in the k8s/ocp ecosystems'
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource. --- This struct is intended for direct
<                     use as an array at the field path .status.conditions.  For example,
<                     \n \ttype FooStatus struct{ \t    // Represents the observations
<                     of a foo's current state. \t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
<                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
<                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
<                     \t}"
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
<               contaminates:
<                 items:
<                   properties:
<                     allowed:
<                       type: boolean
<                     buildId:
<                       type: string
<                     contaminatedArtifacts:
<                       items:
<                         type: string
<                       type: array
<                     gav:
<                       type: string
<                     rebuildAvailable:
<                       type: boolean
<                     source:
<                       type: string
<                   type: object
<                 type: array
<               deployedArtifacts:
<                 items:
<                   type: string
<                 type: array
<               discoveryPipelineResults:
<                 description: A representation of the Tekton Results records for a
<                   pipeline
<                 properties:
<                   logs:
<                     type: string
<                   record:
<                     type: string
<                   result:
<                     type: string
<                 type: object
<               failedVerification:
<                 type: boolean
<               hermetic:
<                 type: boolean
<               message:
<                 type: string
<               pipelineRetries:
<                 type: integer
<               potentialBuildRecipes:
<                 description: PotentialBuildRecipes additional recipes to try if the
<                   current recipe fails
<                 items:
<                   properties:
<                     additionalDownloads:
<                       items:
<                         properties:
<                           binaryPath:
<                             type: string
<                           fileName:
<                             type: string
<                           packageName:
<                             type: string
<                           sha256:
<                             type: string
<                           type:
<                             type: string
<                           uri:
<                             type: string
<                         required:
<                         - type
<                         type: object
<                       type: array
<                     additionalMemory:
<                       type: integer
<                     allowedDifferences:
<                       items:
<                         type: string
<                       type: array
<                     commandLine:
<                       items:
<                         type: string
<                       type: array
<                     contextPath:
<                       type: string
<                     disableSubmodules:
<                       type: boolean
<                     disabledPlugins:
<                       items:
<                         type: string
<                       type: array
<                     enforceVersion:
<                       type: string
<                     image:
<                       type: string
<                     javaVersion:
<                       type: string
<                     pipeline:
<                       description: Deprecated
<                       type: string
<                     postBuildScript:
<                       type: string
<                     preBuildScript:
<                       type: string
<                     repositories:
<                       items:
<                         type: string
<                       type: array
<                     tool:
<                       type: string
<                     toolVersion:
<                       type: string
<                     toolVersions:
<                       additionalProperties:
<                         type: string
<                       type: object
<                   type: object
<                 type: array
<               potentialBuildRecipesIndex:
<                 type: integer
<               state:
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: jbsconfigs.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: JBSConfig
<     listKind: JBSConfigList
<     plural: jbsconfigs
<     singular: jbsconfig
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .status.message
<       name: Message
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: JBSConfig TODO provide godoc description
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
<             properties:
<               additionalRecipes:
<                 items:
<                   type: string
<                 type: array
<               buildSettings:
<                 properties:
<                   buildRequestCPU:
<                     description: The requested CPU for the build and deploy steps
<                       of a pipeline
<                     type: string
<                   buildRequestMemory:
<                     description: The requested memory for the build and deploy steps
<                       of a pipeline
<                     type: string
<                   taskLimitCPU:
<                     description: The CPU limit for all other steps of a pipeline
<                     type: string
<                   taskLimitMemory:
<                     description: The memory limit for all other steps of a pipeline
<                     type: string
<                   taskRequestCPU:
<                     description: The requested CPU for all other steps of a pipeline
<                     type: string
<                   taskRequestMemory:
<                     description: The requested memory for all other steps of a pipeline
<                     type: string
<                 type: object
<               cacheSettings:
<                 properties:
<                   disableTLS:
<                     type: boolean
<                   ioThreads:
<                     type: string
<                   limitCPU:
<                     type: string
<                   limitMemory:
<                     type: string
<                   requestCPU:
<                     type: string
<                   requestMemory:
<                     type: string
<                   storage:
<                     type: string
<                   workerThreads:
<                     type: string
<                 type: object
<               enableRebuilds:
<                 type: boolean
<               gitSourceArchive:
<                 properties:
<                   disableSSLVerification:
<                     type: boolean
<                   identity:
<                     type: string
<                   url:
<                     type: string
<                 type: object
<               hermeticBuilds:
<                 type: string
<               mavenBaseLocations:
<                 additionalProperties:
<                   type: string
<                 type: object
<               mavenDeployment:
<                 properties:
<                   repository:
<                     type: string
<                   username:
<                     type: string
<                 type: object
<               registry:
<                 properties:
<                   dontReuseExisting:
<                     type: boolean
<                   host:
<                     type: string
<                   insecure:
<                     type: boolean
<                   owner:
<                     type: string
<                   port:
<                     type: string
<                   prependTag:
<                     type: string
<                   private:
<                     description: if this is true and we are automatically creating
<                       registries then we will make it private
<                     type: boolean
<                   repository:
<                     type: string
<                   secretName:
<                     type: string
<                 type: object
<               relocationPatterns:
<                 items:
<                   properties:
<                     relocationPattern:
<                       properties:
<                         buildPolicy:
<                           type: string
<                         patterns:
<                           items:
<                             properties:
<                               pattern:
<                                 properties:
<                                   from:
<                                     type: string
<                                   to:
<                                     type: string
<                                 required:
<                                 - from
<                                 - to
<                                 type: object
<                             required:
<                             - pattern
<                             type: object
<                           type: array
<                       type: object
<                   required:
<                   - relocationPattern
<                   type: object
<                 type: array
<               requireArtifactVerification:
<                 description: If this is true then the build will fail if artifact
<                   verification fails otherwise deploy will happen as normal, but a
<                   field will be set on the DependencyBuild
<                 type: boolean
<               sharedRegistries:
<                 items:
<                   properties:
<                     host:
<                       type: string
<                     insecure:
<                       type: boolean
<                     owner:
<                       type: string
<                     port:
<                       type: string
<                     prependTag:
<                       type: string
<                     repository:
<                       type: string
<                     secretName:
<                       type: string
<                   type: object
<                 type: array
<             type: object
<           status:
<             properties:
<               imageRegistry:
<                 properties:
<                   host:
<                     type: string
<                   insecure:
<                     type: boolean
<                   owner:
<                     type: string
<                   port:
<                     type: string
<                   prependTag:
<                     type: string
<                   repository:
<                     type: string
<                   secretName:
<                     type: string
<                 type: object
<               message:
<                 type: string
<               rebuildsPossible:
<                 type: boolean
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: jvmimagescans.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: JvmImageScan
<     listKind: JvmImageScanList
<     plural: jvmimagescans
<     singular: jvmimagescan
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.image
<       name: Image
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: JvmImageScan TODO provide godoc description
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
<             properties:
<               image:
<                 type: string
<             type: object
<           status:
<             properties:
<               digest:
<                 type: string
<               message:
<                 type: string
<               results:
<                 items:
<                   properties:
<                     attributes:
<                       additionalProperties:
<                         type: string
<                       type: object
<                     gav:
<                       type: string
<                     source:
<                       type: string
<                   type: object
<                 type: array
<               state:
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: rebuiltartifacts.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: RebuiltArtifact
<     listKind: RebuiltArtifactList
<     plural: rebuiltartifacts
<     singular: rebuiltartifact
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.gav
<       name: GAV
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: RebuiltArtifact An artifact that has been rebuilt and deployed
<           to S3 or a Container registry
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
<             properties:
<               digest:
<                 type: string
<               gav:
<                 description: The GAV of the rebuilt artifact
<                 type: string
<               image:
<                 type: string
<             type: object
<           status:
<             type: object
<         required:
<         - spec
<         type: object
<     served: true
<     storage: true
<     subresources: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: systemconfigs.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: SystemConfig
<     listKind: SystemConfigList
<     plural: systemconfigs
<     singular: systemconfig
<   scope: Cluster
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: SystemConfig TODO provide godoc description
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
<             properties:
<               builders:
<                 additionalProperties:
<                   properties:
<                     image:
<                       type: string
<                     priority:
<                       type: integer
<                     tag:
<                       type: string
<                   type: object
<                 type: object
<               maxAdditionalMemory:
<                 type: integer
<               recipeDatabase:
<                 type: string
<             type: object
<           status:
<             type: object
<         required:
<         - spec
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: metrics-reader
<   namespace: jvm-build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: hacbs-jvm-cache
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - rebuiltartifacts
<   - artifactbuilds
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds/status
<   verbs:
<   - patch
<   - update
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   verbs:
<   - patch
<   - update
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - jbsconfigs
<   verbs:
<   - get
<   - list
<   - watch
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
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: hacbs-jvm-operator
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   - artifactbuilds/status
<   - dependencybuilds
<   - dependencybuilds/status
<   - rebuiltartifacts
<   - rebuiltartifacts/status
<   - systemconfigs
<   - systemconfigs/status
<   - jbsconfigs
<   - jbsconfigs/status
<   - jvmimagescans
<   - jvmimagescans/status
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
<   - quota.openshift.io
<   resources:
<   - clusterresourcequotas
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - apiextensions.k8s.io
<   resources:
<   - customresourcedefinitions
<   verbs:
<   - get
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   - pipelineruns/status
<   - taskruns
<   - taskruns/status
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
<   - events.k8s.io
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-image-secrets
<   - jvm-build-git-secrets
<   resources:
<   - secrets
<   verbs:
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - create
< - apiGroups:
<   - apps
<   resources:
<   - deployments
<   verbs:
<   - get
<   - list
<   - watch
<   - create
< - apiGroups:
<   - apps
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - deployments
<   verbs:
<   - delete
<   - patch
<   - update
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-tls-ca
<   resources:
<   - configmaps
<   verbs:
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - create
< - apiGroups:
<   - ""
<   resources:
<   - services
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - services
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - resourcequotas
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - rolebindings
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - imagerepositories
<   verbs:
<   - create
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: hacbs-jvm-operator-view
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   - artifactbuilds/status
<   - dependencybuilds
<   - dependencybuilds/status
<   - systemconfigs
<   - systemconfigs/status
<   - jbsconfigs
<   - jbsconfigs/status
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: jvm-build-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: grant-argocd
<   namespace: jvm-build-service
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
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: hacbs-jvm-operator
< subjects:
< - kind: ServiceAccount
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: prometheus-jvm-build-service-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: jvm-build-service-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: jvm-build-service
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: jvm-build-service
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator-monitor
<   namespace: jvm-build-service
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: hacbs-jvm-operator
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: hacbs-jvm-operator
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         app: hacbs-jvm-operator
<     spec:
<       containers:
<       - args:
<         - --v=4
<         - --zap-log-level=info
<         env:
<         - name: USE_IMAGE_SPI
<           value: "true"
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
<         imagePullPolicy: IfNotPresent
<         name: hacbs-jvm-operator
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         resources:
<           limits:
<             cpu: 500m
<             memory: 1024Mi
<           requests:
<             cpu: 50m
<             memory: 1024Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: hacbs-jvm-operator
< ---
< apiVersion: jvmbuildservice.io/v1alpha1
< kind: SystemConfig
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: cluster
<   namespace: jvm-build-service
< spec:
<   builders:
<     ubi7:
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
<       priority: 1000
<       tag: jdk:7,maven:3.8.8;3.9.5,ant:1.9.16
<     ubi8:
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
<       priority: 2000
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: jvm-build-service
<   namespace: jvm-build-service
< spec:
<   endpoints:
<   - interval: 15s
<     path: /metrics
<     port: http-metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app: hacbs-jvm-operator 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 89179443 to 84d31c3e on Mon Aug 26 14:51:40 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index 02d7efd1..b83ed571 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -58,12 +58,6 @@ http {
             proxy_read_timeout 30m;
         }
 
-        location /api/k8s/apis/workspaces.konflux-ci.dev/ {
-            # Konflux Workspaces
-            rewrite ^/api/k8s/(.*)$ /$1 break;
-            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
-        }
-
         location /wss/k8s/ {
             # Kube-API websockets
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 42eae999..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 1d59ebf8..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 1d59ebf8..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7865 lines)</summary>  

``` 
./commit-89179443/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml
0a1,3652
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
>     controller-gen.kubebuilder.io/version: v0.12.1
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
>             description: The GitOpsDeploymentManagedEnvironment CR describes a remote
>               cluster which the GitOps Service will deploy to, via Argo CD. This resource
>               references a Secret resource, of type managed-gitops.redhat.com/managed-environment,
>               that contains the cluster credentials. The Secret should contain credentials
>               to a ServiceAccount/User account on the target cluster. This is referred
>               to as the Argo CD 'ServiceAccount' below.
>             properties:
>               allowInsecureSkipTLSVerify:
>                 description: 'AllowInsecureSkipTLSVerify controls whether Argo CD
>                   will accept a Kubernetes API URL with untrusted-TLS certificate.
>                   Optional: If true, the GitOps Service will allow Argo CD to connect
>                   to the specified cluster even if it is using an invalid or self-signed
>                   TLS certificate. Defaults to false.'
>                 type: boolean
>               apiURL:
>                 description: APIURL is the URL of the cluster to connect to
>                 type: string
>               clusterResources:
>                 description: "ClusterResources is used in conjuction with the Namespace
>                   field. If the .spec.namespaces field is non-empty, this field will
>                   be used to determine whether Argo CD should attempt to manage cluster-scoped
>                   resources. - If .spec.namespaces field is empty, this field is ignored.
>                   - If you are familiar with Argo CD: this field is equivalent to
>                   the field of the same name in the Argo CD Cluster Secret. \n Optional,
>                   default to false."
>                 type: boolean
>               createNewServiceAccount:
>                 description: "CreateNewServiceAccount controls whether Argo CD will
>                   use the ServiceAccount provided by the user in the Secret, or if
>                   a new ServiceAccount should be created. \n Optional, default to
>                   false. \n - If true, the GitOps Service will automatically create
>                   a ServiceAccount/ClusterRole/ClusterRoleBinding on the target cluster,
>                   using the credentials provided by the user in the secret. - Argo
>                   CD will then be configured to deploy with that new ServiceAccount.
>                   \n - Default: If false, it is assumed that the credentials provided
>                   by the user in the Secret are for a ServiceAccount on the cluster,
>                   and Argo CD will be configred to use the ServiceAccount referenced
>                   by the Secret of the user. No new ServiceAccount will be created.
>                   - This should be used, for example, when the ServiceAccount Argo
>                   CD does not have full cluster access (*/*/* at cluster scope)"
>                 type: boolean
>               credentialsSecret:
>                 description: ClusterCredentialsSecret is a reference to a Secret that
>                   contains cluster connection details. The cluster details should
>                   be in the form of a kubeconfig file.
>                 type: string
>               namespaces:
>                 description: "Namespaces allows one to indicate which Namespaces the
>                   Secret's ServiceAccount has access to. \n Optional, defaults to
>                   empty. If empty, it is assumed that the ServiceAccount has access
>                   to all Namespaces. \n The ServiceAccount that GitOps Service/Argo
>                   CD uses to deploy may not have access to all of the Namespaces on
>                   a cluster. If not specified, it is assumed that the Argo CD ServiceAccount
>                   has read/write at cluster-scope. - If you are familiar with Argo
>                   CD: this field is equivalent to the field of the same name in the
>                   Argo CD Cluster Secret."
>                 items:
>                   type: string
>                 type: array
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
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.12.1
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
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.12.1
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
>               operationState:
>                 description: OperationState contains information about any ongoing
>                   operations, such as a sync
>                 properties:
>                   finishedAt:
>                     description: FinishedAt contains time of operation completion
>                     format: date-time
>                     type: string
>                   message:
>                     description: Message holds any pertinent messages when attempting
>                       to perform operation (typically errors).
>                     type: string
>                   operation:
>                     description: Operation is the original requested operation
>                     properties:
>                       info:
>                         description: Info is a list of informational items for this
>                           operation
>                         items:
>                           properties:
>                             name:
>                               type: string
>                             value:
>                               type: string
>                           required:
>                           - name
>                           - value
>                           type: object
>                         type: array
>                       initiatedBy:
>                         description: InitiatedBy contains information about who initiated
>                           the operations
>                         properties:
>                           automated:
>                             description: Automated is set to true if operation was
>                               initiated automatically by the application controller.
>                             type: boolean
>                           username:
>                             description: Username contains the name of a user who
>                               started operation
>                             type: string
>                         type: object
>                       retry:
>                         description: Retry controls the strategy to apply if a sync
>                           fails
>                         properties:
>                           backoff:
>                             description: Backoff controls how to backoff on subsequent
>                               retries of failed syncs
>                             properties:
>                               duration:
>                                 description: Duration is the amount to back off. Default
>                                   unit is seconds, but could also be a duration (e.g.
>                                   "2m", "1h")
>                                 type: string
>                               factor:
>                                 description: Factor is a factor to multiply the base
>                                   duration after each failed retry
>                                 format: int64
>                                 type: integer
>                               maxDuration:
>                                 description: MaxDuration is the maximum amount of
>                                   time allowed for the backoff strategy
>                                 type: string
>                             type: object
>                           limit:
>                             description: Limit is the maximum number of attempts for
>                               retrying a failed sync. If set to 0, no retries will
>                               be performed.
>                             format: int64
>                             type: integer
>                         type: object
>                       sync:
>                         description: Sync contains parameters for the operation
>                         properties:
>                           dryRun:
>                             description: DryRun specifies to perform a `kubectl apply
>                               --dry-run` without actually performing the sync
>                             type: boolean
>                           manifests:
>                             description: Manifests is an optional field that overrides
>                               sync source with a local directory for development
>                             items:
>                               type: string
>                             type: array
>                           prune:
>                             description: Prune specifies to delete resources from
>                               the cluster that are no longer tracked in git
>                             type: boolean
>                           resources:
>                             description: Resources describes which resources shall
>                               be part of the sync
>                             items:
>                               description: SyncOperationResource contains resources
>                                 to sync.
>                               properties:
>                                 group:
>                                   type: string
>                                 kind:
>                                   type: string
>                                 name:
>                                   type: string
>                                 namespace:
>                                   type: string
>                               required:
>                               - kind
>                               - name
>                               type: object
>                             type: array
>                           revision:
>                             description: Revision is the revision (Git) or chart version
>                               (Helm) which to sync the application to If omitted,
>                               will use the revision specified in app spec.
>                             type: string
>                           revisions:
>                             description: Revisions is the list of revision (Git) or
>                               chart version (Helm) which to sync each source in sources
>                               field for the application to If omitted, will use the
>                               revision specified in app spec.
>                             items:
>                               type: string
>                             type: array
>                           source:
>                             description: Source overrides the source definition set
>                               in the application. This is typically set in a Rollback
>                               operation and is nil during a Sync operation
>                             properties:
>                               path:
>                                 description: Path is a directory path within the Git
>                                   repository, and is only valid for applications sourced
>                                   from Git.
>                                 type: string
>                               repoURL:
>                                 description: RepoURL is the URL to the repository
>                                   (Git or Helm) that contains the application manifests
>                                 type: string
>                               targetRevision:
>                                 description: TargetRevision defines the revision of
>                                   the source to sync the application to. In case of
>                                   Git, this can be commit, tag, or branch. If omitted,
>                                   will equal to HEAD. In case of Helm, this is a semver
>                                   tag for the Chart's version.
>                                 type: string
>                             required:
>                             - path
>                             - repoURL
>                             type: object
>                           sources:
>                             description: Sources overrides the source definition set
>                               in the application. This is typically set in a Rollback
>                               operation and is nil during a Sync operation
>                             items:
>                               description: ApplicationSource contains all required
>                                 information about the source of an application
>                               properties:
>                                 path:
>                                   description: Path is a directory path within the
>                                     Git repository, and is only valid for applications
>                                     sourced from Git.
>                                   type: string
>                                 repoURL:
>                                   description: RepoURL is the URL to the repository
>                                     (Git or Helm) that contains the application manifests
>                                   type: string
>                                 targetRevision:
>                                   description: TargetRevision defines the revision
>                                     of the source to sync the application to. In case
>                                     of Git, this can be commit, tag, or branch. If
>                                     omitted, will equal to HEAD. In case of Helm,
>                                     this is a semver tag for the Chart's version.
>                                   type: string
>                               required:
>                               - path
>                               - repoURL
>                               type: object
>                             type: array
>                           syncOptions:
>                             description: SyncOptions provide per-sync sync-options,
>                               e.g. Validate=false
>                             items:
>                               type: string
>                             type: array
>                           syncStrategy:
>                             description: SyncStrategy describes how to perform the
>                               sync
>                             properties:
>                               apply:
>                                 description: Apply will perform a `kubectl apply`
>                                   to perform the sync.
>                                 properties:
>                                   force:
>                                     description: Force indicates whether or not to
>                                       supply the --force flag to `kubectl apply`.
>                                       The --force flag deletes and re-create the resource,
>                                       when PATCH encounters conflict and has retried
>                                       for 5 times.
>                                     type: boolean
>                                 type: object
>                               hook:
>                                 description: Hook will submit any referenced resources
>                                   to perform the sync. This is the default strategy
>                                 properties:
>                                   force:
>                                     description: Force indicates whether or not to
>                                       supply the --force flag to `kubectl apply`.
>                                       The --force flag deletes and re-create the resource,
>                                       when PATCH encounters conflict and has retried
>                                       for 5 times.
>                                     type: boolean
>                                 type: object
>                             type: object
>                         type: object
>                     type: object
>                   phase:
>                     description: Phase is the current phase of the operation
>                     type: string
>                   retryCount:
>                     description: RetryCount contains time of operation retries
>                     format: int64
>                     type: integer
>                   startedAt:
>                     description: StartedAt contains time of operation start
>                     format: date-time
>                     type: string
>                   syncResult:
>                     description: SyncResult is the result of a Sync operation
>                     properties:
>                       managedNamespaceMetadata:
>                         description: ManagedNamespaceMetadata contains the current
>                           sync state of managed namespace metadata
>                         properties:
>                           annotations:
>                             additionalProperties:
>                               type: string
>                             type: object
>                           labels:
>                             additionalProperties:
>                               type: string
>                             type: object
>                         type: object
>                       resources:
>                         description: Resources contains a list of sync result items
>                           for each individual resource in a sync operation
>                         items:
>                           description: ResourceResult holds the operation result details
>                             of a specific resource
>                           properties:
>                             group:
>                               description: Group specifies the API group of the resource
>                               type: string
>                             hookPhase:
>                               description: HookPhase contains the state of any operation
>                                 associated with this resource OR hook This can also
>                                 contain values for non-hook resources.
>                               type: string
>                             hookType:
>                               description: HookType specifies the type of the hook.
>                                 Empty for non-hook resources
>                               type: string
>                             kind:
>                               description: Kind specifies the API kind of the resource
>                               type: string
>                             message:
>                               description: Message contains an informational or error
>                                 message for the last sync OR operation
>                               type: string
>                             name:
>                               description: Name specifies the name of the resource
>                               type: string
>                             namespace:
>                               description: Namespace specifies the target namespace
>                                 of the resource
>                               type: string
>                             status:
>                               description: Status holds the final result of the sync.
>                                 Will be empty if the resources is yet to be applied/pruned
>                                 and is always zero-value for hooks
>                               type: string
>                             syncPhase:
>                               description: SyncPhase indicates the particular phase
>                                 of the sync that this result was acquired in
>                               type: string
>                             version:
>                               description: Version specifies the API version of the
>                                 resource
>                               type: string
>                           required:
>                           - group
>                           - kind
>                           - name
>                           - namespace
>                           - version
>                           type: object
>                         type: array
>                       revision:
>                         description: Revision holds the revision this sync operation
>                           was performed to
>                         type: string
>                       revisions:
>                         description: Revisions holds the revision this sync operation
>                           was performed for respective indexed source in sources field
>                         items:
>                           type: string
>                         type: array
>                       source:
>                         description: Source records the application source information
>                           of the sync, used for comparing auto-sync
>                         properties:
>                           path:
>                             description: Path is a directory path within the Git repository,
>                               and is only valid for applications sourced from Git.
>                             type: string
>                           repoURL:
>                             description: RepoURL is the URL to the repository (Git
>                               or Helm) that contains the application manifests
>                             type: string
>                           targetRevision:
>                             description: TargetRevision defines the revision of the
>                               source to sync the application to. In case of Git, this
>                               can be commit, tag, or branch. If omitted, will equal
>                               to HEAD. In case of Helm, this is a semver tag for the
>                               Chart's version.
>                             type: string
>                         required:
>                         - path
>                         - repoURL
>                         type: object
>                       sources:
>                         description: Source records the application source information
>                           of the sync, used for comparing auto-sync
>                         items:
>                           description: ApplicationSource contains all required information
>                             about the source of an application
>                           properties:
>                             path:
>                               description: Path is a directory path within the Git
>                                 repository, and is only valid for applications sourced
>                                 from Git.
>                               type: string
>                             repoURL:
>                               description: RepoURL is the URL to the repository (Git
>                                 or Helm) that contains the application manifests
>                               type: string
>                             targetRevision:
>                               description: TargetRevision defines the revision of
>                                 the source to sync the application to. In case of
>                                 Git, this can be commit, tag, or branch. If omitted,
>                                 will equal to HEAD. In case of Helm, this is a semver
>                                 tag for the Chart's version.
>                               type: string
>                           required:
>                           - path
>                           - repoURL
>                           type: object
>                         type: array
>                     required:
>                     - revision
>                     type: object
>                 required:
>                 - operation
>                 - phase
>                 - startedAt
>                 type: object
>               reconciledState:
>                 description: ReconciledState contains the last version of the GitOpsDeployment
>                   resource that the ArgoCD Controller reconciled
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
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.12.1
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
>                 description: Reference to the target GitOpsDeployment to issue the
>                   synchronization operation to
>                 type: string
>               revisionID:
>                 description: 'Optional: If specified, tells the GitOps Service to
>                   deploy a particular git commit SHA'
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
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.12.1
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
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: metrics-reader
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-all-access
>   namespace: gitops-service-argocd
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-delete-pods-access
>   namespace: gitops-service-argocd
> rules:
> - apiGroups:
>   - ""
>   - apps
>   resources:
>   - pods
>   verbs:
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-access
>   namespace: gitops-service-argocd
> rules:
> - apiGroups:
>   - ""
>   - apps
>   resources:
>   - pods
>   - pods/log
>   - deployments
>   - events
>   - bindings
>   - replicas
>   - configmaps
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-all-access
>   namespace: gitops-service-argocd
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
>   name: gitops-namespaces-all-access
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-delete-pods-access
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   - apps
>   resources:
>   - pods
>   verbs:
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-access
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   - apps
>   resources:
>   - pods
>   - pods/log
>   - deployments
>   - events
>   - bindings
>   - replicas
>   - configmaps
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-all-access
>   namespace: gitops
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
>   name: appstudio-openshift-gitops-argocd-application-controller
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - '*'
> - nonResourceURLs:
>   - '*'
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-openshift-gitops-argocd-server
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - delete
>   - get
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/log
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-deploymenttargetclass-viewer-role
> rules:
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
>   - deploymenttargetclasses/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
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
>   - deploymenttargetclaims
>   verbs:
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargetclaims/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargetclaims/status
>   verbs:
>   - get
>   - patch
>   - update
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
>   - deploymenttargets/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargets/status
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
>   - create
>   - delete
>   - get
>   - list
>   - update
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
> - apiGroups:
>   - toolchain.dev.openshift.com
>   resources:
>   - spacerequests
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - toolchain.dev.openshift.com
>   resources:
>   - spacerequests/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - toolchain.dev.openshift.com
>   resources:
>   - spacerequests/status
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
>   name: gitops-component-maintainer
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - rbac.authorization.k8s.io
>   resources:
>   - clusterrolebindings
>   - clusterroles
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   - roles
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - apps
>   resources:
>   - bindings
>   - configmaps
>   - daemonsets
>   - deployments
>   - events
>   - namespaces
>   - nodes
>   - pods
>   - pods/log
>   - replicas
>   - replicasets
>   - routes
>   - secrets
>   - serviceaccounts
>   - services
>   - statefulsets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - delete
> - apiGroups:
>   - admissionregistration.k8s.io
>   resources:
>   - validatingwebhookconfigurations
>   - mutatingwebhookconfigurations
>   verbs:
>   - get
>   - list
>   - watch
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - catalogsources
>   - clusterserviceversions
>   - installplans
>   - operatorgroups
>   - subscriptions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - toolchain.dev.openshift.com
>   resources:
>   - spacerequests
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - alertmanagers
>   - prometheuses
>   - prometheusrules
>   - servicemonitors
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - installplans
>   verbs:
>   - get
>   - list
>   - update
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - persistentvolumeclaims
>   - persistentvolumes
>   - pods
>   - secrets
>   - serviceaccounts
>   - services
>   verbs:
>   - delete
>   - get
>   - list
> - apiGroups:
>   - apps
>   resources:
>   - daemonsets
>   - deployments
>   - replicasets
>   - statefulsets
>   verbs:
>   - delete
>   - get
>   - list
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
>   - discovery.k8s.io
>   resources:
>   - endpointslices
>   verbs:
>   - delete
>   - get
>   - list
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
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingressclasses
>   - ingresses
>   verbs:
>   - delete
>   - get
>   - list
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - delete
>   - get
>   - list
> - apiGroups:
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   - roles
>   verbs:
>   - delete
>   - get
>   - list
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - delete
>   - get
>   - list
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggertemplates
>   verbs:
>   - delete
>   - get
>   - list
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
>   name: gitops-service-argocd-namespace-all-access
>   namespace: gitops-service-argocd
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-namespaces-all-access
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops-admins
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-argocd-namespace-read-access
>   namespace: gitops-service-argocd
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-namespaces-read-access
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops
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
>   name: gitops-namespace-all-access
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-namespaces-all-access
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops-admins
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespace-read-access
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-namespaces-read-access
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops
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
>   name: gitops-service-gitops-component-maintainers
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops-admins
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-openshift-gitops-argocd-application-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-openshift-gitops-argocd-application-controller
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-openshift-gitops-argocd-server
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-openshift-gitops-argocd-server
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-server
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-deploymenttargetclass-viewer-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-appstudio-service-deploymenttargetclass-viewer-role
> subjects:
> - kind: Group
>   name: system:authenticated
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
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: prometheus-gitops-appstudio-service-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-appstudio-service-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: prometheus-gitops-core-service-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-core-service-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: prometheus-gitops-service-agent-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-service-agent-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
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
> kind: Secret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     kubernetes.io/service-account.name: metrics-reader
>   name: metrics-reader
>   namespace: gitops
> type: kubernetes.io/service-account-token
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
>     service.beta.openshift.io/serving-cert-secret-name: core-webhook-server-cert
>   name: gitops-core-service-webhook-service
>   namespace: gitops
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: backend-controller-manager
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
>         - --zap-log-level
>         - info
>         command:
>         - appstudio-controller
>         image: quay.io/redhat-appstudio/gitops-service:87e1f9acc67bf033d2159951ba6489f0836586ef
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
>             memory: 3172Mi
>           requests:
>             cpu: 200m
>             memory: 1024Mi
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
>         - --http2-disable=true
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 100m
>             memory: 100Mi
>           requests:
>             cpu: 50m
>             memory: 50Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
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
>         - --zap-log-level
>         - info
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
>         - name: ENABLE_APPPROJECT_ISOLATION
>           value: "true"
>         image: quay.io/redhat-appstudio/gitops-service:87e1f9acc67bf033d2159951ba6489f0836586ef
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
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         - --http2-disable=true
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 100m
>             memory: 100Mi
>           requests:
>             cpu: 50m
>             memory: 50Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>         terminationMessagePath: /dev/termination-log
>         terminationMessagePolicy: File
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: gitops-core-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: core-webhook-server-cert
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
>         - --zap-log-level
>         - info
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
>         - name: ENABLE_APPPROJECT_ISOLATION
>           value: "true"
>         image: quay.io/redhat-appstudio/gitops-service:87e1f9acc67bf033d2159951ba6489f0836586ef
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
>         - --http2-disable=true
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 100m
>             memory: 100Mi
>           requests:
>             cpu: 50m
>             memory: 50Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
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
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: DeploymentTargetClass
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: isolation-level-namespace
> spec:
>   parameters: {}
>   provisioner: appstudio.redhat.com/devsandbox
>   reclaimPolicy: Delete
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
>     env:
>     - name: ARGOCD_RECONCILIATION_TIMEOUT
>       value: 60s
>     logLevel: info
>     processors: {}
>     resources:
>       limits:
>         cpu: "2"
>         memory: 6Gi
>       requests:
>         cpu: "1"
>         memory: 3Gi
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
>     env:
>     - name: ARGOCD_RECONCILIATION_TIMEOUT
>       value: 60s
>     execTimeout: 30
>     extraRepoCommandArgs:
>     - --max-combined-directory-manifests-size
>     - 10M
>     - --parallelismlimit
>     - "20"
>     logLevel: info
>     resources:
>       limits:
>         cpu: "1"
>         memory: 2Gi
>       requests:
>         cpu: 500m
>         memory: 512Mi
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
>     logLevel: info
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
>       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: gitops-service-postgres-rds-config
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service
>   namespace: gitops
> spec:
>   endpoints:
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
>     path: /metrics
>     port: metrics
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: appstudio-controller-manager
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service
>   namespace: gitops
> spec:
>   endpoints:
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
>     path: /metrics
>     port: metrics
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: backend-controller-manager
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent
>   namespace: gitops
> spec:
>   endpoints:
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
>     path: /metrics
>     port: metrics
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: cluster-agent-controller-manager
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
>   channel: gitops-1.9
>   installPlanApproval: Automatic
>   name: openshift-gitops-operator
>   source: redhat-operators
>   sourceNamespace: openshift-marketplace
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: MutatingWebhookConfiguration
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     service.beta.openshift.io/inject-cabundle: "true"
>   creationTimestamp: null
>   name: gitops-core-service-mutating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeployment
>   failurePolicy: Fail
>   name: mgitopsdeployment.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeployments
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentmanagedenvironment
>   failurePolicy: Fail
>   name: mgitopsdeploymentmanagedenvironment.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeploymentmanagedenvironments
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentrepositorycredential
>   failurePolicy: Fail
>   name: mgitopsdeploymentrepositorycredential.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeploymentrepositorycredentials
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /mutate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentsyncrun
>   failurePolicy: Fail
>   name: mgitopsdeploymentsyncrun.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeploymentsyncruns
>   sideEffects: None
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: gitops-appstudio-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: gitops-appstudio-service-webhook-service
>       namespace: gitops
>       path: /validate-appstudio-redhat-com-v1alpha1-environment
>   failurePolicy: Fail
>   name: venvironment.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - environments
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
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     service.beta.openshift.io/inject-cabundle: "true"
>   creationTimestamp: null
>   name: gitops-core-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeployment
>   failurePolicy: Fail
>   name: vgitopsdeployment.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeployments
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentmanagedenvironment
>   failurePolicy: Fail
>   name: vgitopsdeploymentmanagedenvironment.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeploymentmanagedenvironments
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentrepositorycredential
>   failurePolicy: Fail
>   name: vgitopsdeploymentrepositorycredential.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeploymentrepositorycredentials
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-core-service-webhook-service
>       namespace: gitops
>       path: /validate-managed-gitops-redhat-com-v1alpha1-gitopsdeploymentsyncrun
>   failurePolicy: Fail
>   name: vgitopsdeploymentsyncrun.kb.io
>   rules:
>   - apiGroups:
>     - managed-gitops.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - gitopsdeploymentsyncruns
>   sideEffects: None
./commit-89179443/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
0a1,1579
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
>       - v1beta2
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
>                         description: Env is an array of standard environment variables
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
>     served: true
>     storage: false
>     subresources:
>       status: {}
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     deprecated: true
>     deprecationWarning: The v1beta1 version is deprecated and will be automatically
>       migrated to v1beta2
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
>                         description: Env is an array of standard environment variables
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
>     storage: false
>     subresources:
>       status: {}
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     name: v1beta2
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
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
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
> kind: ClusterRole
> metadata:
>   name: manage-integrationtestscenarios
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
>   - delete
>   - deletecollection
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
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: manage-integrationtestscenarios
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: manage-integrationtestscenarios
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-integration
> ---
> apiVersion: v1
> data:
>   CONSOLE_NAME: Red Hat Konflux
>   CONSOLE_URL: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
>     .Namespace }}/pipelinerun/{{ .PipelineRunName }}
>   CONSOLE_URL_TASKLOG: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
>     .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}
> kind: ConfigMap
> metadata:
>   name: integration-config-gkchk67fck
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
> data:
>   FINALLY_TIMEOUT: 2h
>   PIPELINE_TIMEOUT: 6h
>   TASKS_TIMEOUT: 4h
> kind: ConfigMap
> metadata:
>   name: pipelinerun-options-g6875ct7d8
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
>         - name: CONSOLE_NAME
>           valueFrom:
>             configMapKeyRef:
>               key: CONSOLE_NAME
>               name: integration-config-gkchk67fck
>               optional: true
>         - name: CONSOLE_URL
>           valueFrom:
>             configMapKeyRef:
>               key: CONSOLE_URL
>               name: integration-config-gkchk67fck
>               optional: true
>         - name: CONSOLE_URL_TASKLOG
>           valueFrom:
>             configMapKeyRef:
>               key: CONSOLE_URL_TASKLOG
>               name: integration-config-gkchk67fck
>               optional: true
>         - name: PIPELINE_TIMEOUT
>           valueFrom:
>             configMapKeyRef:
>               key: PIPELINE_TIMEOUT
>               name: pipelinerun-options-g6875ct7d8
>               optional: true
>         - name: TASKS_TIMEOUT
>           valueFrom:
>             configMapKeyRef:
>               key: TASKS_TIMEOUT
>               name: pipelinerun-options-g6875ct7d8
>               optional: true
>         - name: FINALLY_TIMEOUT
>           valueFrom:
>             configMapKeyRef:
>               key: FINALLY_TIMEOUT
>               name: pipelinerun-options-g6875ct7d8
>               optional: true
>         image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
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
>             memory: 1500Mi
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
>             image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
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
>       key: production/pipeline-service/stone-prod-p02/github-app
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
>       path: /validate-appstudio-redhat-com-v1beta2-integrationtestscenario
>   failurePolicy: Fail
>   name: vintegrationtestscenario.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1beta2
>     operations:
>     - CREATE
>     - UPDATE
>     - DELETE
>     resources:
>     - integrationtestscenarios
>   sideEffects: None
./commit-89179443/production/components/jvm-build-service/production/kustomize.out.yaml
1,1508d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: jvm-build-service
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: artifactbuilds.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: ArtifactBuild
<     listKind: ArtifactBuildList
<     plural: artifactbuilds
<     singular: artifactbuild
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.gav
<       name: GAV
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: ArtifactBuild TODO provide godoc description
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
<             properties:
<               gav:
<                 description: GAV is the groupID:artifactID:version tuple seen in maven
<                   pom.xml files
<                 type: string
<             type: object
<           status:
<             properties:
<               message:
<                 type: string
<               scm:
<                 properties:
<                   commitHash:
<                     type: string
<                   path:
<                     type: string
<                   private:
<                     type: boolean
<                   scmType:
<                     type: string
<                   scmURL:
<                     type: string
<                   tag:
<                     type: string
<                 type: object
<               state:
<                 description: 'TODO: conditions?'
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: dependencybuilds.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: DependencyBuild
<     listKind: DependencyBuildList
<     plural: dependencybuilds
<     singular: dependencybuild
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.scm.scmURL
<       name: URL
<       type: string
<     - jsonPath: .spec.scm.tag
<       name: Tag
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     - jsonPath: .status.message
<       name: Message
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: DependencyBuild TODO provide godoc description
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
<             properties:
<               scm:
<                 properties:
<                   commitHash:
<                     type: string
<                   path:
<                     type: string
<                   private:
<                     type: boolean
<                   scmType:
<                     type: string
<                   scmURL:
<                     type: string
<                   tag:
<                     type: string
<                 type: object
<               version:
<                 type: string
<             type: object
<           status:
<             properties:
<               buildAttempts:
<                 items:
<                   properties:
<                     build:
<                       properties:
<                         complete:
<                           type: boolean
<                         diagnosticDockerFile:
<                           type: string
<                         finishTime:
<                           format: int64
<                           type: integer
<                         pipelineName:
<                           type: string
<                         results:
<                           properties:
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
<                             gavs:
<                               description: The produced GAVs
<                               items:
<                                 type: string
<                               type: array
<                             gitArchive:
<                               description: The git archive source information
<                               properties:
<                                 sha:
<                                   type: string
<                                 tag:
<                                   type: string
<                                 url:
<                                   type: string
<                               type: object
<                             hermeticBuildImage:
<                               description: The hermetic build image produced by the
<                                 build
<                               type: string
<                             image:
<                               description: the image resulting from the run
<                               type: string
<                             imageDigest:
<                               type: string
<                             pipelineResults:
<                               description: The Tekton results
<                               properties:
<                                 logs:
<                                   type: string
<                                 record:
<                                   type: string
<                                 result:
<                                   type: string
<                               type: object
<                             verificationFailures:
<                               type: string
<                             verified:
<                               description: If the resulting image was verified
<                               type: boolean
<                           required:
<                           - imageDigest
<                           type: object
<                         startTime:
<                           format: int64
<                           type: integer
<                         succeeded:
<                           type: boolean
<                       required:
<                       - complete
<                       - pipelineName
<                       type: object
<                     buildId:
<                       type: string
<                     buildRecipe:
<                       properties:
<                         additionalDownloads:
<                           items:
<                             properties:
<                               binaryPath:
<                                 type: string
<                               fileName:
<                                 type: string
<                               packageName:
<                                 type: string
<                               sha256:
<                                 type: string
<                               type:
<                                 type: string
<                               uri:
<                                 type: string
<                             required:
<                             - type
<                             type: object
<                           type: array
<                         additionalMemory:
<                           type: integer
<                         allowedDifferences:
<                           items:
<                             type: string
<                           type: array
<                         commandLine:
<                           items:
<                             type: string
<                           type: array
<                         contextPath:
<                           type: string
<                         disableSubmodules:
<                           type: boolean
<                         disabledPlugins:
<                           items:
<                             type: string
<                           type: array
<                         enforceVersion:
<                           type: string
<                         image:
<                           type: string
<                         javaVersion:
<                           type: string
<                         pipeline:
<                           description: Deprecated
<                           type: string
<                         postBuildScript:
<                           type: string
<                         preBuildScript:
<                           type: string
<                         repositories:
<                           items:
<                             type: string
<                           type: array
<                         tool:
<                           type: string
<                         toolVersion:
<                           type: string
<                         toolVersions:
<                           additionalProperties:
<                             type: string
<                           type: object
<                       type: object
<                   type: object
<                 type: array
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                     tool:
<                       type: string
<                   type: object
<                 type: array
<               commitTime:
<                 format: int64
<                 type: integer
<               conditions:
<                 description: 'Conditions for capturing generic status NOTE: inspecting
<                   the fabric8 Status class, it looked analogous to k8s Condition,
<                   and then I took the liberty of making it an array, given best practices
<                   in the k8s/ocp ecosystems'
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource. --- This struct is intended for direct
<                     use as an array at the field path .status.conditions.  For example,
<                     \n \ttype FooStatus struct{ \t    // Represents the observations
<                     of a foo's current state. \t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
<                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
<                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
<                     \t}"
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
<               contaminates:
<                 items:
<                   properties:
<                     allowed:
<                       type: boolean
<                     buildId:
<                       type: string
<                     contaminatedArtifacts:
<                       items:
<                         type: string
<                       type: array
<                     gav:
<                       type: string
<                     rebuildAvailable:
<                       type: boolean
<                     source:
<                       type: string
<                   type: object
<                 type: array
<               deployedArtifacts:
<                 items:
<                   type: string
<                 type: array
<               discoveryPipelineResults:
<                 description: A representation of the Tekton Results records for a
<                   pipeline
<                 properties:
<                   logs:
<                     type: string
<                   record:
<                     type: string
<                   result:
<                     type: string
<                 type: object
<               failedVerification:
<                 type: boolean
<               hermetic:
<                 type: boolean
<               message:
<                 type: string
<               pipelineRetries:
<                 type: integer
<               potentialBuildRecipes:
<                 description: PotentialBuildRecipes additional recipes to try if the
<                   current recipe fails
<                 items:
<                   properties:
<                     additionalDownloads:
<                       items:
<                         properties:
<                           binaryPath:
<                             type: string
<                           fileName:
<                             type: string
<                           packageName:
<                             type: string
<                           sha256:
<                             type: string
<                           type:
<                             type: string
<                           uri:
<                             type: string
<                         required:
<                         - type
<                         type: object
<                       type: array
<                     additionalMemory:
<                       type: integer
<                     allowedDifferences:
<                       items:
<                         type: string
<                       type: array
<                     commandLine:
<                       items:
<                         type: string
<                       type: array
<                     contextPath:
<                       type: string
<                     disableSubmodules:
<                       type: boolean
<                     disabledPlugins:
<                       items:
<                         type: string
<                       type: array
<                     enforceVersion:
<                       type: string
<                     image:
<                       type: string
<                     javaVersion:
<                       type: string
<                     pipeline:
<                       description: Deprecated
<                       type: string
<                     postBuildScript:
<                       type: string
<                     preBuildScript:
<                       type: string
<                     repositories:
<                       items:
<                         type: string
<                       type: array
<                     tool:
<                       type: string
<                     toolVersion:
<                       type: string
<                     toolVersions:
<                       additionalProperties:
<                         type: string
<                       type: object
<                   type: object
<                 type: array
<               potentialBuildRecipesIndex:
<                 type: integer
<               state:
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: jbsconfigs.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: JBSConfig
<     listKind: JBSConfigList
<     plural: jbsconfigs
<     singular: jbsconfig
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .status.message
<       name: Message
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: JBSConfig TODO provide godoc description
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
<             properties:
<               additionalRecipes:
<                 items:
<                   type: string
<                 type: array
<               buildSettings:
<                 properties:
<                   buildRequestCPU:
<                     description: The requested CPU for the build and deploy steps
<                       of a pipeline
<                     type: string
<                   buildRequestMemory:
<                     description: The requested memory for the build and deploy steps
<                       of a pipeline
<                     type: string
<                   taskLimitCPU:
<                     description: The CPU limit for all other steps of a pipeline
<                     type: string
<                   taskLimitMemory:
<                     description: The memory limit for all other steps of a pipeline
<                     type: string
<                   taskRequestCPU:
<                     description: The requested CPU for all other steps of a pipeline
<                     type: string
<                   taskRequestMemory:
<                     description: The requested memory for all other steps of a pipeline
<                     type: string
<                 type: object
<               cacheSettings:
<                 properties:
<                   disableTLS:
<                     type: boolean
<                   ioThreads:
<                     type: string
<                   limitCPU:
<                     type: string
<                   limitMemory:
<                     type: string
<                   requestCPU:
<                     type: string
<                   requestMemory:
<                     type: string
<                   storage:
<                     type: string
<                   workerThreads:
<                     type: string
<                 type: object
<               enableRebuilds:
<                 type: boolean
<               gitSourceArchive:
<                 properties:
<                   disableSSLVerification:
<                     type: boolean
<                   identity:
<                     type: string
<                   url:
<                     type: string
<                 type: object
<               hermeticBuilds:
<                 type: string
<               mavenBaseLocations:
<                 additionalProperties:
<                   type: string
<                 type: object
<               mavenDeployment:
<                 properties:
<                   repository:
<                     type: string
<                   username:
<                     type: string
<                 type: object
<               registry:
<                 properties:
<                   dontReuseExisting:
<                     type: boolean
<                   host:
<                     type: string
<                   insecure:
<                     type: boolean
<                   owner:
<                     type: string
<                   port:
<                     type: string
<                   prependTag:
<                     type: string
<                   private:
<                     description: if this is true and we are automatically creating
<                       registries then we will make it private
<                     type: boolean
<                   repository:
<                     type: string
<                   secretName:
<                     type: string
<                 type: object
<               relocationPatterns:
<                 items:
<                   properties:
<                     relocationPattern:
<                       properties:
<                         buildPolicy:
<                           type: string
<                         patterns:
<                           items:
<                             properties:
<                               pattern:
<                                 properties:
<                                   from:
<                                     type: string
<                                   to:
<                                     type: string
<                                 required:
<                                 - from
<                                 - to
<                                 type: object
<                             required:
<                             - pattern
<                             type: object
<                           type: array
<                       type: object
<                   required:
<                   - relocationPattern
<                   type: object
<                 type: array
<               requireArtifactVerification:
<                 description: If this is true then the build will fail if artifact
<                   verification fails otherwise deploy will happen as normal, but a
<                   field will be set on the DependencyBuild
<                 type: boolean
<               sharedRegistries:
<                 items:
<                   properties:
<                     host:
<                       type: string
<                     insecure:
<                       type: boolean
<                     owner:
<                       type: string
<                     port:
<                       type: string
<                     prependTag:
<                       type: string
<                     repository:
<                       type: string
<                     secretName:
<                       type: string
<                   type: object
<                 type: array
<             type: object
<           status:
<             properties:
<               imageRegistry:
<                 properties:
<                   host:
<                     type: string
<                   insecure:
<                     type: boolean
<                   owner:
<                     type: string
<                   port:
<                     type: string
<                   prependTag:
<                     type: string
<                   repository:
<                     type: string
<                   secretName:
<                     type: string
<                 type: object
<               message:
<                 type: string
<               rebuildsPossible:
<                 type: boolean
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: jvmimagescans.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: JvmImageScan
<     listKind: JvmImageScanList
<     plural: jvmimagescans
<     singular: jvmimagescan
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.image
<       name: Image
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: JvmImageScan TODO provide godoc description
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
<             properties:
<               image:
<                 type: string
<             type: object
<           status:
<             properties:
<               digest:
<                 type: string
<               message:
<                 type: string
<               results:
<                 items:
<                   properties:
<                     attributes:
<                       additionalProperties:
<                         type: string
<                       type: object
<                     gav:
<                       type: string
<                     source:
<                       type: string
<                   type: object
<                 type: array
<               state:
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: rebuiltartifacts.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: RebuiltArtifact
<     listKind: RebuiltArtifactList
<     plural: rebuiltartifacts
<     singular: rebuiltartifact
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.gav
<       name: GAV
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: RebuiltArtifact An artifact that has been rebuilt and deployed
<           to S3 or a Container registry
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
<             properties:
<               digest:
<                 type: string
<               gav:
<                 description: The GAV of the rebuilt artifact
<                 type: string
<               image:
<                 type: string
<             type: object
<           status:
<             type: object
<         required:
<         - spec
<         type: object
<     served: true
<     storage: true
<     subresources: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: systemconfigs.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: SystemConfig
<     listKind: SystemConfigList
<     plural: systemconfigs
<     singular: systemconfig
<   scope: Cluster
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: SystemConfig TODO provide godoc description
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
<             properties:
<               builders:
<                 additionalProperties:
<                   properties:
<                     image:
<                       type: string
<                     priority:
<                       type: integer
<                     tag:
<                       type: string
<                   type: object
<                 type: object
<               maxAdditionalMemory:
<                 type: integer
<               recipeDatabase:
<                 type: string
<             type: object
<           status:
<             type: object
<         required:
<         - spec
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: metrics-reader
<   namespace: jvm-build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: hacbs-jvm-cache
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - rebuiltartifacts
<   - artifactbuilds
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds/status
<   verbs:
<   - patch
<   - update
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   verbs:
<   - patch
<   - update
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - jbsconfigs
<   verbs:
<   - get
<   - list
<   - watch
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
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: hacbs-jvm-operator
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   - artifactbuilds/status
<   - dependencybuilds
<   - dependencybuilds/status
<   - rebuiltartifacts
<   - rebuiltartifacts/status
<   - systemconfigs
<   - systemconfigs/status
<   - jbsconfigs
<   - jbsconfigs/status
<   - jvmimagescans
<   - jvmimagescans/status
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
<   - quota.openshift.io
<   resources:
<   - clusterresourcequotas
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - apiextensions.k8s.io
<   resources:
<   - customresourcedefinitions
<   verbs:
<   - get
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   - pipelineruns/status
<   - taskruns
<   - taskruns/status
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
<   - events.k8s.io
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-image-secrets
<   - jvm-build-git-secrets
<   resources:
<   - secrets
<   verbs:
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - create
< - apiGroups:
<   - apps
<   resources:
<   - deployments
<   verbs:
<   - get
<   - list
<   - watch
<   - create
< - apiGroups:
<   - apps
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - deployments
<   verbs:
<   - delete
<   - patch
<   - update
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-tls-ca
<   resources:
<   - configmaps
<   verbs:
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - create
< - apiGroups:
<   - ""
<   resources:
<   - services
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - services
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - resourcequotas
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - rolebindings
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - imagerepositories
<   verbs:
<   - create
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: hacbs-jvm-operator-view
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   - artifactbuilds/status
<   - dependencybuilds
<   - dependencybuilds/status
<   - systemconfigs
<   - systemconfigs/status
<   - jbsconfigs
<   - jbsconfigs/status
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: jvm-build-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: grant-argocd
<   namespace: jvm-build-service
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
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: hacbs-jvm-operator
< subjects:
< - kind: ServiceAccount
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: prometheus-jvm-build-service-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: jvm-build-service-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: jvm-build-service
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: jvm-build-service
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator-monitor
<   namespace: jvm-build-service
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: hacbs-jvm-operator
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: hacbs-jvm-operator
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         app: hacbs-jvm-operator
<     spec:
<       containers:
<       - args:
<         - --v=4
<         - --zap-log-level=info
<         env:
<         - name: USE_IMAGE_SPI
<           value: "true"
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
<         imagePullPolicy: IfNotPresent
<         name: hacbs-jvm-operator
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         resources:
<           limits:
<             cpu: 500m
<             memory: 1024Mi
<           requests:
<             cpu: 50m
<             memory: 1024Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: hacbs-jvm-operator
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: quaytoken
<   namespace: jvm-build-service
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/image-controller
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quaytoken
< ---
< apiVersion: jvmbuildservice.io/v1alpha1
< kind: SystemConfig
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: cluster
<   namespace: jvm-build-service
< spec:
<   builders:
<     ubi7:
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
<       priority: 1000
<       tag: jdk:7,maven:3.8.8;3.9.5,ant:1.9.16
<     ubi8:
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
<       priority: 2000
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: jvm-build-service
<   namespace: jvm-build-service
< spec:
<   endpoints:
<   - interval: 15s
<     path: /metrics
<     port: http-metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app: hacbs-jvm-operator
./commit-89179443/production/components/multi-platform-controller/production/kustomize.out.yaml
1,1085d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: pipeline-anyuid-role
<   namespace: multi-platform-controller
< rules:
< - apiGroups:
<   - security.openshift.io
<   resourceNames:
<   - anyuid
<   resources:
<   - securitycontextconstraints
<   verbs:
<   - use
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   creationTimestamp: null
<   labels:
<     app: multi-platform-controller
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: multi-platform-controller
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   verbs:
<   - create
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
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - apiextensions.k8s.io
<   resources:
<   - customresourcedefinitions
<   verbs:
<   - get
< - apiGroups:
<   - tekton.dev
<   resources:
<   - taskruns
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
<   - taskruns/status
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
< kind: ClusterRole
< metadata:
<   name: multi-platform-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: grant-argocd
<   namespace: multi-platform-controller
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
<   labels:
<     app: multi-platform-controller
<   name: pipeline-anyuid-rolebinding
<   namespace: multi-platform-controller
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-anyuid-role
< subjects:
< - kind: ServiceAccount
<   name: pipeline
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller
< subjects:
< - kind: ServiceAccount
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-multi-platform-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< data:
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
<   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-amd64.aws-secret: aws-account
<   dynamic.linux-amd64.instance-type: m6a.large
<   dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-amd64.max-instances: "10"
<   dynamic.linux-amd64.region: us-east-1
<   dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-amd64.type: aws
<   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-arm64.aws-secret: aws-account
<   dynamic.linux-arm64.instance-type: m6g.large
<   dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-arm64.max-instances: "10"
<   dynamic.linux-arm64.region: us-east-1
<   dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-arm64.type: aws
<   dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
<   dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c2xlarge-amd64.max-instances: "10"
<   dynamic.linux-c2xlarge-amd64.region: us-east-1
<   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c2xlarge-amd64.type: aws
<   dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
<   dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c2xlarge-arm64.max-instances: "10"
<   dynamic.linux-c2xlarge-arm64.region: us-east-1
<   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c2xlarge-arm64.type: aws
<   dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
<   dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c4xlarge-amd64.max-instances: "10"
<   dynamic.linux-c4xlarge-amd64.region: us-east-1
<   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c4xlarge-amd64.type: aws
<   dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
<   dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c4xlarge-arm64.max-instances: "10"
<   dynamic.linux-c4xlarge-arm64.region: us-east-1
<   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c4xlarge-arm64.type: aws
<   dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
<   dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c8xlarge-amd64.max-instances: "10"
<   dynamic.linux-c8xlarge-amd64.region: us-east-1
<   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c8xlarge-amd64.type: aws
<   dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
<   dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c8xlarge-arm64.max-instances: "10"
<   dynamic.linux-c8xlarge-arm64.region: us-east-1
<   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c8xlarge-arm64.type: aws
<   dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
<   dynamic.linux-cxlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-cxlarge-amd64.max-instances: "10"
<   dynamic.linux-cxlarge-amd64.region: us-east-1
<   dynamic.linux-cxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-cxlarge-amd64.type: aws
<   dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
<   dynamic.linux-cxlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-cxlarge-arm64.max-instances: "10"
<   dynamic.linux-cxlarge-arm64.region: us-east-1
<   dynamic.linux-cxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-cxlarge-arm64.type: aws
<   dynamic.linux-extra-fast-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-extra-fast-amd64.aws-secret: aws-account
<   dynamic.linux-extra-fast-amd64.disk: "200"
<   dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
<   dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-extra-fast-amd64.max-instances: "10"
<   dynamic.linux-extra-fast-amd64.region: us-east-1
<   dynamic.linux-extra-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-extra-fast-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-extra-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-extra-fast-amd64.type: aws
<   dynamic.linux-fast-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-fast-amd64.aws-secret: aws-account
<   dynamic.linux-fast-amd64.disk: "200"
<   dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
<   dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-fast-amd64.max-instances: "10"
<   dynamic.linux-fast-amd64.region: us-east-1
<   dynamic.linux-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-fast-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-fast-amd64.type: aws
<   dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
<   dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m2xlarge-amd64.max-instances: "10"
<   dynamic.linux-m2xlarge-amd64.region: us-east-1
<   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m2xlarge-amd64.type: aws
<   dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
<   dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m2xlarge-arm64.max-instances: "10"
<   dynamic.linux-m2xlarge-arm64.region: us-east-1
<   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m2xlarge-arm64.type: aws
<   dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
<   dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m4xlarge-amd64.max-instances: "10"
<   dynamic.linux-m4xlarge-amd64.region: us-east-1
<   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m4xlarge-amd64.type: aws
<   dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
<   dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m4xlarge-arm64.max-instances: "10"
<   dynamic.linux-m4xlarge-arm64.region: us-east-1
<   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m4xlarge-arm64.type: aws
<   dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
<   dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m8xlarge-amd64.max-instances: "10"
<   dynamic.linux-m8xlarge-amd64.region: us-east-1
<   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m8xlarge-amd64.type: aws
<   dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
<   dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m8xlarge-arm64.max-instances: "10"
<   dynamic.linux-m8xlarge-arm64.region: us-east-1
<   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m8xlarge-arm64.type: aws
<   dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-mlarge-amd64.aws-secret: aws-account
<   dynamic.linux-mlarge-amd64.instance-type: m6a.large
<   dynamic.linux-mlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mlarge-amd64.max-instances: "10"
<   dynamic.linux-mlarge-amd64.region: us-east-1
<   dynamic.linux-mlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-mlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mlarge-amd64.type: aws
<   dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-mlarge-arm64.aws-secret: aws-account
<   dynamic.linux-mlarge-arm64.instance-type: m6g.large
<   dynamic.linux-mlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mlarge-arm64.max-instances: "10"
<   dynamic.linux-mlarge-arm64.region: us-east-1
<   dynamic.linux-mlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-mlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mlarge-arm64.type: aws
<   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
<   dynamic.linux-mxlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mxlarge-amd64.max-instances: "10"
<   dynamic.linux-mxlarge-amd64.region: us-east-1
<   dynamic.linux-mxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mxlarge-amd64.type: aws
<   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
<   dynamic.linux-mxlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mxlarge-arm64.max-instances: "10"
<   dynamic.linux-mxlarge-arm64.region: us-east-1
<   dynamic.linux-mxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mxlarge-arm64.type: aws
<   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-root-amd64.aws-secret: aws-account
<   dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
<   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-root-amd64.max-instances: "10"
<   dynamic.linux-root-amd64.region: us-east-1
<   dynamic.linux-root-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-root-amd64.sudo-commands: /usr/bin/podman
<   dynamic.linux-root-amd64.type: aws
<   dynamic.linux-root-amd64.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<      echo "File system exists on the disk."
<     else
<      echo "No file system found on the disk /dev/nvme1n1"
<      mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<      echo "Directory '/home/var-lib-containers' exist"
<     else
<      echo "Directory '/home/var-lib-containers' doesn't exist"
<      mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<      echo "Directory '/home/var-tmp' exist"
<     else
<      echo "Directory '/home/var-tmp' doesn't exist"
<      mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<     echo "ec2-user home exists"
<     else
<     echo "ec2-user home doesn't exist"
<     mkdir -p /home/ec2-user/.ssh
<     chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     --//--
<   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-root-arm64.aws-secret: aws-account
<   dynamic.linux-root-arm64.disk: "200"
<   dynamic.linux-root-arm64.instance-type: m6g.large
<   dynamic.linux-root-arm64.iops: "16000"
<   dynamic.linux-root-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-root-arm64.max-instances: "10"
<   dynamic.linux-root-arm64.region: us-east-1
<   dynamic.linux-root-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-root-arm64.sudo-commands: /usr/bin/podman
<   dynamic.linux-root-arm64.throughput: "1000"
<   dynamic.linux-root-arm64.type: aws
<   host.power-rhtap-prod-1.address: 169.62.182.26
<   host.power-rhtap-prod-1.concurrency: "1"
<   host.power-rhtap-prod-1.platform: linux/ppc64le
<   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-1.user: root
<   host.power-rhtap-prod-2.address: 169.62.182.27
<   host.power-rhtap-prod-2.concurrency: "1"
<   host.power-rhtap-prod-2.platform: linux/ppc64le
<   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-2.user: root
<   host.power-rhtap-prod-3.address: 169.62.182.28
<   host.power-rhtap-prod-3.concurrency: "1"
<   host.power-rhtap-prod-3.platform: linux/ppc64le
<   host.power-rhtap-prod-3.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-3.user: root
<   host.power-rhtap-prod-4.address: 169.62.182.29
<   host.power-rhtap-prod-4.concurrency: "1"
<   host.power-rhtap-prod-4.platform: linux/ppc64le
<   host.power-rhtap-prod-4.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-4.user: root
<   host.power-rhtap-prod-5.address: 169.62.182.30
<   host.power-rhtap-prod-5.concurrency: "1"
<   host.power-rhtap-prod-5.platform: linux/ppc64le
<   host.power-rhtap-prod-5.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-5.user: root
<   host.power-rhtap-prod-6.address: 52.117.38.98
<   host.power-rhtap-prod-6.concurrency: "1"
<   host.power-rhtap-prod-6.platform: linux/ppc64le
<   host.power-rhtap-prod-6.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-6.user: root
<   host.power-rhtap-prod-7.address: 52.117.38.99
<   host.power-rhtap-prod-7.concurrency: "1"
<   host.power-rhtap-prod-7.platform: linux/ppc64le
<   host.power-rhtap-prod-7.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-7.user: root
<   host.power-rhtap-prod-8.address: 52.117.38.100
<   host.power-rhtap-prod-8.concurrency: "1"
<   host.power-rhtap-prod-8.platform: linux/ppc64le
<   host.power-rhtap-prod-8.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-8.user: root
<   host.power-rhtap-prod-9.address: 52.117.38.101
<   host.power-rhtap-prod-9.concurrency: "1"
<   host.power-rhtap-prod-9.platform: linux/ppc64le
<   host.power-rhtap-prod-9.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-9.user: root
<   host.power-rhtap-prod-10.address: 52.117.38.102
<   host.power-rhtap-prod-10.concurrency: "1"
<   host.power-rhtap-prod-10.platform: linux/ppc64le
<   host.power-rhtap-prod-10.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-10.user: root
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
<   host.sysz-rhtap-prod-1.concurrency: "4"
<   host.sysz-rhtap-prod-1.platform: linux/s390x
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-1.user: root
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
<   host.sysz-rhtap-prod-2.concurrency: "4"
<   host.sysz-rhtap-prod-2.platform: linux/s390x
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-2.user: root
<   instance-tag: rhtap-prod
<   local-platforms: linux/x86_64,local,localhost,
< kind: ConfigMap
< metadata:
<   labels:
<     build.appstudio.redhat.com/multi-platform-config: hosts
<   name: host-config
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: multi-platform-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-monitor
<   namespace: multi-platform-controller
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: multi-platform-controller
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     service.beta.openshift.io/serving-cert-secret-name: otp-tls-secrets
<   labels:
<     app: multi-platform-otp-server
<   name: multi-platform-otp-server
<   namespace: multi-platform-controller
< spec:
<   ports:
<   - name: https
<     port: 443
<     protocol: TCP
<     targetPort: 8443
<   selector:
<     app: multi-platform-otp-server
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: multi-platform-controller
<   template:
<     metadata:
<       labels:
<         app: multi-platform-controller
<     spec:
<       containers:
<       - args:
<         - --v=4
<         - --zap-log-level=4
<         - --zap-devel=true
<         env:
<         - name: POD_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-ci/multi-platform-controller:c14b8e2b6574737ca49f7006740da167b8d0ecf6
<         imagePullPolicy: Always
<         name: multi-platform-controller
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         resources:
<           limits:
<             cpu: 500m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 512Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: multi-platform-controller
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app: multi-platform-otp-server
<   name: multi-platform-otp-server
<   namespace: multi-platform-controller
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: multi-platform-otp-server
<   template:
<     metadata:
<       labels:
<         app: multi-platform-otp-server
<     spec:
<       containers:
<       - env:
<         - name: POD_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:c14b8e2b6574737ca49f7006740da167b8d0ecf6
<         imagePullPolicy: Always
<         name: multi-platform-otp-server
<         ports:
<         - containerPort: 8080
<           name: server
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 100m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /tls
<           name: tls
<       securityContext:
<         runAsNonRoot: true
<       volumes:
<       - name: tls
<         secret:
<           secretName: otp-tls-secrets
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: aws-account
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/public-prod-aws-account
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: aws-account
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: aws-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/public-prod-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: aws-ssh-key
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-ppc64le-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-ppc64le-ssh-key
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-s390x-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-s390x-ssh-key
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-ssh-key
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: public-prod-ibm-api-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/public-prod-ibm-api-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: public-prod-ibm-api-key
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< spec:
<   endpoints:
<   - interval: 15s
<     path: /metrics
<     port: http-metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app: multi-platform-controller
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: clean-shared-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will clean up after a build
<   params:
<   - name: SECRET_NAME
<     type: string
<   - name: TASKRUN_NAME
<     type: string
<   - name: NAMESPACE
<     type: string
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: provision
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       set -eu
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST=$(params.USER)@$(params.HOST)
< 
<       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo userdel -f -r -Z $USERNAME
<   workspaces:
<   - name: ssh
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: provision-shared-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will create a new user on a host, setup ssh keys, and then
<     create the relevant secret.
<   params:
<   - name: SECRET_NAME
<     type: string
<   - name: TASKRUN_NAME
<     type: string
<   - name: NAMESPACE
<     type: string
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   - name: SUDO_COMMANDS
<     type: string
<   stepTemplate:
<     env:
<     - name: SECRET_NAME
<       value: $(params.SECRET_NAME)
<     - name: TASKRUN_NAME
<       value: $(params.TASKRUN_NAME)
<     - name: NAMESPACE
<       value: $(params.NAMESPACE)
<     - name: HOST
<       value: $(params.HOST)
<     - name: USER
<       value: $(params.USER)
<     - name: SUDO_COMMANDS
<       value: $(params.SUDO_COMMANDS)
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: provision
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       set -eu
<       set -o pipefail
<       mkdir -p /root/.ssh
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST="$USER@$HOST"
< 
<       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
< 
<       cat >script.sh <<EOF
<       sudo dnf install podman -y
<       rm -f $USERNAME $USERNAME.pub
<       sudo useradd -m $USERNAME -p $(openssl rand -base64 12)
<       ssh-keygen -N '' -f $USERNAME
<       sudo su $USERNAME -c 'mkdir /home/$USERNAME/.ssh'
<       sudo su $USERNAME -c 'mkdir /home/$USERNAME/build'
<       sudo mv $USERNAME.pub /home/$USERNAME/.ssh/authorized_keys
<       sudo chown $USERNAME /home/$USERNAME/.ssh/authorized_keys
<       sudo restorecon -FRvv /home/$USERNAME/.ssh
<       EOF
< 
<       if [ ! -z "$SUDO_COMMANDS" ]; then
<       #if we need sudo access add it to the script
<       cat >>script.sh <<EOF
<       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
<       EOF
<       fi
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST cat $USERNAME  >id_rsa
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST rm $USERNAME
<       chmod 0400 id_rsa
<       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
<       DIR=$(echo /home/$USERNAME | base64 -w 0)
< 
<       if [ -e "/tls/tls.crt" ]; then
<         KEY=$(cat id_rsa)
<         OTP=$(curl --cacert /tls/tls.crt -XPOST -d "$KEY" https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/store-key | base64 -w 0)
<         OTP_SERVER="$(echo https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/otp | base64 -w 0)"
<         echo $OTP | base64 -d
<         cat >secret.yaml <<EOF
<         apiVersion: v1
<         data:
<           otp-ca: "$(cat /tls/tls.crt | base64 -w 0)"
<           otp: "$OTP"
<           otp-server: "$OTP_SERVER"
<           host: "$HOST"
<           user-dir: "$DIR"
<         kind: Secret
<         metadata:
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
<           labels:
<             build.appstudio.redhat.com/multi-platform-secret: "true"
<         type: Opaque
<       EOF
<       else
<         KEY=$(cat id_rsa | base64 -w 0)
<         cat >secret.yaml <<EOF
<         apiVersion: v1
<         data:
<           id_rsa: "$KEY"
<           host: "$HOST"
<           user-dir: "$DIR"
<         kind: Secret
<         metadata:
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
<           labels:
<             build.appstudio.redhat.com/multi-platform-secret: "true"
<         type: Opaque
<       EOF
<       fi
< 
<       kubectl create -f secret.yaml
<     volumeMounts:
<     - mountPath: /tls
<       name: tls
<   volumes:
<   - name: tls
<     secret:
<       optional: true
<       secretName: otp-tls-secrets
<   workspaces:
<   - name: ssh
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: update-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will create a new user on a host, setup ssh keys, and then
<     create the relevant secret.
<   params:
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: update
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       mkdir -p /root/.ssh
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST=$(params.USER)@$(params.HOST)
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y"
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in u-*; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
<   workspaces:
<   - name: ssh
./commit-89179443/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
101a102,107
>             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
>                 # Konflux Workspaces
>                 rewrite ^/api/k8s/(.*)$ /$1 break;
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
>             }
> 
119c125
<   name: proxy-mk27dcmc6f
---
>   name: proxy-87t6c2m9t9
624c630
<           name: proxy-mk27dcmc6f
---
>           name: proxy-87t6c2m9t9
./commit-89179443/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
101a102,107
>             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
>                 # Konflux Workspaces
>                 rewrite ^/api/k8s/(.*)$ /$1 break;
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
>             }
> 
119c125
<   name: proxy-mk27dcmc6f
---
>   name: proxy-87t6c2m9t9
624c630
<           name: proxy-mk27dcmc6f
---
>           name: proxy-87t6c2m9t9
./commit-89179443/production/components: workspaces 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 89179443 to 84d31c3e on Mon Aug 26 14:51:40 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index 02d7efd1..b83ed571 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -58,12 +58,6 @@ http {
             proxy_read_timeout 30m;
         }
 
-        location /api/k8s/apis/workspaces.konflux-ci.dev/ {
-            # Konflux Workspaces
-            rewrite ^/api/k8s/(.*)$ /$1 break;
-            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
-        }
-
         location /wss/k8s/ {
             # Kube-API websockets
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 42eae999..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 1d59ebf8..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 1d59ebf8..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-89179443/staging/components/ui/staging/kustomize.out.yaml
101a102,107
>             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
>                 # Konflux Workspaces
>                 rewrite ^/api/k8s/(.*)$ /$1 break;
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
>             }
> 
119c125
<   name: proxy-mk27dcmc6f
---
>   name: proxy-87t6c2m9t9
624c630
<           name: proxy-mk27dcmc6f
---
>           name: proxy-87t6c2m9t9 
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
<h3>3: Development changes from 89179443 to 84d31c3e on Mon Aug 26 14:51:40 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index 02d7efd1..b83ed571 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -58,12 +58,6 @@ http {
             proxy_read_timeout 30m;
         }
 
-        location /api/k8s/apis/workspaces.konflux-ci.dev/ {
-            # Konflux Workspaces
-            rewrite ^/api/k8s/(.*)$ /$1 break;
-            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
-        }
-
         location /wss/k8s/ {
             # Kube-API websockets
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 42eae999..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 1d59ebf8..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 1d59ebf8..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1505 lines)</summary>  

``` 
./commit-89179443/development/components/jvm-build-service/development/kustomize.out.yaml
0a1,1487
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: jvm-build-service
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: artifactbuilds.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: ArtifactBuild
>     listKind: ArtifactBuildList
>     plural: artifactbuilds
>     singular: artifactbuild
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.gav
>       name: GAV
>       type: string
>     - jsonPath: .status.state
>       name: State
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ArtifactBuild TODO provide godoc description
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
>             properties:
>               gav:
>                 description: GAV is the groupID:artifactID:version tuple seen in maven
>                   pom.xml files
>                 type: string
>             type: object
>           status:
>             properties:
>               message:
>                 type: string
>               scm:
>                 properties:
>                   commitHash:
>                     type: string
>                   path:
>                     type: string
>                   private:
>                     type: boolean
>                   scmType:
>                     type: string
>                   scmURL:
>                     type: string
>                   tag:
>                     type: string
>                 type: object
>               state:
>                 description: 'TODO: conditions?'
>                 type: string
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: dependencybuilds.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: DependencyBuild
>     listKind: DependencyBuildList
>     plural: dependencybuilds
>     singular: dependencybuild
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.scm.scmURL
>       name: URL
>       type: string
>     - jsonPath: .spec.scm.tag
>       name: Tag
>       type: string
>     - jsonPath: .status.state
>       name: State
>       type: string
>     - jsonPath: .status.message
>       name: Message
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: DependencyBuild TODO provide godoc description
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
>             properties:
>               scm:
>                 properties:
>                   commitHash:
>                     type: string
>                   path:
>                     type: string
>                   private:
>                     type: boolean
>                   scmType:
>                     type: string
>                   scmURL:
>                     type: string
>                   tag:
>                     type: string
>                 type: object
>               version:
>                 type: string
>             type: object
>           status:
>             properties:
>               buildAttempts:
>                 items:
>                   properties:
>                     build:
>                       properties:
>                         complete:
>                           type: boolean
>                         diagnosticDockerFile:
>                           type: string
>                         finishTime:
>                           format: int64
>                           type: integer
>                         pipelineName:
>                           type: string
>                         results:
>                           properties:
>                             contaminated:
>                               type: boolean
>                             contaminates:
>                               items:
>                                 properties:
>                                   allowed:
>                                     type: boolean
>                                   buildId:
>                                     type: string
>                                   contaminatedArtifacts:
>                                     items:
>                                       type: string
>                                     type: array
>                                   gav:
>                                     type: string
>                                   rebuildAvailable:
>                                     type: boolean
>                                   source:
>                                     type: string
>                                 type: object
>                               type: array
>                             gavs:
>                               description: The produced GAVs
>                               items:
>                                 type: string
>                               type: array
>                             gitArchive:
>                               description: The git archive source information
>                               properties:
>                                 sha:
>                                   type: string
>                                 tag:
>                                   type: string
>                                 url:
>                                   type: string
>                               type: object
>                             hermeticBuildImage:
>                               description: The hermetic build image produced by the
>                                 build
>                               type: string
>                             image:
>                               description: the image resulting from the run
>                               type: string
>                             imageDigest:
>                               type: string
>                             pipelineResults:
>                               description: The Tekton results
>                               properties:
>                                 logs:
>                                   type: string
>                                 record:
>                                   type: string
>                                 result:
>                                   type: string
>                               type: object
>                             verificationFailures:
>                               type: string
>                             verified:
>                               description: If the resulting image was verified
>                               type: boolean
>                           required:
>                           - imageDigest
>                           type: object
>                         startTime:
>                           format: int64
>                           type: integer
>                         succeeded:
>                           type: boolean
>                       required:
>                       - complete
>                       - pipelineName
>                       type: object
>                     buildId:
>                       type: string
>                     buildRecipe:
>                       properties:
>                         additionalDownloads:
>                           items:
>                             properties:
>                               binaryPath:
>                                 type: string
>                               fileName:
>                                 type: string
>                               packageName:
>                                 type: string
>                               sha256:
>                                 type: string
>                               type:
>                                 type: string
>                               uri:
>                                 type: string
>                             required:
>                             - type
>                             type: object
>                           type: array
>                         additionalMemory:
>                           type: integer
>                         allowedDifferences:
>                           items:
>                             type: string
>                           type: array
>                         commandLine:
>                           items:
>                             type: string
>                           type: array
>                         contextPath:
>                           type: string
>                         disableSubmodules:
>                           type: boolean
>                         disabledPlugins:
>                           items:
>                             type: string
>                           type: array
>                         enforceVersion:
>                           type: string
>                         image:
>                           type: string
>                         javaVersion:
>                           type: string
>                         pipeline:
>                           description: Deprecated
>                           type: string
>                         postBuildScript:
>                           type: string
>                         preBuildScript:
>                           type: string
>                         repositories:
>                           items:
>                             type: string
>                           type: array
>                         tool:
>                           type: string
>                         toolVersion:
>                           type: string
>                         toolVersions:
>                           additionalProperties:
>                             type: string
>                           type: object
>                       type: object
>                   type: object
>                 type: array
>               builderImages:
>                 items:
>                   properties:
>                     baseBuilderImage:
>                       type: string
>                     builtImageDigest:
>                       type: string
>                     tool:
>                       type: string
>                   type: object
>                 type: array
>               commitTime:
>                 format: int64
>                 type: integer
>               conditions:
>                 description: 'Conditions for capturing generic status NOTE: inspecting
>                   the fabric8 Status class, it looked analogous to k8s Condition,
>                   and then I took the liberty of making it an array, given best practices
>                   in the k8s/ocp ecosystems'
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n \ttype FooStatus struct{ \t    // Represents the observations
>                     of a foo's current state. \t    // Known .status.conditions.type
>                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
>                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
>                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
>                     \t}"
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
>               contaminates:
>                 items:
>                   properties:
>                     allowed:
>                       type: boolean
>                     buildId:
>                       type: string
>                     contaminatedArtifacts:
>                       items:
>                         type: string
>                       type: array
>                     gav:
>                       type: string
>                     rebuildAvailable:
>                       type: boolean
>                     source:
>                       type: string
>                   type: object
>                 type: array
>               deployedArtifacts:
>                 items:
>                   type: string
>                 type: array
>               discoveryPipelineResults:
>                 description: A representation of the Tekton Results records for a
>                   pipeline
>                 properties:
>                   logs:
>                     type: string
>                   record:
>                     type: string
>                   result:
>                     type: string
>                 type: object
>               failedVerification:
>                 type: boolean
>               hermetic:
>                 type: boolean
>               message:
>                 type: string
>               pipelineRetries:
>                 type: integer
>               potentialBuildRecipes:
>                 description: PotentialBuildRecipes additional recipes to try if the
>                   current recipe fails
>                 items:
>                   properties:
>                     additionalDownloads:
>                       items:
>                         properties:
>                           binaryPath:
>                             type: string
>                           fileName:
>                             type: string
>                           packageName:
>                             type: string
>                           sha256:
>                             type: string
>                           type:
>                             type: string
>                           uri:
>                             type: string
>                         required:
>                         - type
>                         type: object
>                       type: array
>                     additionalMemory:
>                       type: integer
>                     allowedDifferences:
>                       items:
>                         type: string
>                       type: array
>                     commandLine:
>                       items:
>                         type: string
>                       type: array
>                     contextPath:
>                       type: string
>                     disableSubmodules:
>                       type: boolean
>                     disabledPlugins:
>                       items:
>                         type: string
>                       type: array
>                     enforceVersion:
>                       type: string
>                     image:
>                       type: string
>                     javaVersion:
>                       type: string
>                     pipeline:
>                       description: Deprecated
>                       type: string
>                     postBuildScript:
>                       type: string
>                     preBuildScript:
>                       type: string
>                     repositories:
>                       items:
>                         type: string
>                       type: array
>                     tool:
>                       type: string
>                     toolVersion:
>                       type: string
>                     toolVersions:
>                       additionalProperties:
>                         type: string
>                       type: object
>                   type: object
>                 type: array
>               potentialBuildRecipesIndex:
>                 type: integer
>               state:
>                 type: string
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: jbsconfigs.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: JBSConfig
>     listKind: JBSConfigList
>     plural: jbsconfigs
>     singular: jbsconfig
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .status.message
>       name: Message
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: JBSConfig TODO provide godoc description
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
>             properties:
>               additionalRecipes:
>                 items:
>                   type: string
>                 type: array
>               buildSettings:
>                 properties:
>                   buildRequestCPU:
>                     description: The requested CPU for the build and deploy steps
>                       of a pipeline
>                     type: string
>                   buildRequestMemory:
>                     description: The requested memory for the build and deploy steps
>                       of a pipeline
>                     type: string
>                   taskLimitCPU:
>                     description: The CPU limit for all other steps of a pipeline
>                     type: string
>                   taskLimitMemory:
>                     description: The memory limit for all other steps of a pipeline
>                     type: string
>                   taskRequestCPU:
>                     description: The requested CPU for all other steps of a pipeline
>                     type: string
>                   taskRequestMemory:
>                     description: The requested memory for all other steps of a pipeline
>                     type: string
>                 type: object
>               cacheSettings:
>                 properties:
>                   disableTLS:
>                     type: boolean
>                   ioThreads:
>                     type: string
>                   limitCPU:
>                     type: string
>                   limitMemory:
>                     type: string
>                   requestCPU:
>                     type: string
>                   requestMemory:
>                     type: string
>                   storage:
>                     type: string
>                   workerThreads:
>                     type: string
>                 type: object
>               enableRebuilds:
>                 type: boolean
>               gitSourceArchive:
>                 properties:
>                   disableSSLVerification:
>                     type: boolean
>                   identity:
>                     type: string
>                   url:
>                     type: string
>                 type: object
>               hermeticBuilds:
>                 type: string
>               mavenBaseLocations:
>                 additionalProperties:
>                   type: string
>                 type: object
>               mavenDeployment:
>                 properties:
>                   repository:
>                     type: string
>                   username:
>                     type: string
>                 type: object
>               registry:
>                 properties:
>                   dontReuseExisting:
>                     type: boolean
>                   host:
>                     type: string
>                   insecure:
>                     type: boolean
>                   owner:
>                     type: string
>                   port:
>                     type: string
>                   prependTag:
>                     type: string
>                   private:
>                     description: if this is true and we are automatically creating
>                       registries then we will make it private
>                     type: boolean
>                   repository:
>                     type: string
>                   secretName:
>                     type: string
>                 type: object
>               relocationPatterns:
>                 items:
>                   properties:
>                     relocationPattern:
>                       properties:
>                         buildPolicy:
>                           type: string
>                         patterns:
>                           items:
>                             properties:
>                               pattern:
>                                 properties:
>                                   from:
>                                     type: string
>                                   to:
>                                     type: string
>                                 required:
>                                 - from
>                                 - to
>                                 type: object
>                             required:
>                             - pattern
>                             type: object
>                           type: array
>                       type: object
>                   required:
>                   - relocationPattern
>                   type: object
>                 type: array
>               requireArtifactVerification:
>                 description: If this is true then the build will fail if artifact
>                   verification fails otherwise deploy will happen as normal, but a
>                   field will be set on the DependencyBuild
>                 type: boolean
>               sharedRegistries:
>                 items:
>                   properties:
>                     host:
>                       type: string
>                     insecure:
>                       type: boolean
>                     owner:
>                       type: string
>                     port:
>                       type: string
>                     prependTag:
>                       type: string
>                     repository:
>                       type: string
>                     secretName:
>                       type: string
>                   type: object
>                 type: array
>             type: object
>           status:
>             properties:
>               imageRegistry:
>                 properties:
>                   host:
>                     type: string
>                   insecure:
>                     type: boolean
>                   owner:
>                     type: string
>                   port:
>                     type: string
>                   prependTag:
>                     type: string
>                   repository:
>                     type: string
>                   secretName:
>                     type: string
>                 type: object
>               message:
>                 type: string
>               rebuildsPossible:
>                 type: boolean
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: jvmimagescans.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: JvmImageScan
>     listKind: JvmImageScanList
>     plural: jvmimagescans
>     singular: jvmimagescan
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.image
>       name: Image
>       type: string
>     - jsonPath: .status.state
>       name: State
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: JvmImageScan TODO provide godoc description
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
>             properties:
>               image:
>                 type: string
>             type: object
>           status:
>             properties:
>               digest:
>                 type: string
>               message:
>                 type: string
>               results:
>                 items:
>                   properties:
>                     attributes:
>                       additionalProperties:
>                         type: string
>                       type: object
>                     gav:
>                       type: string
>                     source:
>                       type: string
>                   type: object
>                 type: array
>               state:
>                 type: string
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: rebuiltartifacts.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: RebuiltArtifact
>     listKind: RebuiltArtifactList
>     plural: rebuiltartifacts
>     singular: rebuiltartifact
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.gav
>       name: GAV
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: RebuiltArtifact An artifact that has been rebuilt and deployed
>           to S3 or a Container registry
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
>             properties:
>               digest:
>                 type: string
>               gav:
>                 description: The GAV of the rebuilt artifact
>                 type: string
>               image:
>                 type: string
>             type: object
>           status:
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources: {}
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: systemconfigs.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: SystemConfig
>     listKind: SystemConfigList
>     plural: systemconfigs
>     singular: systemconfig
>   scope: Cluster
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: SystemConfig TODO provide godoc description
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
>             properties:
>               builders:
>                 additionalProperties:
>                   properties:
>                     image:
>                       type: string
>                     priority:
>                       type: integer
>                     tag:
>                       type: string
>                   type: object
>                 type: object
>               maxAdditionalMemory:
>                 type: integer
>               recipeDatabase:
>                 type: string
>             type: object
>           status:
>             type: object
>         required:
>         - spec
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
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator
>   namespace: jvm-build-service
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: metrics-reader
>   namespace: jvm-build-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: hacbs-jvm-cache
> rules:
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - rebuiltartifacts
>   - artifactbuilds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds/status
>   verbs:
>   - patch
>   - update
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds
>   verbs:
>   - patch
>   - update
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - jbsconfigs
>   verbs:
>   - get
>   - list
>   - watch
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
>   labels:
>     app: hacbs-jvm-operator
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: hacbs-jvm-operator
> rules:
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds
>   - artifactbuilds/status
>   - dependencybuilds
>   - dependencybuilds/status
>   - rebuiltartifacts
>   - rebuiltartifacts/status
>   - systemconfigs
>   - systemconfigs/status
>   - jbsconfigs
>   - jbsconfigs/status
>   - jvmimagescans
>   - jvmimagescans/status
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
>   - quota.openshift.io
>   resources:
>   - clusterresourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   - pipelineruns/status
>   - taskruns
>   - taskruns/status
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
>   - ""
>   - events.k8s.io
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/log
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - persistentvolumeclaims
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-image-secrets
>   - jvm-build-git-secrets
>   resources:
>   - secrets
>   verbs:
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - deployments
>   verbs:
>   - get
>   - list
>   - watch
>   - create
> - apiGroups:
>   - apps
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - deployments
>   verbs:
>   - delete
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-tls-ca
>   resources:
>   - configmaps
>   verbs:
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - services
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - services
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - serviceaccounts
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - resourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - rbac.authorization.k8s.io
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - rolebindings
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - imagerepositories
>   verbs:
>   - create
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: hacbs-jvm-operator-view
> rules:
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds
>   - artifactbuilds/status
>   - dependencybuilds
>   - dependencybuilds/status
>   - systemconfigs
>   - systemconfigs/status
>   - jbsconfigs
>   - jbsconfigs/status
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
>   name: jvm-build-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: grant-argocd
>   namespace: jvm-build-service
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: hacbs-jvm-operator
> subjects:
> - kind: ServiceAccount
>   name: hacbs-jvm-operator
>   namespace: jvm-build-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: prometheus-jvm-build-service-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: jvm-build-service-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
>   namespace: jvm-build-service
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     kubernetes.io/service-account.name: metrics-reader
>   name: metrics-reader
>   namespace: jvm-build-service
> type: kubernetes.io/service-account-token
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator-monitor
>   namespace: jvm-build-service
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
>   - name: probes
>     port: 8081
>     protocol: TCP
>     targetPort: 8081
>   selector:
>     app: hacbs-jvm-operator
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator
>   namespace: jvm-build-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: hacbs-jvm-operator
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app: hacbs-jvm-operator
>     spec:
>       containers:
>       - args:
>         - --v=4
>         - --zap-log-level=info
>         env:
>         - name: USE_IMAGE_SPI
>           value: "true"
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
>         imagePullPolicy: IfNotPresent
>         name: hacbs-jvm-operator
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         resources:
>           limits:
>             cpu: 500m
>             memory: 1024Mi
>           requests:
>             cpu: 50m
>             memory: 1024Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: hacbs-jvm-operator
> ---
> apiVersion: jvmbuildservice.io/v1alpha1
> kind: SystemConfig
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: cluster
>   namespace: jvm-build-service
> spec:
>   builders:
>     ubi7:
>       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
>       priority: 1000
>       tag: jdk:7,maven:3.8.8;3.9.5,ant:1.9.16
>     ubi8:
>       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
>       priority: 2000
>       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: jvm-build-service
>   namespace: jvm-build-service
> spec:
>   endpoints:
>   - interval: 15s
>     path: /metrics
>     port: http-metrics
>     scheme: http
>   selector:
>     matchLabels:
>       app: hacbs-jvm-operator
./commit-89179443/development/components/ui/development/kustomize.out.yaml
101a102,107
>             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
>                 # Konflux Workspaces
>                 rewrite ^/api/k8s/(.*)$ /$1 break;
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
>             }
> 
119c125
<   name: proxy-mk27dcmc6f
---
>   name: proxy-87t6c2m9t9
624c630
<           name: proxy-mk27dcmc6f
---
>           name: proxy-87t6c2m9t9 
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
<h3>4: Production changes from 805ff13f to 89179443 on Mon Aug 26 14:04:00 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 4dff191c..37a7b041 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1949,14 +1949,6 @@ metadata:
     argocd.argoproj.io/sync-wave: "0"
   name: config
 spec:
-  config:
-    nodeSelector:
-      appstudio.redhat.com/workload: tenants
-    tolerations:
-      - key: appstudio.redhat.com/workload
-        operator: "Equal"
-        value: "tenants"
-        effect: "NoSchedule"
   chain:
     artifacts.oci.storage: oci
     artifacts.pipelinerun.enable-deep-inspection: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2921 lines)</summary>  

``` 
./commit-805ff13f/production/components/jvm-build-service/production/kustomize.out.yaml
0a1,1508
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: jvm-build-service
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: artifactbuilds.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: ArtifactBuild
>     listKind: ArtifactBuildList
>     plural: artifactbuilds
>     singular: artifactbuild
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.gav
>       name: GAV
>       type: string
>     - jsonPath: .status.state
>       name: State
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ArtifactBuild TODO provide godoc description
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
>             properties:
>               gav:
>                 description: GAV is the groupID:artifactID:version tuple seen in maven
>                   pom.xml files
>                 type: string
>             type: object
>           status:
>             properties:
>               message:
>                 type: string
>               scm:
>                 properties:
>                   commitHash:
>                     type: string
>                   path:
>                     type: string
>                   private:
>                     type: boolean
>                   scmType:
>                     type: string
>                   scmURL:
>                     type: string
>                   tag:
>                     type: string
>                 type: object
>               state:
>                 description: 'TODO: conditions?'
>                 type: string
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: dependencybuilds.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: DependencyBuild
>     listKind: DependencyBuildList
>     plural: dependencybuilds
>     singular: dependencybuild
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.scm.scmURL
>       name: URL
>       type: string
>     - jsonPath: .spec.scm.tag
>       name: Tag
>       type: string
>     - jsonPath: .status.state
>       name: State
>       type: string
>     - jsonPath: .status.message
>       name: Message
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: DependencyBuild TODO provide godoc description
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
>             properties:
>               scm:
>                 properties:
>                   commitHash:
>                     type: string
>                   path:
>                     type: string
>                   private:
>                     type: boolean
>                   scmType:
>                     type: string
>                   scmURL:
>                     type: string
>                   tag:
>                     type: string
>                 type: object
>               version:
>                 type: string
>             type: object
>           status:
>             properties:
>               buildAttempts:
>                 items:
>                   properties:
>                     build:
>                       properties:
>                         complete:
>                           type: boolean
>                         diagnosticDockerFile:
>                           type: string
>                         finishTime:
>                           format: int64
>                           type: integer
>                         pipelineName:
>                           type: string
>                         results:
>                           properties:
>                             contaminated:
>                               type: boolean
>                             contaminates:
>                               items:
>                                 properties:
>                                   allowed:
>                                     type: boolean
>                                   buildId:
>                                     type: string
>                                   contaminatedArtifacts:
>                                     items:
>                                       type: string
>                                     type: array
>                                   gav:
>                                     type: string
>                                   rebuildAvailable:
>                                     type: boolean
>                                   source:
>                                     type: string
>                                 type: object
>                               type: array
>                             gavs:
>                               description: The produced GAVs
>                               items:
>                                 type: string
>                               type: array
>                             gitArchive:
>                               description: The git archive source information
>                               properties:
>                                 sha:
>                                   type: string
>                                 tag:
>                                   type: string
>                                 url:
>                                   type: string
>                               type: object
>                             hermeticBuildImage:
>                               description: The hermetic build image produced by the
>                                 build
>                               type: string
>                             image:
>                               description: the image resulting from the run
>                               type: string
>                             imageDigest:
>                               type: string
>                             pipelineResults:
>                               description: The Tekton results
>                               properties:
>                                 logs:
>                                   type: string
>                                 record:
>                                   type: string
>                                 result:
>                                   type: string
>                               type: object
>                             verificationFailures:
>                               type: string
>                             verified:
>                               description: If the resulting image was verified
>                               type: boolean
>                           required:
>                           - imageDigest
>                           type: object
>                         startTime:
>                           format: int64
>                           type: integer
>                         succeeded:
>                           type: boolean
>                       required:
>                       - complete
>                       - pipelineName
>                       type: object
>                     buildId:
>                       type: string
>                     buildRecipe:
>                       properties:
>                         additionalDownloads:
>                           items:
>                             properties:
>                               binaryPath:
>                                 type: string
>                               fileName:
>                                 type: string
>                               packageName:
>                                 type: string
>                               sha256:
>                                 type: string
>                               type:
>                                 type: string
>                               uri:
>                                 type: string
>                             required:
>                             - type
>                             type: object
>                           type: array
>                         additionalMemory:
>                           type: integer
>                         allowedDifferences:
>                           items:
>                             type: string
>                           type: array
>                         commandLine:
>                           items:
>                             type: string
>                           type: array
>                         contextPath:
>                           type: string
>                         disableSubmodules:
>                           type: boolean
>                         disabledPlugins:
>                           items:
>                             type: string
>                           type: array
>                         enforceVersion:
>                           type: string
>                         image:
>                           type: string
>                         javaVersion:
>                           type: string
>                         pipeline:
>                           description: Deprecated
>                           type: string
>                         postBuildScript:
>                           type: string
>                         preBuildScript:
>                           type: string
>                         repositories:
>                           items:
>                             type: string
>                           type: array
>                         tool:
>                           type: string
>                         toolVersion:
>                           type: string
>                         toolVersions:
>                           additionalProperties:
>                             type: string
>                           type: object
>                       type: object
>                   type: object
>                 type: array
>               builderImages:
>                 items:
>                   properties:
>                     baseBuilderImage:
>                       type: string
>                     builtImageDigest:
>                       type: string
>                     tool:
>                       type: string
>                   type: object
>                 type: array
>               commitTime:
>                 format: int64
>                 type: integer
>               conditions:
>                 description: 'Conditions for capturing generic status NOTE: inspecting
>                   the fabric8 Status class, it looked analogous to k8s Condition,
>                   and then I took the liberty of making it an array, given best practices
>                   in the k8s/ocp ecosystems'
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n \ttype FooStatus struct{ \t    // Represents the observations
>                     of a foo's current state. \t    // Known .status.conditions.type
>                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
>                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
>                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
>                     \t}"
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
>               contaminates:
>                 items:
>                   properties:
>                     allowed:
>                       type: boolean
>                     buildId:
>                       type: string
>                     contaminatedArtifacts:
>                       items:
>                         type: string
>                       type: array
>                     gav:
>                       type: string
>                     rebuildAvailable:
>                       type: boolean
>                     source:
>                       type: string
>                   type: object
>                 type: array
>               deployedArtifacts:
>                 items:
>                   type: string
>                 type: array
>               discoveryPipelineResults:
>                 description: A representation of the Tekton Results records for a
>                   pipeline
>                 properties:
>                   logs:
>                     type: string
>                   record:
>                     type: string
>                   result:
>                     type: string
>                 type: object
>               failedVerification:
>                 type: boolean
>               hermetic:
>                 type: boolean
>               message:
>                 type: string
>               pipelineRetries:
>                 type: integer
>               potentialBuildRecipes:
>                 description: PotentialBuildRecipes additional recipes to try if the
>                   current recipe fails
>                 items:
>                   properties:
>                     additionalDownloads:
>                       items:
>                         properties:
>                           binaryPath:
>                             type: string
>                           fileName:
>                             type: string
>                           packageName:
>                             type: string
>                           sha256:
>                             type: string
>                           type:
>                             type: string
>                           uri:
>                             type: string
>                         required:
>                         - type
>                         type: object
>                       type: array
>                     additionalMemory:
>                       type: integer
>                     allowedDifferences:
>                       items:
>                         type: string
>                       type: array
>                     commandLine:
>                       items:
>                         type: string
>                       type: array
>                     contextPath:
>                       type: string
>                     disableSubmodules:
>                       type: boolean
>                     disabledPlugins:
>                       items:
>                         type: string
>                       type: array
>                     enforceVersion:
>                       type: string
>                     image:
>                       type: string
>                     javaVersion:
>                       type: string
>                     pipeline:
>                       description: Deprecated
>                       type: string
>                     postBuildScript:
>                       type: string
>                     preBuildScript:
>                       type: string
>                     repositories:
>                       items:
>                         type: string
>                       type: array
>                     tool:
>                       type: string
>                     toolVersion:
>                       type: string
>                     toolVersions:
>                       additionalProperties:
>                         type: string
>                       type: object
>                   type: object
>                 type: array
>               potentialBuildRecipesIndex:
>                 type: integer
>               state:
>                 type: string
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: jbsconfigs.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: JBSConfig
>     listKind: JBSConfigList
>     plural: jbsconfigs
>     singular: jbsconfig
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .status.message
>       name: Message
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: JBSConfig TODO provide godoc description
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
>             properties:
>               additionalRecipes:
>                 items:
>                   type: string
>                 type: array
>               buildSettings:
>                 properties:
>                   buildRequestCPU:
>                     description: The requested CPU for the build and deploy steps
>                       of a pipeline
>                     type: string
>                   buildRequestMemory:
>                     description: The requested memory for the build and deploy steps
>                       of a pipeline
>                     type: string
>                   taskLimitCPU:
>                     description: The CPU limit for all other steps of a pipeline
>                     type: string
>                   taskLimitMemory:
>                     description: The memory limit for all other steps of a pipeline
>                     type: string
>                   taskRequestCPU:
>                     description: The requested CPU for all other steps of a pipeline
>                     type: string
>                   taskRequestMemory:
>                     description: The requested memory for all other steps of a pipeline
>                     type: string
>                 type: object
>               cacheSettings:
>                 properties:
>                   disableTLS:
>                     type: boolean
>                   ioThreads:
>                     type: string
>                   limitCPU:
>                     type: string
>                   limitMemory:
>                     type: string
>                   requestCPU:
>                     type: string
>                   requestMemory:
>                     type: string
>                   storage:
>                     type: string
>                   workerThreads:
>                     type: string
>                 type: object
>               enableRebuilds:
>                 type: boolean
>               gitSourceArchive:
>                 properties:
>                   disableSSLVerification:
>                     type: boolean
>                   identity:
>                     type: string
>                   url:
>                     type: string
>                 type: object
>               hermeticBuilds:
>                 type: string
>               mavenBaseLocations:
>                 additionalProperties:
>                   type: string
>                 type: object
>               mavenDeployment:
>                 properties:
>                   repository:
>                     type: string
>                   username:
>                     type: string
>                 type: object
>               registry:
>                 properties:
>                   dontReuseExisting:
>                     type: boolean
>                   host:
>                     type: string
>                   insecure:
>                     type: boolean
>                   owner:
>                     type: string
>                   port:
>                     type: string
>                   prependTag:
>                     type: string
>                   private:
>                     description: if this is true and we are automatically creating
>                       registries then we will make it private
>                     type: boolean
>                   repository:
>                     type: string
>                   secretName:
>                     type: string
>                 type: object
>               relocationPatterns:
>                 items:
>                   properties:
>                     relocationPattern:
>                       properties:
>                         buildPolicy:
>                           type: string
>                         patterns:
>                           items:
>                             properties:
>                               pattern:
>                                 properties:
>                                   from:
>                                     type: string
>                                   to:
>                                     type: string
>                                 required:
>                                 - from
>                                 - to
>                                 type: object
>                             required:
>                             - pattern
>                             type: object
>                           type: array
>                       type: object
>                   required:
>                   - relocationPattern
>                   type: object
>                 type: array
>               requireArtifactVerification:
>                 description: If this is true then the build will fail if artifact
>                   verification fails otherwise deploy will happen as normal, but a
>                   field will be set on the DependencyBuild
>                 type: boolean
>               sharedRegistries:
>                 items:
>                   properties:
>                     host:
>                       type: string
>                     insecure:
>                       type: boolean
>                     owner:
>                       type: string
>                     port:
>                       type: string
>                     prependTag:
>                       type: string
>                     repository:
>                       type: string
>                     secretName:
>                       type: string
>                   type: object
>                 type: array
>             type: object
>           status:
>             properties:
>               imageRegistry:
>                 properties:
>                   host:
>                     type: string
>                   insecure:
>                     type: boolean
>                   owner:
>                     type: string
>                   port:
>                     type: string
>                   prependTag:
>                     type: string
>                   repository:
>                     type: string
>                   secretName:
>                     type: string
>                 type: object
>               message:
>                 type: string
>               rebuildsPossible:
>                 type: boolean
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: jvmimagescans.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: JvmImageScan
>     listKind: JvmImageScanList
>     plural: jvmimagescans
>     singular: jvmimagescan
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.image
>       name: Image
>       type: string
>     - jsonPath: .status.state
>       name: State
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: JvmImageScan TODO provide godoc description
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
>             properties:
>               image:
>                 type: string
>             type: object
>           status:
>             properties:
>               digest:
>                 type: string
>               message:
>                 type: string
>               results:
>                 items:
>                   properties:
>                     attributes:
>                       additionalProperties:
>                         type: string
>                       type: object
>                     gav:
>                       type: string
>                     source:
>                       type: string
>                   type: object
>                 type: array
>               state:
>                 type: string
>             type: object
>         required:
>         - spec
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: rebuiltartifacts.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: RebuiltArtifact
>     listKind: RebuiltArtifactList
>     plural: rebuiltartifacts
>     singular: rebuiltartifact
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.gav
>       name: GAV
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: RebuiltArtifact An artifact that has been rebuilt and deployed
>           to S3 or a Container registry
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
>             properties:
>               digest:
>                 type: string
>               gav:
>                 description: The GAV of the rebuilt artifact
>                 type: string
>               image:
>                 type: string
>             type: object
>           status:
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources: {}
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
>     controller-gen.kubebuilder.io/version: v0.6.2
>   creationTimestamp: null
>   name: systemconfigs.jvmbuildservice.io
> spec:
>   group: jvmbuildservice.io
>   names:
>     kind: SystemConfig
>     listKind: SystemConfigList
>     plural: systemconfigs
>     singular: systemconfig
>   scope: Cluster
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: SystemConfig TODO provide godoc description
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
>             properties:
>               builders:
>                 additionalProperties:
>                   properties:
>                     image:
>                       type: string
>                     priority:
>                       type: integer
>                     tag:
>                       type: string
>                   type: object
>                 type: object
>               maxAdditionalMemory:
>                 type: integer
>               recipeDatabase:
>                 type: string
>             type: object
>           status:
>             type: object
>         required:
>         - spec
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
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator
>   namespace: jvm-build-service
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: metrics-reader
>   namespace: jvm-build-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: hacbs-jvm-cache
> rules:
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - rebuiltartifacts
>   - artifactbuilds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds/status
>   verbs:
>   - patch
>   - update
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds
>   verbs:
>   - patch
>   - update
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - jbsconfigs
>   verbs:
>   - get
>   - list
>   - watch
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
>   labels:
>     app: hacbs-jvm-operator
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: hacbs-jvm-operator
> rules:
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds
>   - artifactbuilds/status
>   - dependencybuilds
>   - dependencybuilds/status
>   - rebuiltartifacts
>   - rebuiltartifacts/status
>   - systemconfigs
>   - systemconfigs/status
>   - jbsconfigs
>   - jbsconfigs/status
>   - jvmimagescans
>   - jvmimagescans/status
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
>   - quota.openshift.io
>   resources:
>   - clusterresourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   - pipelineruns/status
>   - taskruns
>   - taskruns/status
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
>   - ""
>   - events.k8s.io
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/log
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - persistentvolumeclaims
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-image-secrets
>   - jvm-build-git-secrets
>   resources:
>   - secrets
>   verbs:
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - deployments
>   verbs:
>   - get
>   - list
>   - watch
>   - create
> - apiGroups:
>   - apps
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - deployments
>   verbs:
>   - delete
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-tls-ca
>   resources:
>   - configmaps
>   verbs:
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - services
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - services
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - serviceaccounts
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - resourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   verbs:
>   - get
>   - create
>   - list
>   - watch
> - apiGroups:
>   - rbac.authorization.k8s.io
>   resourceNames:
>   - jvm-build-workspace-artifact-cache
>   resources:
>   - rolebindings
>   verbs:
>   - patch
>   - delete
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - imagerepositories
>   verbs:
>   - create
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: hacbs-jvm-operator-view
> rules:
> - apiGroups:
>   - jvmbuildservice.io
>   resources:
>   - artifactbuilds
>   - artifactbuilds/status
>   - dependencybuilds
>   - dependencybuilds/status
>   - systemconfigs
>   - systemconfigs/status
>   - jbsconfigs
>   - jbsconfigs/status
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
>   name: jvm-build-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: grant-argocd
>   namespace: jvm-build-service
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: hacbs-jvm-operator
> subjects:
> - kind: ServiceAccount
>   name: hacbs-jvm-operator
>   namespace: jvm-build-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: prometheus-jvm-build-service-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: jvm-build-service-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
>   namespace: jvm-build-service
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     kubernetes.io/service-account.name: metrics-reader
>   name: metrics-reader
>   namespace: jvm-build-service
> type: kubernetes.io/service-account-token
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator-monitor
>   namespace: jvm-build-service
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
>   - name: probes
>     port: 8081
>     protocol: TCP
>     targetPort: 8081
>   selector:
>     app: hacbs-jvm-operator
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: hacbs-jvm-operator
>   namespace: jvm-build-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: hacbs-jvm-operator
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app: hacbs-jvm-operator
>     spec:
>       containers:
>       - args:
>         - --v=4
>         - --zap-log-level=info
>         env:
>         - name: USE_IMAGE_SPI
>           value: "true"
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
>         imagePullPolicy: IfNotPresent
>         name: hacbs-jvm-operator
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         resources:
>           limits:
>             cpu: 500m
>             memory: 1024Mi
>           requests:
>             cpu: 50m
>             memory: 1024Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: hacbs-jvm-operator
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: quaytoken
>   namespace: jvm-build-service
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/image-controller
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: quaytoken
> ---
> apiVersion: jvmbuildservice.io/v1alpha1
> kind: SystemConfig
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: hacbs-jvm-operator
>   name: cluster
>   namespace: jvm-build-service
> spec:
>   builders:
>     ubi7:
>       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
>       priority: 1000
>       tag: jdk:7,maven:3.8.8;3.9.5,ant:1.9.16
>     ubi8:
>       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
>       priority: 2000
>       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: jvm-build-service
>   namespace: jvm-build-service
> spec:
>   endpoints:
>   - interval: 15s
>     path: /metrics
>     port: http-metrics
>     scheme: http
>   selector:
>     matchLabels:
>       app: hacbs-jvm-operator
./commit-805ff13f/production/components/multi-platform-controller/production/kustomize.out.yaml
0a1,1085
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: metrics-reader
>   namespace: multi-platform-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: pipeline-anyuid-role
>   namespace: multi-platform-controller
> rules:
> - apiGroups:
>   - security.openshift.io
>   resourceNames:
>   - anyuid
>   resources:
>   - securitycontextconstraints
>   verbs:
>   - use
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   labels:
>     app: multi-platform-controller
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: multi-platform-controller
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
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
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns
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
>   - taskruns/status
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: multi-platform-controller-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: multi-platform-controller
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
>   labels:
>     app: multi-platform-controller
>   name: pipeline-anyuid-rolebinding
>   namespace: multi-platform-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipeline-anyuid-role
> subjects:
> - kind: ServiceAccount
>   name: pipeline
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller
> subjects:
> - kind: ServiceAccount
>   name: multi-platform-controller
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: prometheus-multi-platform-controller-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
>   namespace: multi-platform-controller
> ---
> apiVersion: v1
> data:
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
>   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-amd64.aws-secret: aws-account
>   dynamic.linux-amd64.instance-type: m6a.large
>   dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-amd64.max-instances: "10"
>   dynamic.linux-amd64.region: us-east-1
>   dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-amd64.type: aws
>   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-arm64.aws-secret: aws-account
>   dynamic.linux-arm64.instance-type: m6g.large
>   dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-arm64.max-instances: "10"
>   dynamic.linux-arm64.region: us-east-1
>   dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-arm64.type: aws
>   dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
>   dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
>   dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-c2xlarge-amd64.max-instances: "10"
>   dynamic.linux-c2xlarge-amd64.region: us-east-1
>   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-c2xlarge-amd64.type: aws
>   dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
>   dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
>   dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-c2xlarge-arm64.max-instances: "10"
>   dynamic.linux-c2xlarge-arm64.region: us-east-1
>   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-c2xlarge-arm64.type: aws
>   dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
>   dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
>   dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-c4xlarge-amd64.max-instances: "10"
>   dynamic.linux-c4xlarge-amd64.region: us-east-1
>   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-c4xlarge-amd64.type: aws
>   dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
>   dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
>   dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-c4xlarge-arm64.max-instances: "10"
>   dynamic.linux-c4xlarge-arm64.region: us-east-1
>   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-c4xlarge-arm64.type: aws
>   dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
>   dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
>   dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-c8xlarge-amd64.max-instances: "10"
>   dynamic.linux-c8xlarge-amd64.region: us-east-1
>   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-c8xlarge-amd64.type: aws
>   dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
>   dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
>   dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-c8xlarge-arm64.max-instances: "10"
>   dynamic.linux-c8xlarge-arm64.region: us-east-1
>   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-c8xlarge-arm64.type: aws
>   dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
>   dynamic.linux-cxlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-cxlarge-amd64.max-instances: "10"
>   dynamic.linux-cxlarge-amd64.region: us-east-1
>   dynamic.linux-cxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-cxlarge-amd64.type: aws
>   dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
>   dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
>   dynamic.linux-cxlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-cxlarge-arm64.max-instances: "10"
>   dynamic.linux-cxlarge-arm64.region: us-east-1
>   dynamic.linux-cxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-cxlarge-arm64.type: aws
>   dynamic.linux-extra-fast-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-extra-fast-amd64.aws-secret: aws-account
>   dynamic.linux-extra-fast-amd64.disk: "200"
>   dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
>   dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-extra-fast-amd64.max-instances: "10"
>   dynamic.linux-extra-fast-amd64.region: us-east-1
>   dynamic.linux-extra-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-extra-fast-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-extra-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-extra-fast-amd64.type: aws
>   dynamic.linux-fast-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-fast-amd64.aws-secret: aws-account
>   dynamic.linux-fast-amd64.disk: "200"
>   dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
>   dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-fast-amd64.max-instances: "10"
>   dynamic.linux-fast-amd64.region: us-east-1
>   dynamic.linux-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-fast-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-fast-amd64.type: aws
>   dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
>   dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
>   dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-m2xlarge-amd64.max-instances: "10"
>   dynamic.linux-m2xlarge-amd64.region: us-east-1
>   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-m2xlarge-amd64.type: aws
>   dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
>   dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
>   dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-m2xlarge-arm64.max-instances: "10"
>   dynamic.linux-m2xlarge-arm64.region: us-east-1
>   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-m2xlarge-arm64.type: aws
>   dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
>   dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
>   dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-m4xlarge-amd64.max-instances: "10"
>   dynamic.linux-m4xlarge-amd64.region: us-east-1
>   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-m4xlarge-amd64.type: aws
>   dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
>   dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
>   dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-m4xlarge-arm64.max-instances: "10"
>   dynamic.linux-m4xlarge-arm64.region: us-east-1
>   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-m4xlarge-arm64.type: aws
>   dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
>   dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
>   dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-m8xlarge-amd64.max-instances: "10"
>   dynamic.linux-m8xlarge-amd64.region: us-east-1
>   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-m8xlarge-amd64.type: aws
>   dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
>   dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
>   dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-m8xlarge-arm64.max-instances: "10"
>   dynamic.linux-m8xlarge-arm64.region: us-east-1
>   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-m8xlarge-arm64.type: aws
>   dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-mlarge-amd64.aws-secret: aws-account
>   dynamic.linux-mlarge-amd64.instance-type: m6a.large
>   dynamic.linux-mlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-mlarge-amd64.max-instances: "10"
>   dynamic.linux-mlarge-amd64.region: us-east-1
>   dynamic.linux-mlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-mlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-mlarge-amd64.type: aws
>   dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-mlarge-arm64.aws-secret: aws-account
>   dynamic.linux-mlarge-arm64.instance-type: m6g.large
>   dynamic.linux-mlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-mlarge-arm64.max-instances: "10"
>   dynamic.linux-mlarge-arm64.region: us-east-1
>   dynamic.linux-mlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-mlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-mlarge-arm64.type: aws
>   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
>   dynamic.linux-mxlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-mxlarge-amd64.max-instances: "10"
>   dynamic.linux-mxlarge-amd64.region: us-east-1
>   dynamic.linux-mxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-mxlarge-amd64.type: aws
>   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
>   dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
>   dynamic.linux-mxlarge-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-mxlarge-arm64.max-instances: "10"
>   dynamic.linux-mxlarge-arm64.region: us-east-1
>   dynamic.linux-mxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-mxlarge-arm64.type: aws
>   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-root-amd64.aws-secret: aws-account
>   dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
>   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-root-amd64.max-instances: "10"
>   dynamic.linux-root-amd64.region: us-east-1
>   dynamic.linux-root-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-root-amd64.sudo-commands: /usr/bin/podman
>   dynamic.linux-root-amd64.type: aws
>   dynamic.linux-root-amd64.user-data: |-
>     Content-Type: multipart/mixed; boundary="//"
>     MIME-Version: 1.0
> 
>     --//
>     Content-Type: text/cloud-config; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="cloud-config.txt"
> 
>     #cloud-config
>     cloud_final_modules:
>       - [scripts-user, always]
> 
>     --//
>     Content-Type: text/x-shellscript; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="userdata.txt"
> 
>     #!/bin/bash -ex
> 
>     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
>      echo "File system exists on the disk."
>     else
>      echo "No file system found on the disk /dev/nvme1n1"
>      mkfs -t xfs /dev/nvme1n1
>     fi
> 
>     mount /dev/nvme1n1 /home
> 
>     if [ -d "/home/var-lib-containers" ]; then
>      echo "Directory '/home/var-lib-containers' exist"
>     else
>      echo "Directory '/home/var-lib-containers' doesn't exist"
>      mkdir -p /home/var-lib-containers /var/lib/containers
>     fi
> 
>     mount --bind /home/var-lib-containers /var/lib/containers
> 
>     if [ -d "/home/var-tmp" ]; then
>      echo "Directory '/home/var-tmp' exist"
>     else
>      echo "Directory '/home/var-tmp' doesn't exist"
>      mkdir -p /home/var-tmp /var/tmp
>     fi
> 
>     mount --bind /home/var-tmp /var/tmp
> 
>     if [ -d "/home/ec2-user" ]; then
>     echo "ec2-user home exists"
>     else
>     echo "ec2-user home doesn't exist"
>     mkdir -p /home/ec2-user/.ssh
>     chown -R ec2-user /home/ec2-user
>     fi
> 
>     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
>     chown ec2-user /home/ec2-user/.ssh/authorized_keys
>     chmod 600 /home/ec2-user/.ssh/authorized_keys
>     chmod 700 /home/ec2-user/.ssh
>     restorecon -r /home/ec2-user
> 
>     --//--
>   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
>   dynamic.linux-root-arm64.aws-secret: aws-account
>   dynamic.linux-root-arm64.disk: "200"
>   dynamic.linux-root-arm64.instance-type: m6g.large
>   dynamic.linux-root-arm64.iops: "16000"
>   dynamic.linux-root-arm64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-root-arm64.max-instances: "10"
>   dynamic.linux-root-arm64.region: us-east-1
>   dynamic.linux-root-arm64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
>   dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-root-arm64.sudo-commands: /usr/bin/podman
>   dynamic.linux-root-arm64.throughput: "1000"
>   dynamic.linux-root-arm64.type: aws
>   host.power-rhtap-prod-1.address: 169.62.182.26
>   host.power-rhtap-prod-1.concurrency: "1"
>   host.power-rhtap-prod-1.platform: linux/ppc64le
>   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-1.user: root
>   host.power-rhtap-prod-2.address: 169.62.182.27
>   host.power-rhtap-prod-2.concurrency: "1"
>   host.power-rhtap-prod-2.platform: linux/ppc64le
>   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-2.user: root
>   host.power-rhtap-prod-3.address: 169.62.182.28
>   host.power-rhtap-prod-3.concurrency: "1"
>   host.power-rhtap-prod-3.platform: linux/ppc64le
>   host.power-rhtap-prod-3.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-3.user: root
>   host.power-rhtap-prod-4.address: 169.62.182.29
>   host.power-rhtap-prod-4.concurrency: "1"
>   host.power-rhtap-prod-4.platform: linux/ppc64le
>   host.power-rhtap-prod-4.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-4.user: root
>   host.power-rhtap-prod-5.address: 169.62.182.30
>   host.power-rhtap-prod-5.concurrency: "1"
>   host.power-rhtap-prod-5.platform: linux/ppc64le
>   host.power-rhtap-prod-5.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-5.user: root
>   host.power-rhtap-prod-6.address: 52.117.38.98
>   host.power-rhtap-prod-6.concurrency: "1"
>   host.power-rhtap-prod-6.platform: linux/ppc64le
>   host.power-rhtap-prod-6.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-6.user: root
>   host.power-rhtap-prod-7.address: 52.117.38.99
>   host.power-rhtap-prod-7.concurrency: "1"
>   host.power-rhtap-prod-7.platform: linux/ppc64le
>   host.power-rhtap-prod-7.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-7.user: root
>   host.power-rhtap-prod-8.address: 52.117.38.100
>   host.power-rhtap-prod-8.concurrency: "1"
>   host.power-rhtap-prod-8.platform: linux/ppc64le
>   host.power-rhtap-prod-8.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-8.user: root
>   host.power-rhtap-prod-9.address: 52.117.38.101
>   host.power-rhtap-prod-9.concurrency: "1"
>   host.power-rhtap-prod-9.platform: linux/ppc64le
>   host.power-rhtap-prod-9.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-9.user: root
>   host.power-rhtap-prod-10.address: 52.117.38.102
>   host.power-rhtap-prod-10.concurrency: "1"
>   host.power-rhtap-prod-10.platform: linux/ppc64le
>   host.power-rhtap-prod-10.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-10.user: root
>   host.sysz-rhtap-prod-1.address: 169.63.184.30
>   host.sysz-rhtap-prod-1.concurrency: "4"
>   host.sysz-rhtap-prod-1.platform: linux/s390x
>   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-1.user: root
>   host.sysz-rhtap-prod-2.address: 169.59.164.141
>   host.sysz-rhtap-prod-2.concurrency: "4"
>   host.sysz-rhtap-prod-2.platform: linux/s390x
>   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-2.user: root
>   instance-tag: rhtap-prod
>   local-platforms: linux/x86_64,local,localhost,
> kind: ConfigMap
> metadata:
>   labels:
>     build.appstudio.redhat.com/multi-platform-config: hosts
>   name: host-config
>   namespace: multi-platform-controller
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: metrics-reader
>   name: metrics-reader
>   namespace: multi-platform-controller
> type: kubernetes.io/service-account-token
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-monitor
>   namespace: multi-platform-controller
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
>   - name: probes
>     port: 8081
>     protocol: TCP
>     targetPort: 8081
>   selector:
>     app: multi-platform-controller
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: otp-tls-secrets
>   labels:
>     app: multi-platform-otp-server
>   name: multi-platform-otp-server
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 443
>     protocol: TCP
>     targetPort: 8443
>   selector:
>     app: multi-platform-otp-server
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
>   namespace: multi-platform-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: multi-platform-controller
>   template:
>     metadata:
>       labels:
>         app: multi-platform-controller
>     spec:
>       containers:
>       - args:
>         - --v=4
>         - --zap-log-level=4
>         - --zap-devel=true
>         env:
>         - name: POD_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         image: quay.io/konflux-ci/multi-platform-controller:c14b8e2b6574737ca49f7006740da167b8d0ecf6
>         imagePullPolicy: Always
>         name: multi-platform-controller
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         resources:
>           limits:
>             cpu: 500m
>             memory: 2Gi
>           requests:
>             cpu: 100m
>             memory: 512Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: multi-platform-controller
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app: multi-platform-otp-server
>   name: multi-platform-otp-server
>   namespace: multi-platform-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: multi-platform-otp-server
>   template:
>     metadata:
>       labels:
>         app: multi-platform-otp-server
>     spec:
>       containers:
>       - env:
>         - name: POD_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:c14b8e2b6574737ca49f7006740da167b8d0ecf6
>         imagePullPolicy: Always
>         name: multi-platform-otp-server
>         ports:
>         - containerPort: 8080
>           name: server
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 100m
>             memory: 128Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tls
>           name: tls
>       securityContext:
>         runAsNonRoot: true
>       volumes:
>       - name: tls
>         secret:
>           secretName: otp-tls-secrets
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: aws-account
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/public-prod-aws-account
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: aws-account
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: aws-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/public-prod-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: aws-ssh-key
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: ibm-production-ppc64le-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: ibm-production-ppc64le-ssh-key
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: ibm-production-s390x-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: ibm-production-s390x-ssh-key
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: ibm-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/ibm-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: ibm-ssh-key
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: public-prod-ibm-api-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/public-prod-ibm-api-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: public-prod-ibm-api-key
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   name: multi-platform-controller
>   namespace: multi-platform-controller
> spec:
>   endpoints:
>   - interval: 15s
>     path: /metrics
>     port: http-metrics
>     scheme: http
>   selector:
>     matchLabels:
>       app: multi-platform-controller
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: clean-shared-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will clean up after a build
>   params:
>   - name: SECRET_NAME
>     type: string
>   - name: TASKRUN_NAME
>     type: string
>   - name: NAMESPACE
>     type: string
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: provision
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       set -eu
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST=$(params.USER)@$(params.HOST)
> 
>       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo userdel -f -r -Z $USERNAME
>   workspaces:
>   - name: ssh
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: provision-shared-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will create a new user on a host, setup ssh keys, and then
>     create the relevant secret.
>   params:
>   - name: SECRET_NAME
>     type: string
>   - name: TASKRUN_NAME
>     type: string
>   - name: NAMESPACE
>     type: string
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   - name: SUDO_COMMANDS
>     type: string
>   stepTemplate:
>     env:
>     - name: SECRET_NAME
>       value: $(params.SECRET_NAME)
>     - name: TASKRUN_NAME
>       value: $(params.TASKRUN_NAME)
>     - name: NAMESPACE
>       value: $(params.NAMESPACE)
>     - name: HOST
>       value: $(params.HOST)
>     - name: USER
>       value: $(params.USER)
>     - name: SUDO_COMMANDS
>       value: $(params.SUDO_COMMANDS)
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: provision
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       set -eu
>       set -o pipefail
>       mkdir -p /root/.ssh
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST="$USER@$HOST"
> 
>       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
> 
>       cat >script.sh <<EOF
>       sudo dnf install podman -y
>       rm -f $USERNAME $USERNAME.pub
>       sudo useradd -m $USERNAME -p $(openssl rand -base64 12)
>       ssh-keygen -N '' -f $USERNAME
>       sudo su $USERNAME -c 'mkdir /home/$USERNAME/.ssh'
>       sudo su $USERNAME -c 'mkdir /home/$USERNAME/build'
>       sudo mv $USERNAME.pub /home/$USERNAME/.ssh/authorized_keys
>       sudo chown $USERNAME /home/$USERNAME/.ssh/authorized_keys
>       sudo restorecon -FRvv /home/$USERNAME/.ssh
>       EOF
> 
>       if [ ! -z "$SUDO_COMMANDS" ]; then
>       #if we need sudo access add it to the script
>       cat >>script.sh <<EOF
>       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
>       EOF
>       fi
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST cat $USERNAME  >id_rsa
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST rm $USERNAME
>       chmod 0400 id_rsa
>       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
>       DIR=$(echo /home/$USERNAME | base64 -w 0)
> 
>       if [ -e "/tls/tls.crt" ]; then
>         KEY=$(cat id_rsa)
>         OTP=$(curl --cacert /tls/tls.crt -XPOST -d "$KEY" https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/store-key | base64 -w 0)
>         OTP_SERVER="$(echo https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/otp | base64 -w 0)"
>         echo $OTP | base64 -d
>         cat >secret.yaml <<EOF
>         apiVersion: v1
>         data:
>           otp-ca: "$(cat /tls/tls.crt | base64 -w 0)"
>           otp: "$OTP"
>           otp-server: "$OTP_SERVER"
>           host: "$HOST"
>           user-dir: "$DIR"
>         kind: Secret
>         metadata:
>           name: "$SECRET_NAME"
>           namespace: "$NAMESPACE"
>           labels:
>             build.appstudio.redhat.com/multi-platform-secret: "true"
>         type: Opaque
>       EOF
>       else
>         KEY=$(cat id_rsa | base64 -w 0)
>         cat >secret.yaml <<EOF
>         apiVersion: v1
>         data:
>           id_rsa: "$KEY"
>           host: "$HOST"
>           user-dir: "$DIR"
>         kind: Secret
>         metadata:
>           name: "$SECRET_NAME"
>           namespace: "$NAMESPACE"
>           labels:
>             build.appstudio.redhat.com/multi-platform-secret: "true"
>         type: Opaque
>       EOF
>       fi
> 
>       kubectl create -f secret.yaml
>     volumeMounts:
>     - mountPath: /tls
>       name: tls
>   volumes:
>   - name: tls
>     secret:
>       optional: true
>       secretName: otp-tls-secrets
>   workspaces:
>   - name: ssh
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: update-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will create a new user on a host, setup ssh keys, and then
>     create the relevant secret.
>   params:
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: update
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       mkdir -p /root/.ssh
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST=$(params.USER)@$(params.HOST)
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y"
> 
>       #now clean up any dangling users, if their cleanup failed for whatever reason
> 
>       cat >script.sh <<EOF
>       threshold=$(date -d "1 day ago" +%s)
>       cd /home
>       for file in u-*; do
>         # Check if the file is a regular file and older than the threshold
>         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
>         # Delete the user
>         sudo userdel -f -r -Z $file
>         echo "Deleted: $file"
>         fi
>       done
>       EOF
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
>   workspaces:
>   - name: ssh
./commit-805ff13f/production/components/sprayproxy/production/kustomize.out.yaml
1,322d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   name: sprayproxy
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: metrics-reader
<   namespace: sprayproxy
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: sprayproxy
<   namespace: sprayproxy
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: sprayproxy-backend-register
< rules:
< - nonResourceURLs:
<   - /backends
<   verbs:
<   - get
<   - create
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: sprayproxy-kube-rbac-proxy
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
<   name: sprayproxy-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pipeline-service-sre
<   namespace: sprayproxy
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: view
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: sprayproxy-backend-register
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: sprayproxy-backend-register
< subjects:
< - kind: ServiceAccount
<   name: sprayproxy
<   namespace: sprayproxy
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: sprayproxy-kube-rbac-proxy
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: sprayproxy-kube-rbac-proxy
< subjects:
< - kind: ServiceAccount
<   name: sprayproxy
<   namespace: sprayproxy
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: sprayproxy-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: sprayproxy-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: sprayproxy
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: sprayproxy
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app.kubernetes.io/name: metrics
<     app.kubernetes.io/part-of: sprayproxy
<   name: metrics
<   namespace: sprayproxy
< spec:
<   ports:
<   - name: metrics
<     port: 9443
<     protocol: TCP
<     targetPort: metrics
<   selector:
<     app.kubernetes.io/name: sprayproxy
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     service.beta.openshift.io/serving-cert-secret-name: sprayproxy-tls
<   labels:
<     app.kubernetes.io/name: sprayproxy
<   name: sprayproxy
<   namespace: sprayproxy
< spec:
<   ports:
<   - name: proxy
<     port: 8443
<     protocol: TCP
<     targetPort: proxy
<   selector:
<     app.kubernetes.io/name: sprayproxy
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app.kubernetes.io/name: sprayproxy
<   name: sprayproxy
<   namespace: sprayproxy
< spec:
<   replicas: 2
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: sprayproxy
<   template:
<     metadata:
<       labels:
<         app: sprayproxy
<         app.kubernetes.io/name: sprayproxy
<     spec:
<       affinity:
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchExpressions:
<                 - key: app
<                   operator: In
<                   values:
<                   - sprayproxy
<               topologyKey: kubernetes.io/hostname
<             weight: 100
<       containers:
<       - args:
<         - server
<         env:
<         - name: GH_APP_WEBHOOK_SECRET
<           valueFrom:
<             secretKeyRef:
<               key: webhook.secret
<               name: pipelines-as-code-secret
<         - name: SPRAYPROXY_SERVER_BACKEND
<           value: |
<             https://pipelines-as-code-controller-openshift-pipelines.apps.stone-prd-m01.84db.p1.openshiftapps.com https://pipelines-as-code-controller-openshift-pipelines.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com
<         image: quay.io/konflux-ci/sprayproxy:f1afe07688592565986ded70ca912d80629c04a0
<         name: sprayproxy
<         ports:
<         - containerPort: 8080
<           name: server
<         resources:
<           limits:
<             cpu: 500m
<             memory: 384Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --ignore-paths=/proxy,/healthz
<         - --logtostderr=true
<         - --v=4
<         - --tls-cert-file=/etc/tls/tls.crt
<         - --tls-private-key-file=/etc/tls/tls.key
<         image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: proxy
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
<         volumeMounts:
<         - mountPath: /etc/tls
<           name: tls
<           readOnly: true
<       - args:
<         - --secure-listen-address=0.0.0.0:9443
<         - --upstream=http://127.0.0.1:9090/
<         - --logtostderr=true
<         - --v=4
<         image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
<         name: kube-rbac-metrics
<         ports:
<         - containerPort: 9443
<           name: metrics
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
<       serviceAccountName: sprayproxy
<       volumes:
<       - name: tls
<         secret:
<           defaultMode: 420
<           secretName: sprayproxy-tls
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: pipelines-as-code-secret
< spec:
<   dataFrom:
<   - extract:
<       key: production/pipeline-service/github-app
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
<   name: sprayproxy
<   namespace: sprayproxy
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     path: /metrics
<     port: metrics
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: metrics
<       app.kubernetes.io/part-of: sprayproxy
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   annotations:
<     haproxy.router.openshift.io/hsts_header: max-age=63072000
<   name: sprayproxy-route
<   namespace: sprayproxy
< spec:
<   port:
<     targetPort: proxy
<   tls:
<     insecureEdgeTerminationPolicy: Redirect
<     termination: reencrypt
<   to:
<     kind: Service
<     name: sprayproxy 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 805ff13f to 89179443 on Mon Aug 26 14:04:00 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 4dff191c..37a7b041 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1949,14 +1949,6 @@ metadata:
     argocd.argoproj.io/sync-wave: "0"
   name: config
 spec:
-  config:
-    nodeSelector:
-      appstudio.redhat.com/workload: tenants
-    tolerations:
-      - key: appstudio.redhat.com/workload
-        operator: "Equal"
-        value: "tenants"
-        effect: "NoSchedule"
   chain:
     artifacts.oci.storage: oci
     artifacts.pipelinerun.enable-deep-inspection: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1520 lines)</summary>  

``` 
./commit-805ff13f/staging/components/jvm-build-service/staging/kustomize.out.yaml
1,1508d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: jvm-build-service
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: artifactbuilds.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: ArtifactBuild
<     listKind: ArtifactBuildList
<     plural: artifactbuilds
<     singular: artifactbuild
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.gav
<       name: GAV
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: ArtifactBuild TODO provide godoc description
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
<             properties:
<               gav:
<                 description: GAV is the groupID:artifactID:version tuple seen in maven
<                   pom.xml files
<                 type: string
<             type: object
<           status:
<             properties:
<               message:
<                 type: string
<               scm:
<                 properties:
<                   commitHash:
<                     type: string
<                   path:
<                     type: string
<                   private:
<                     type: boolean
<                   scmType:
<                     type: string
<                   scmURL:
<                     type: string
<                   tag:
<                     type: string
<                 type: object
<               state:
<                 description: 'TODO: conditions?'
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: dependencybuilds.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: DependencyBuild
<     listKind: DependencyBuildList
<     plural: dependencybuilds
<     singular: dependencybuild
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.scm.scmURL
<       name: URL
<       type: string
<     - jsonPath: .spec.scm.tag
<       name: Tag
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     - jsonPath: .status.message
<       name: Message
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: DependencyBuild TODO provide godoc description
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
<             properties:
<               scm:
<                 properties:
<                   commitHash:
<                     type: string
<                   path:
<                     type: string
<                   private:
<                     type: boolean
<                   scmType:
<                     type: string
<                   scmURL:
<                     type: string
<                   tag:
<                     type: string
<                 type: object
<               version:
<                 type: string
<             type: object
<           status:
<             properties:
<               buildAttempts:
<                 items:
<                   properties:
<                     build:
<                       properties:
<                         complete:
<                           type: boolean
<                         diagnosticDockerFile:
<                           type: string
<                         finishTime:
<                           format: int64
<                           type: integer
<                         pipelineName:
<                           type: string
<                         results:
<                           properties:
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
<                             gavs:
<                               description: The produced GAVs
<                               items:
<                                 type: string
<                               type: array
<                             gitArchive:
<                               description: The git archive source information
<                               properties:
<                                 sha:
<                                   type: string
<                                 tag:
<                                   type: string
<                                 url:
<                                   type: string
<                               type: object
<                             hermeticBuildImage:
<                               description: The hermetic build image produced by the
<                                 build
<                               type: string
<                             image:
<                               description: the image resulting from the run
<                               type: string
<                             imageDigest:
<                               type: string
<                             pipelineResults:
<                               description: The Tekton results
<                               properties:
<                                 logs:
<                                   type: string
<                                 record:
<                                   type: string
<                                 result:
<                                   type: string
<                               type: object
<                             verificationFailures:
<                               type: string
<                             verified:
<                               description: If the resulting image was verified
<                               type: boolean
<                           required:
<                           - imageDigest
<                           type: object
<                         startTime:
<                           format: int64
<                           type: integer
<                         succeeded:
<                           type: boolean
<                       required:
<                       - complete
<                       - pipelineName
<                       type: object
<                     buildId:
<                       type: string
<                     buildRecipe:
<                       properties:
<                         additionalDownloads:
<                           items:
<                             properties:
<                               binaryPath:
<                                 type: string
<                               fileName:
<                                 type: string
<                               packageName:
<                                 type: string
<                               sha256:
<                                 type: string
<                               type:
<                                 type: string
<                               uri:
<                                 type: string
<                             required:
<                             - type
<                             type: object
<                           type: array
<                         additionalMemory:
<                           type: integer
<                         allowedDifferences:
<                           items:
<                             type: string
<                           type: array
<                         commandLine:
<                           items:
<                             type: string
<                           type: array
<                         contextPath:
<                           type: string
<                         disableSubmodules:
<                           type: boolean
<                         disabledPlugins:
<                           items:
<                             type: string
<                           type: array
<                         enforceVersion:
<                           type: string
<                         image:
<                           type: string
<                         javaVersion:
<                           type: string
<                         pipeline:
<                           description: Deprecated
<                           type: string
<                         postBuildScript:
<                           type: string
<                         preBuildScript:
<                           type: string
<                         repositories:
<                           items:
<                             type: string
<                           type: array
<                         tool:
<                           type: string
<                         toolVersion:
<                           type: string
<                         toolVersions:
<                           additionalProperties:
<                             type: string
<                           type: object
<                       type: object
<                   type: object
<                 type: array
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                     tool:
<                       type: string
<                   type: object
<                 type: array
<               commitTime:
<                 format: int64
<                 type: integer
<               conditions:
<                 description: 'Conditions for capturing generic status NOTE: inspecting
<                   the fabric8 Status class, it looked analogous to k8s Condition,
<                   and then I took the liberty of making it an array, given best practices
<                   in the k8s/ocp ecosystems'
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource. --- This struct is intended for direct
<                     use as an array at the field path .status.conditions.  For example,
<                     \n \ttype FooStatus struct{ \t    // Represents the observations
<                     of a foo's current state. \t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
<                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
<                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
<                     \t}"
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
<               contaminates:
<                 items:
<                   properties:
<                     allowed:
<                       type: boolean
<                     buildId:
<                       type: string
<                     contaminatedArtifacts:
<                       items:
<                         type: string
<                       type: array
<                     gav:
<                       type: string
<                     rebuildAvailable:
<                       type: boolean
<                     source:
<                       type: string
<                   type: object
<                 type: array
<               deployedArtifacts:
<                 items:
<                   type: string
<                 type: array
<               discoveryPipelineResults:
<                 description: A representation of the Tekton Results records for a
<                   pipeline
<                 properties:
<                   logs:
<                     type: string
<                   record:
<                     type: string
<                   result:
<                     type: string
<                 type: object
<               failedVerification:
<                 type: boolean
<               hermetic:
<                 type: boolean
<               message:
<                 type: string
<               pipelineRetries:
<                 type: integer
<               potentialBuildRecipes:
<                 description: PotentialBuildRecipes additional recipes to try if the
<                   current recipe fails
<                 items:
<                   properties:
<                     additionalDownloads:
<                       items:
<                         properties:
<                           binaryPath:
<                             type: string
<                           fileName:
<                             type: string
<                           packageName:
<                             type: string
<                           sha256:
<                             type: string
<                           type:
<                             type: string
<                           uri:
<                             type: string
<                         required:
<                         - type
<                         type: object
<                       type: array
<                     additionalMemory:
<                       type: integer
<                     allowedDifferences:
<                       items:
<                         type: string
<                       type: array
<                     commandLine:
<                       items:
<                         type: string
<                       type: array
<                     contextPath:
<                       type: string
<                     disableSubmodules:
<                       type: boolean
<                     disabledPlugins:
<                       items:
<                         type: string
<                       type: array
<                     enforceVersion:
<                       type: string
<                     image:
<                       type: string
<                     javaVersion:
<                       type: string
<                     pipeline:
<                       description: Deprecated
<                       type: string
<                     postBuildScript:
<                       type: string
<                     preBuildScript:
<                       type: string
<                     repositories:
<                       items:
<                         type: string
<                       type: array
<                     tool:
<                       type: string
<                     toolVersion:
<                       type: string
<                     toolVersions:
<                       additionalProperties:
<                         type: string
<                       type: object
<                   type: object
<                 type: array
<               potentialBuildRecipesIndex:
<                 type: integer
<               state:
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: jbsconfigs.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: JBSConfig
<     listKind: JBSConfigList
<     plural: jbsconfigs
<     singular: jbsconfig
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .status.message
<       name: Message
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: JBSConfig TODO provide godoc description
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
<             properties:
<               additionalRecipes:
<                 items:
<                   type: string
<                 type: array
<               buildSettings:
<                 properties:
<                   buildRequestCPU:
<                     description: The requested CPU for the build and deploy steps
<                       of a pipeline
<                     type: string
<                   buildRequestMemory:
<                     description: The requested memory for the build and deploy steps
<                       of a pipeline
<                     type: string
<                   taskLimitCPU:
<                     description: The CPU limit for all other steps of a pipeline
<                     type: string
<                   taskLimitMemory:
<                     description: The memory limit for all other steps of a pipeline
<                     type: string
<                   taskRequestCPU:
<                     description: The requested CPU for all other steps of a pipeline
<                     type: string
<                   taskRequestMemory:
<                     description: The requested memory for all other steps of a pipeline
<                     type: string
<                 type: object
<               cacheSettings:
<                 properties:
<                   disableTLS:
<                     type: boolean
<                   ioThreads:
<                     type: string
<                   limitCPU:
<                     type: string
<                   limitMemory:
<                     type: string
<                   requestCPU:
<                     type: string
<                   requestMemory:
<                     type: string
<                   storage:
<                     type: string
<                   workerThreads:
<                     type: string
<                 type: object
<               enableRebuilds:
<                 type: boolean
<               gitSourceArchive:
<                 properties:
<                   disableSSLVerification:
<                     type: boolean
<                   identity:
<                     type: string
<                   url:
<                     type: string
<                 type: object
<               hermeticBuilds:
<                 type: string
<               mavenBaseLocations:
<                 additionalProperties:
<                   type: string
<                 type: object
<               mavenDeployment:
<                 properties:
<                   repository:
<                     type: string
<                   username:
<                     type: string
<                 type: object
<               registry:
<                 properties:
<                   dontReuseExisting:
<                     type: boolean
<                   host:
<                     type: string
<                   insecure:
<                     type: boolean
<                   owner:
<                     type: string
<                   port:
<                     type: string
<                   prependTag:
<                     type: string
<                   private:
<                     description: if this is true and we are automatically creating
<                       registries then we will make it private
<                     type: boolean
<                   repository:
<                     type: string
<                   secretName:
<                     type: string
<                 type: object
<               relocationPatterns:
<                 items:
<                   properties:
<                     relocationPattern:
<                       properties:
<                         buildPolicy:
<                           type: string
<                         patterns:
<                           items:
<                             properties:
<                               pattern:
<                                 properties:
<                                   from:
<                                     type: string
<                                   to:
<                                     type: string
<                                 required:
<                                 - from
<                                 - to
<                                 type: object
<                             required:
<                             - pattern
<                             type: object
<                           type: array
<                       type: object
<                   required:
<                   - relocationPattern
<                   type: object
<                 type: array
<               requireArtifactVerification:
<                 description: If this is true then the build will fail if artifact
<                   verification fails otherwise deploy will happen as normal, but a
<                   field will be set on the DependencyBuild
<                 type: boolean
<               sharedRegistries:
<                 items:
<                   properties:
<                     host:
<                       type: string
<                     insecure:
<                       type: boolean
<                     owner:
<                       type: string
<                     port:
<                       type: string
<                     prependTag:
<                       type: string
<                     repository:
<                       type: string
<                     secretName:
<                       type: string
<                   type: object
<                 type: array
<             type: object
<           status:
<             properties:
<               imageRegistry:
<                 properties:
<                   host:
<                     type: string
<                   insecure:
<                     type: boolean
<                   owner:
<                     type: string
<                   port:
<                     type: string
<                   prependTag:
<                     type: string
<                   repository:
<                     type: string
<                   secretName:
<                     type: string
<                 type: object
<               message:
<                 type: string
<               rebuildsPossible:
<                 type: boolean
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: jvmimagescans.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: JvmImageScan
<     listKind: JvmImageScanList
<     plural: jvmimagescans
<     singular: jvmimagescan
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.image
<       name: Image
<       type: string
<     - jsonPath: .status.state
<       name: State
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: JvmImageScan TODO provide godoc description
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
<             properties:
<               image:
<                 type: string
<             type: object
<           status:
<             properties:
<               digest:
<                 type: string
<               message:
<                 type: string
<               results:
<                 items:
<                   properties:
<                     attributes:
<                       additionalProperties:
<                         type: string
<                       type: object
<                     gav:
<                       type: string
<                     source:
<                       type: string
<                   type: object
<                 type: array
<               state:
<                 type: string
<             type: object
<         required:
<         - spec
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
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: rebuiltartifacts.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: RebuiltArtifact
<     listKind: RebuiltArtifactList
<     plural: rebuiltartifacts
<     singular: rebuiltartifact
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.gav
<       name: GAV
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: RebuiltArtifact An artifact that has been rebuilt and deployed
<           to S3 or a Container registry
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
<             properties:
<               digest:
<                 type: string
<               gav:
<                 description: The GAV of the rebuilt artifact
<                 type: string
<               image:
<                 type: string
<             type: object
<           status:
<             type: object
<         required:
<         - spec
<         type: object
<     served: true
<     storage: true
<     subresources: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.2
<   creationTimestamp: null
<   name: systemconfigs.jvmbuildservice.io
< spec:
<   group: jvmbuildservice.io
<   names:
<     kind: SystemConfig
<     listKind: SystemConfigList
<     plural: systemconfigs
<     singular: systemconfig
<   scope: Cluster
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: SystemConfig TODO provide godoc description
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
<             properties:
<               builders:
<                 additionalProperties:
<                   properties:
<                     image:
<                       type: string
<                     priority:
<                       type: integer
<                     tag:
<                       type: string
<                   type: object
<                 type: object
<               maxAdditionalMemory:
<                 type: integer
<               recipeDatabase:
<                 type: string
<             type: object
<           status:
<             type: object
<         required:
<         - spec
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
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: metrics-reader
<   namespace: jvm-build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: hacbs-jvm-cache
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - rebuiltartifacts
<   - artifactbuilds
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds/status
<   verbs:
<   - patch
<   - update
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   verbs:
<   - patch
<   - update
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - jbsconfigs
<   verbs:
<   - get
<   - list
<   - watch
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
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: hacbs-jvm-operator
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   - artifactbuilds/status
<   - dependencybuilds
<   - dependencybuilds/status
<   - rebuiltartifacts
<   - rebuiltartifacts/status
<   - systemconfigs
<   - systemconfigs/status
<   - jbsconfigs
<   - jbsconfigs/status
<   - jvmimagescans
<   - jvmimagescans/status
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
<   - quota.openshift.io
<   resources:
<   - clusterresourcequotas
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - apiextensions.k8s.io
<   resources:
<   - customresourcedefinitions
<   verbs:
<   - get
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   - pipelineruns/status
<   - taskruns
<   - taskruns/status
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
<   - events.k8s.io
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-image-secrets
<   - jvm-build-git-secrets
<   resources:
<   - secrets
<   verbs:
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - create
< - apiGroups:
<   - apps
<   resources:
<   - deployments
<   verbs:
<   - get
<   - list
<   - watch
<   - create
< - apiGroups:
<   - apps
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - deployments
<   verbs:
<   - delete
<   - patch
<   - update
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-tls-ca
<   resources:
<   - configmaps
<   verbs:
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - create
< - apiGroups:
<   - ""
<   resources:
<   - services
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - services
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - resourcequotas
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - get
<   - create
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - rolebindings
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - imagerepositories
<   verbs:
<   - create
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: hacbs-jvm-operator-view
< rules:
< - apiGroups:
<   - jvmbuildservice.io
<   resources:
<   - artifactbuilds
<   - artifactbuilds/status
<   - dependencybuilds
<   - dependencybuilds/status
<   - systemconfigs
<   - systemconfigs/status
<   - jbsconfigs
<   - jbsconfigs/status
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: jvm-build-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: grant-argocd
<   namespace: jvm-build-service
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
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: hacbs-jvm-operator
< subjects:
< - kind: ServiceAccount
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: prometheus-jvm-build-service-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: jvm-build-service-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: jvm-build-service
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: jvm-build-service
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator-monitor
<   namespace: jvm-build-service
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: hacbs-jvm-operator
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: hacbs-jvm-operator
<   namespace: jvm-build-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: hacbs-jvm-operator
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         app: hacbs-jvm-operator
<     spec:
<       containers:
<       - args:
<         - --v=4
<         - --zap-log-level=info
<         env:
<         - name: USE_IMAGE_SPI
<           value: "true"
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cac2c46771e4ce11554e7032b90aab221d928645
<         imagePullPolicy: IfNotPresent
<         name: hacbs-jvm-operator
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         resources:
<           limits:
<             cpu: 500m
<             memory: 1024Mi
<           requests:
<             cpu: 50m
<             memory: 1024Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: hacbs-jvm-operator
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: quaytoken
<   namespace: jvm-build-service
< spec:
<   dataFrom:
<   - extract:
<       key: staging/build/image-controller
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quaytoken
< ---
< apiVersion: jvmbuildservice.io/v1alpha1
< kind: SystemConfig
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app: hacbs-jvm-operator
<   name: cluster
<   namespace: jvm-build-service
< spec:
<   builders:
<     ubi7:
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi7:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
<       priority: 1000
<       tag: jdk:7,maven:3.8.8;3.9.5,ant:1.9.16
<     ubi8:
<       image: quay.io/redhat-user-workloads/rhtap-build-tenant/jvm-build-service-builder-images/ubi8:c2e2b96a105f45bbb613f93cbfd5d7fddd96154a
<       priority: 2000
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.6;8.4;8.3;8.0.2;7.6.3;7.5.1;7.4.2;7.3.3;6.9.4;6.4.1;6.2.2;5.6.4;5.3.1;4.10.3,sbt:1.8.0,ant:1.10.13
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: jvm-build-service
<   namespace: jvm-build-service
< spec:
<   endpoints:
<   - interval: 15s
<     path: /metrics
<     port: http-metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app: hacbs-jvm-operator
./commit-805ff13f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1971a1972,1979
>   config:
>     nodeSelector:
>       appstudio.redhat.com/workload: tenants
>     tolerations:
>     - effect: NoSchedule
>       key: appstudio.redhat.com/workload
>       operator: Equal
>       value: tenants 
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
<h3>4: Development changes from 805ff13f to 89179443 on Mon Aug 26 14:04:00 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 4dff191c..37a7b041 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1949,14 +1949,6 @@ metadata:
     argocd.argoproj.io/sync-wave: "0"
   name: config
 spec:
-  config:
-    nodeSelector:
-      appstudio.redhat.com/workload: tenants
-    tolerations:
-      - key: appstudio.redhat.com/workload
-        operator: "Equal"
-        value: "tenants"
-        effect: "NoSchedule"
   chain:
     artifacts.oci.storage: oci
     artifacts.pipelinerun.enable-deep-inspection: true 
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
```
 
</details> 
<br> 


</div>
