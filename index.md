# kustomize changes tracked by commits 
### This file generated at Tue Jul 11 16:04:13 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 4 commits


<div>
<h3>1: Staging changes from 98f03d6a to 4fccdc4c on Tue Jul 11 13:15:59 2023 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/pipeline-service/kustomization.yaml
index bc5ce193..83f59922 100644
--- a/components/monitoring/grafana/base/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f64281aeaf44cb99372f456740499ce9b40929f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 68078320..56391c69 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f64281aeaf44cb99372f456740499ce9b40929f
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f64281aeaf44cb99372f456740499ce9b40929f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
   - ../base/servicemonitors
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6dc54441..e71c04ee 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f64281aeaf44cb99372f456740499ce9b40929f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/servicemonitors
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index 2a79d16f..cfdf2d66 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -1,5 +1,8 @@
 #!/usr/bin/env bash
 
+PAC_NAMESPACE='openshift-pipelines'
+PAC_SECRET_NAME='pipelines-as-code-secret'
+
 setup-pac-app() (
         # Inspired by implementation by Will Haley at:
         #   http://willhaley.com/blog/generate-jwt-with-bash/
@@ -46,15 +49,15 @@ setup-pac-app() (
 
         webhook_secret=$(openssl rand -hex 20)
 
-        if ! oc get -n pipelines-as-code secret pipelines-as-code-secret &>/dev/null; then         
+        if ! oc get -n $PAC_NAMESPACE secret $PAC_SECRET_NAME &>/dev/null; then
                 token=$(sign rs256 "$payload" "$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)")
-                webhook_url=$(oc whoami --show-console | sed 's/console-openshift-console/pipelines-as-code-controller-pipelines-as-code/')
+                pac_host=$(oc get -n $PAC_NAMESPACE route pipelines-as-code-controller -o go-template="{{ .spec.host }}")
                 curl \
                 -X PATCH \
                 -H "Accept: application/vnd.github.v3+json" \
                 -H "Authorization: Bearer $token" \
                 https://api.github.com/app/hook/config \
-                -d "{\"content_type\":\"json\",\"insecure_ssl\":\"1\",\"secret\":\"$webhook_secret\",\"url\":\"$webhook_url\"}" &>/dev/null
+                -d "{\"content_type\":\"json\",\"insecure_ssl\":\"1\",\"secret\":\"$webhook_secret\",\"url\":\"https://$pac_host\"}" &>/dev/null
         fi
 
         echo $webhook_secret
@@ -78,9 +81,6 @@ if [ -n "${PAC_GITLAB_TOKEN}" ]; then
         GITLAB_WEBHOOK_DATA="--from-literal gitlab.token='${PAC_GITLAB_TOKEN}'"
 fi
 
-PAC_NAMESPACE='pipelines-as-code'
-PAC_SECRET_NAME='pipelines-as-code-secret'
-
 oc create namespace -o yaml --dry-run=client ${PAC_NAMESPACE} | oc apply -f-
 oc create namespace -o yaml --dry-run=client build-service | oc apply -f-
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3338 lines)</summary>  

``` 
./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
5a6,14
>   labels:
>     argocd.argoproj.io/managed-by: openshift-gitops
>   name: pipelines-as-code
> ---
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
25a35,173
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: repositories.pipelinesascode.tekton.dev
> spec:
>   group: pipelinesascode.tekton.dev
>   names:
>     kind: Repository
>     plural: repositories
>     shortNames:
>     - repo
>     singular: repository
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.url
>       name: URL
>       type: string
>     - jsonPath: .pipelinerun_status[-1].conditions[?(@.type=="Succeeded")].status
>       name: Succeeded
>       type: string
>     - jsonPath: .pipelinerun_status[-1].conditions[?(@.type=="Succeeded")].reason
>       name: Reason
>       type: string
>     - jsonPath: .pipelinerun_status[-1].startTime
>       name: StartTime
>       type: date
>     - jsonPath: .pipelinerun_status[-1].completionTime
>       name: CompletionTime
>       type: date
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Schema for the repository API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/  api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: Spec defines the desired state of Repository
>             properties:
>               concurrency_limit:
>                 description: Number of maximum pipelinerun running at any moment
>                 type: integer
>               git_provider:
>                 properties:
>                   secret:
>                     properties:
>                       key:
>                         default: provider.token
>                         description: Key inside the secret
>                         type: string
>                       name:
>                         description: The secret name
>                         type: string
>                     type: object
>                   type:
>                     description: The Git provider type
>                     type: string
>                   url:
>                     description: The Git provider api url
>                     type: string
>                   user:
>                     description: The Git provider api user
>                     type: string
>                   webhook_secret:
>                     properties:
>                       key:
>                         default: webhook.secret
>                         description: Key inside the secret
>                         type: string
>                       name:
>                         description: The secret name
>                         type: string
>                     type: object
>                 type: object
>               incoming:
>                 items:
>                   properties:
>                     secret:
>                       description: Secret to use for the webhook
>                       properties:
>                         key:
>                           default: secret
>                           description: Key of the secret
>                           type: string
>                         name:
>                           description: Name of the secret
>                           type: string
>                       type: object
>                     targets:
>                       description: List of target branches or ref to trigger webhooks
>                         on
>                       items:
>                         description: Branch name
>                         type: string
>                       type: array
>                     type:
>                       description: Type of webhook
>                       enum:
>                       - webhook-url
>                       type: string
>                   type: object
>                 type: array
>               type:
>                 description: Git repository provider
>                 enum:
>                 - github
>                 - gitea
>                 - bitbucket
>                 - gitlab
>                 - bitbucket-enteprise
>                 type: string
>               url:
>                 description: Repository URL
>                 type: string
>             type: object
>         type: object
>         x-kubernetes-preserve-unknown-fields: true
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
39,40c187,216
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
62a239,250
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
108,109c296,301
<   name: openshift-pipelines-secret-migration
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-role
>   namespace: pipelines-as-code
114c306
<   - secrets
---
>   - configmaps
115a308
>   - get
117c310,378
<   - create
---
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pipelines-as-code-info
>   resources:
>   - configmaps
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>   name: pipelines-as-code-monitoring
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - services
>   - endpoints
>   - pods
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
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-role
>   namespace: pipelines-as-code
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
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
118a380,381
>   - list
>   - create
119a383
>   - delete
120a385,431
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-role
>   namespace: pipelines-as-code
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
>   - secrets
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - pipelines-as-code-webhook-certs
>   resources:
>   - secrets
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - create
>   - update
121a433,434
>   - patch
>   - watch
147a461,504
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-info
>   namespace: tekton-chains
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - chains-info
>   resources:
>   - configmaps
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-leader-election
>   namespace: tekton-chains
> rules:
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
169c526,531
<   name: openshift-gitops-apply-tekton-config-parameters
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-controller-clusterrole
>   namespace: pipelines-as-code
172c534
<   - monitoring.coreos.com
---
>   - ""
174c536,558
<   - servicemonitors
---
>   - namespaces
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - create
>   - update
>   - delete
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - create
>   - list
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
177a562
>   - create
178a564,568
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
179a570,679
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-watcher-clusterrole
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - delete
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - get
>   - delete
>   - list
>   - watch
>   - update
>   - patch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - pods/log
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - update
>   - patch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-webhook-clusterrole
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - admissionregistration.k8s.io
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - admissionregistration.k8s.io
>   resourceNames:
>   - validation.pipelinesascode.tekton.dev
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
>   - get
>   - update
180a681,688
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: openshift-gitops-apply-tekton-config-parameters
> rules:
207c715,717
<   name: openshift-gitops-jobs-admin
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: openshift-gitops-pipelines-as-code
210c720
<   - batch
---
>   - apiextensions.k8s.io
212c722
<   - jobs
---
>   - customresourcedefinitions
213a724
>   - patch
216c727,732
<   - patch
---
>   - create
> - apiGroups:
>   - admissionregistration.k8s.io
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
218a735,740
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - servicemonitors
>   verbs:
>   - create
263c785,816
<   name: tekton-chains-public-key-viewer
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: pipelines-as-code-aggregate
> rules:
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-cluster-access
267,268d819
<   resourceNames:
<   - public-key
269a821,907
>   - pods
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - tasks
>   - clustertasks
>   - taskruns
>   - pipelines
>   - pipelineruns
>   - pipelineresources
>   - conditions
>   - runs
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns/finalizers
>   - pipelineruns/finalizers
>   - runs/finalizers
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - tasks/status
>   - clustertasks/status
>   - taskruns/status
>   - pipelines/status
>   - pipelineruns/status
>   - pipelineresources/status
>   - runs/status
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-tenant-access
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/log
>   - events
>   - persistentvolumeclaims
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - limitranges
270a909
>   - serviceaccounts
274a914,925
> - apiGroups:
>   - apps
>   resources:
>   - statefulsets
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
281c932
<   name: tekton-chains-secret-migration
---
>   name: tekton-chains-public-key-viewer
287d937
<   - signing-secrets
291a942,943
>   - list
>   - watch
480,481c1132,1137
<   name: openshift-pipelines-public-key-viewer
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-binding
>   namespace: pipelines-as-code
484,485c1140,1160
<   kind: ClusterRole
<   name: tekton-chains-public-key-viewer
---
>   kind: Role
>   name: pipelines-as-code-controller-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-info
496,497c1171,1174
<   name: openshift-pipelines-secret-migration
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: pipelines-as-code-monitoring
>   namespace: pipelines-as-code
501c1178
<   name: openshift-pipelines-secret-migration
---
>   name: pipelines-as-code-monitoring
504,505c1181,1220
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
>   name: prometheus-k8s
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-binding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-watcher-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-watcher
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-binding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-webhook-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-webhook
528c1243,1247
<   name: tekton-chains-public-key-viewer
---
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-leaderelection
532,533c1251,1271
<   kind: ClusterRole
<   name: tekton-chains-public-key-viewer
---
>   kind: Role
>   name: tekton-chains-leader-election
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-info
>   namespace: tekton-chains
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: tekton-chains-info
544c1282
<   name: tekton-chains-secrets-migrator
---
>   name: tekton-chains-public-key-viewer
549c1287
<   name: tekton-chains-secret-migration
---
>   name: tekton-chains-public-key-viewer
551,553c1289,1291
< - kind: ServiceAccount
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: system:authenticated
579a1318,1377
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-controller-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-watcher-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-webhook-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
611c1409,1411
<   name: openshift-gitops-jobs-admin
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: openshift-gitops-pipelines-as-code
615c1415
<   name: openshift-gitops-jobs-admin
---
>   name: openshift-gitops-pipelines-as-code
656a1457,1494
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-cluster-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-chains-controller-cluster-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-tenant-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-chains-controller-tenant-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
745a1584,1743
>   application-name: RHTAP Staging
>   auto-configure-new-github-repo: "false"
>   auto-configure-repo-namespace-template: ""
>   bitbucket-cloud-additional-source-ip: ""
>   bitbucket-cloud-check-source-ip: "true"
>   default-max-keep-runs: ""
>   error-detection-from-container-logs: "false"
>   error-detection-max-number-of-lines: "50"
>   error-detection-simple-regexp: |
>     ^(?P<filename>[^:]*):(?P<line>[0-9]+):(?P<column>[0-9]+):([ ]*)?(?P<error>.*)
>   error-log-snippet: "true"
>   hub-catalog-name: tekton
>   hub-url: https://api.hub.tekton.dev/v1
>   max-keep-run-upper-limit: ""
>   remote-tasks: "true"
>   secret-auto-create: "true"
>   secret-github-app-scope-extra-repos: ""
>   secret-github-app-token-scoped: "true"
>   tekton-dashboard-url: ""
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   _example: |
>     ################################
>     #                              #
>     #    EXAMPLE CONFIGURATION     #
>     #                              #
>     ################################
>     # This block is not actually functional configuration,
>     # but serves to illustrate the available configuration
>     # options and document them in a way that is accessible
>     # to users that `kubectl edit` this config map.
>     #
>     # These sample configuration options may be copied out of
>     # this example block and unindented to be in the data block
>     # to actually change the configuration.
>     # metrics.backend-destination field specifies the system metrics destination.
>     # It supports either prometheus (the default) or stackdriver.
>     # Note: Using Stackdriver will incur additional charges.
>     metrics.backend-destination: prometheus
>     # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
>     # field is optional. When running on GCE, application default credentials will be
>     # used and metrics will be sent to the cluster's project if this field is
>     # not provided.
>     metrics.stackdriver-project-id: "<your stackdriver project id>"
>     # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
>     # to send metrics to Stackdriver using "global" resource type and custom
>     # metric type. Setting this flag to "true" could cause extra Stackdriver
>     # charge.  If metrics.backend-destination is not Stackdriver, this is
>     # ignored.
>     metrics.allow-stackdriver-custom-metrics: "false"
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-config-observability
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   controller-url: ""
>   provider: ""
>   version: v0.16.0
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   artifacts.oci.storage: oci
>   artifacts.pipelinerun.format: in-toto
>   artifacts.pipelinerun.storage: oci
>   artifacts.taskrun.format: in-toto
>   artifacts.taskrun.storage: ""
>   transparency.enabled: "false"
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: chains-config
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
>   version: v0.14.0
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: chains-info
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
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
>         "durationEncoder": "",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: config-logging
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
928a1927,1938
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-certs
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
956a1967,2035
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: http-listener
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
>   selector:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: controller
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: pipelines-as-code-watcher
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: http-metrics
>     port: 9090
>     protocol: TCP
>     targetPort: 9090
>   selector:
>     app.kubernetes.io/component: watcher
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: watcher
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: https-webhook
>     port: 443
>     targetPort: 8443
>   selector:
>     app.kubernetes.io/component: webhook
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: webhook
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1040a2120,2421
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: controller
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: controller
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app.kubernetes.io/component: controller
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: controller
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: TLS_KEY
>           value: key
>         - name: TLS_CERT
>           value: cert
>         - name: TLS_SECRET_NAME
>           value: pipelines-as-code-tls-secret
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: K_METRICS_CONFIG
>           value: '{"Domain":"pipelinesascode.tekton.dev/controller","Component":"controller","PrometheusPort":0,"PrometheusHost":"","ConfigMap":{}}'
>         - name: K_TRACING_CONFIG
>           value: '{"backend":"","debug":"false","sample-rate":"0"}'
>         - name: K_SINK_TIMEOUT
>           value: "30"
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
>         imagePullPolicy: Always
>         livenessProbe:
>           failureThreshold: 3
>           httpGet:
>             path: /live
>             port: api
>             scheme: HTTP
>           periodSeconds: 15
>           successThreshold: 1
>           timeoutSeconds: 1
>         name: pac-controller
>         ports:
>         - containerPort: 8080
>           name: api
>         readinessProbe:
>           failureThreshold: 3
>           httpGet:
>             path: /live
>             port: api
>             scheme: HTTP
>           periodSeconds: 15
>           successThreshold: 1
>           timeoutSeconds: 1
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>         volumeMounts:
>         - mountPath: /etc/pipelines-as-code/tls
>           name: tls
>           readOnly: true
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-controller
>       volumes:
>       - name: tls
>         secret:
>           optional: true
>           secretName: pipelines-as-code-tls-secret
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "2"
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: watcher
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: watcher
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app: pipelines-as-code-watcher
>         app.kubernetes.io/component: watcher
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: watcher
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: METRICS_DOMAIN
>           value: tekton.dev/pipelinesascode
>         - name: CONFIG_OBSERVABILITY_NAME
>           value: pipelines-as-code-config-observability
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
>         imagePullPolicy: Always
>         livenessProbe:
>           httpGet:
>             path: /live
>             port: probes
>             scheme: HTTP
>           initialDelaySeconds: 5
>           periodSeconds: 10
>           timeoutSeconds: 5
>         name: pac-watcher
>         ports:
>         - containerPort: 8080
>           name: probes
>         - containerPort: 9090
>           name: metrics
>         readinessProbe:
>           httpGet:
>             path: /live
>             port: probes
>             scheme: HTTP
>           initialDelaySeconds: 5
>           periodSeconds: 10
>           timeoutSeconds: 5
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-watcher
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> spec:
>   replicas: 0
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: webhook
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: webhook
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app.kubernetes.io/component: webhook
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: webhook
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: WEBHOOK_SERVICE_NAME
>           value: pipelines-as-code-webhook
>         - name: WEBHOOK_SECRET_NAME
>           value: pipelines-as-code-webhook-certs
>         - name: METRICS_DOMAIN
>           value: tekton.dev/pipelinesascode
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
>         name: pac-webhook
>         ports:
>         - containerPort: 8443
>           name: https-webhook
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-webhook
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "2"
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/name: controller
>     app.kubernetes.io/part-of: tekton-chains
>     pipeline.tekton.dev/release: devel
>     version: v0.14.0
>   name: tekton-chains-controller
>   namespace: tekton-chains
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: controller
>       app.kubernetes.io/instance: default
>       app.kubernetes.io/name: controller
>       app.kubernetes.io/part-of: tekton-chains
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
>       labels:
>         app: tekton-chains-controller
>         app.kubernetes.io/component: controller
>         app.kubernetes.io/instance: default
>         app.kubernetes.io/name: controller
>         app.kubernetes.io/part-of: tekton-chains
>         pipeline.tekton.dev/release: devel
>         version: v0.14.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: METRICS_DOMAIN
>           value: tekton.dev/chains
>         image: registry.redhat.io/openshift-pipelines/pipelines-chains-controller-rhel8:v1.10.2-1
>         name: tekton-chains-controller
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/signing-secrets
>           name: signing-secrets
>         - mountPath: /var/run/sigstore/cosign
>           name: oidc-info
>       serviceAccountName: tekton-chains-controller
>       volumes:
>       - name: signing-secrets
>         secret:
>           secretName: signing-secrets
>       - name: oidc-info
>         projected:
>           sources:
>           - serviceAccountToken:
>               audience: sigstore
>               expirationSeconds: 600
>               path: oidc-token
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
1278,1345d2658
<     argocd.argoproj.io/sync-wave: "2"
<   name: tekton-chains-secrets-migration
<   namespace: openshift-pipelines
< spec:
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       containers:
<       - command:
<         - /bin/bash
<         - -c
<         - |
<           cd /tmp
<           # Once the key-pair has been set it's marked as immutable so it can't be updated.
<           # Try to handle that nicely. The object is expected to always exist so check the data.
<           echo "Waiting for tekton-chains/secrets/signing-secrets: "
<           while [ -z  $CHAINS_SIG_KEY_DATA ]; do
<             echo -n "."
<             CHAINS_SIG_KEY_DATA=$(kubectl get secret signing-secrets -n tekton-chains -o jsonpath='{.data}')
<             sleep 3
<           done
<           echo "OK"
< 
<           OSP_SIG_KEY_DATA=$(kubectl get secret signing-secrets -n openshift-pipelines -o jsonpath='{.data}')
<           if [ -z "$OSP_SIG_KEY_DATA" -o "$OSP_SIG_KEY_DATA" != "$CHAINS_SIG_KEY_DATA" ]; then
<             echo "openshift-pipelines: copying signing-secrets from tekton-chains"
<             kubectl create secret generic signing-secrets \
<               --namespace openshift-pipelines \
<               --from-literal=cosign.key="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.key"]' | base64 -d
<               )" \
<               --from-literal=cosign.password="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.password"]' | base64 -d
<               )" \
<               --from-literal=cosign.pub="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.pub"]' | base64 -d
<               )" \
<               --dry-run=client \
<               -o yaml | kubectl apply -f -
<           else
<             echo "openshift-pipelines: signing-secrets is up to date"
<           fi
< 
<           # Generate/update the secret with the public key
<           echo "Creating public-key in openshift-pipelines"
<           kubectl create secret generic public-key \
<             --namespace openshift-pipelines \
<             --from-literal=cosign.pub="$(
<               cosign public-key --key k8s://openshift-pipelines/signing-secrets
<             )" \
<             --dry-run=client \
<             -o yaml | kubectl apply -f -
<           echo "OK"
<         image: quay.io/redhat-appstudio/appstudio-utils:eb94f28fe2d7c182f15e659d0fdb66f87b0b3b6b
<         imagePullPolicy: Always
<         name: chains-secret-migration
<       dnsPolicy: ClusterFirst
<       restartPolicy: OnFailure
<       serviceAccountName: tekton-chains-secrets-migrator
<       terminationGracePeriodSeconds: 30
< ---
< apiVersion: batch/v1
< kind: Job
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1487a2801,2824
>     networkoperator.openshift.io/ignore-errors: ""
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-monitor
>   namespace: pipelines-as-code
> spec:
>   endpoints:
>   - interval: 10s
>     port: http-metrics
>   jobLabel: app
>   namespaceSelector:
>     matchNames:
>     - pipelines-as-code
>   selector:
>     matchLabels:
>       app: pipelines-as-code-watcher
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1532,1538d2868
<   chain:
<     artifacts.oci.storage: oci
<     artifacts.pipelinerun.format: in-toto
<     artifacts.pipelinerun.storage: oci
<     artifacts.taskrun.format: in-toto
<     artifacts.taskrun.storage: ""
<     transparency.enabled: "false"
1558c2888
<         enable: true
---
>         enable: false
1575c2905
<   channel: pipelines-1.11
---
>   channel: pipelines-1.10
1578a2909,2933
> ---
> apiVersion: route.openshift.io/v1
> kind: Route
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>     pipelines-as-code/route: controller
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   port:
>     targetPort: http-listener
>   tls:
>     insecureEdgeTerminationPolicy: Redirect
>     termination: edge
>   to:
>     kind: Service
>     name: pipelines-as-code-controller
>     weight: 100
>   wildcardPolicy: None
./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
5a6,14
>   labels:
>     argocd.argoproj.io/managed-by: openshift-gitops
>   name: pipelines-as-code
> ---
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
25a35,173
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: repositories.pipelinesascode.tekton.dev
> spec:
>   group: pipelinesascode.tekton.dev
>   names:
>     kind: Repository
>     plural: repositories
>     shortNames:
>     - repo
>     singular: repository
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.url
>       name: URL
>       type: string
>     - jsonPath: .pipelinerun_status[-1].conditions[?(@.type=="Succeeded")].status
>       name: Succeeded
>       type: string
>     - jsonPath: .pipelinerun_status[-1].conditions[?(@.type=="Succeeded")].reason
>       name: Reason
>       type: string
>     - jsonPath: .pipelinerun_status[-1].startTime
>       name: StartTime
>       type: date
>     - jsonPath: .pipelinerun_status[-1].completionTime
>       name: CompletionTime
>       type: date
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Schema for the repository API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/  api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: Spec defines the desired state of Repository
>             properties:
>               concurrency_limit:
>                 description: Number of maximum pipelinerun running at any moment
>                 type: integer
>               git_provider:
>                 properties:
>                   secret:
>                     properties:
>                       key:
>                         default: provider.token
>                         description: Key inside the secret
>                         type: string
>                       name:
>                         description: The secret name
>                         type: string
>                     type: object
>                   type:
>                     description: The Git provider type
>                     type: string
>                   url:
>                     description: The Git provider api url
>                     type: string
>                   user:
>                     description: The Git provider api user
>                     type: string
>                   webhook_secret:
>                     properties:
>                       key:
>                         default: webhook.secret
>                         description: Key inside the secret
>                         type: string
>                       name:
>                         description: The secret name
>                         type: string
>                     type: object
>                 type: object
>               incoming:
>                 items:
>                   properties:
>                     secret:
>                       description: Secret to use for the webhook
>                       properties:
>                         key:
>                           default: secret
>                           description: Key of the secret
>                           type: string
>                         name:
>                           description: Name of the secret
>                           type: string
>                       type: object
>                     targets:
>                       description: List of target branches or ref to trigger webhooks
>                         on
>                       items:
>                         description: Branch name
>                         type: string
>                       type: array
>                     type:
>                       description: Type of webhook
>                       enum:
>                       - webhook-url
>                       type: string
>                   type: object
>                 type: array
>               type:
>                 description: Git repository provider
>                 enum:
>                 - github
>                 - gitea
>                 - bitbucket
>                 - gitlab
>                 - bitbucket-enteprise
>                 type: string
>               url:
>                 description: Repository URL
>                 type: string
>             type: object
>         type: object
>         x-kubernetes-preserve-unknown-fields: true
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
39,40c187,216
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
62a239,250
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
108,109c296,301
<   name: openshift-pipelines-secret-migration
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-role
>   namespace: pipelines-as-code
114c306
<   - secrets
---
>   - configmaps
115a308
>   - get
117c310,378
<   - create
---
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pipelines-as-code-info
>   resources:
>   - configmaps
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>   name: pipelines-as-code-monitoring
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - services
>   - endpoints
>   - pods
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
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-role
>   namespace: pipelines-as-code
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
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
118a380,381
>   - list
>   - create
119a383
>   - delete
120a385,431
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-role
>   namespace: pipelines-as-code
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
>   - secrets
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - pipelines-as-code-webhook-certs
>   resources:
>   - secrets
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - create
>   - update
121a433,434
>   - patch
>   - watch
147a461,504
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-info
>   namespace: tekton-chains
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - chains-info
>   resources:
>   - configmaps
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-leader-election
>   namespace: tekton-chains
> rules:
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
169c526,531
<   name: openshift-gitops-apply-tekton-config-parameters
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-controller-clusterrole
>   namespace: pipelines-as-code
172c534
<   - monitoring.coreos.com
---
>   - ""
174c536,558
<   - servicemonitors
---
>   - namespaces
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - create
>   - update
>   - delete
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - create
>   - list
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
177a562
>   - create
178a564,568
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
179a570,679
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-watcher-clusterrole
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - delete
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - get
>   - delete
>   - list
>   - watch
>   - update
>   - patch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - pods/log
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - update
>   - patch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-webhook-clusterrole
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - admissionregistration.k8s.io
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - admissionregistration.k8s.io
>   resourceNames:
>   - validation.pipelinesascode.tekton.dev
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
>   - get
>   - update
180a681,688
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: openshift-gitops-apply-tekton-config-parameters
> rules:
207c715,717
<   name: openshift-gitops-jobs-admin
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: openshift-gitops-pipelines-as-code
210c720
<   - batch
---
>   - apiextensions.k8s.io
212c722
<   - jobs
---
>   - customresourcedefinitions
213a724
>   - patch
216c727,732
<   - patch
---
>   - create
> - apiGroups:
>   - admissionregistration.k8s.io
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
218a735,740
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - servicemonitors
>   verbs:
>   - create
263c785,816
<   name: tekton-chains-public-key-viewer
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: pipelines-as-code-aggregate
> rules:
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-cluster-access
267,268d819
<   resourceNames:
<   - public-key
269a821,907
>   - pods
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - tasks
>   - clustertasks
>   - taskruns
>   - pipelines
>   - pipelineruns
>   - pipelineresources
>   - conditions
>   - runs
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns/finalizers
>   - pipelineruns/finalizers
>   - runs/finalizers
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - tasks/status
>   - clustertasks/status
>   - taskruns/status
>   - pipelines/status
>   - pipelineruns/status
>   - pipelineresources/status
>   - runs/status
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-tenant-access
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/log
>   - events
>   - persistentvolumeclaims
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - limitranges
270a909
>   - serviceaccounts
274a914,925
> - apiGroups:
>   - apps
>   resources:
>   - statefulsets
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
281c932
<   name: tekton-chains-secret-migration
---
>   name: tekton-chains-public-key-viewer
287d937
<   - signing-secrets
291a942,943
>   - list
>   - watch
480,481c1132,1137
<   name: openshift-pipelines-public-key-viewer
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-binding
>   namespace: pipelines-as-code
484,485c1140,1160
<   kind: ClusterRole
<   name: tekton-chains-public-key-viewer
---
>   kind: Role
>   name: pipelines-as-code-controller-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-info
496,497c1171,1174
<   name: openshift-pipelines-secret-migration
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: pipelines-as-code-monitoring
>   namespace: pipelines-as-code
501c1178
<   name: openshift-pipelines-secret-migration
---
>   name: pipelines-as-code-monitoring
504,505c1181,1220
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
>   name: prometheus-k8s
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-binding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-watcher-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-watcher
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-binding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-webhook-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-webhook
528c1243,1247
<   name: tekton-chains-public-key-viewer
---
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-leaderelection
532,533c1251,1271
<   kind: ClusterRole
<   name: tekton-chains-public-key-viewer
---
>   kind: Role
>   name: tekton-chains-leader-election
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-info
>   namespace: tekton-chains
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: tekton-chains-info
544c1282
<   name: tekton-chains-secrets-migrator
---
>   name: tekton-chains-public-key-viewer
549c1287
<   name: tekton-chains-secret-migration
---
>   name: tekton-chains-public-key-viewer
551,553c1289,1291
< - kind: ServiceAccount
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: system:authenticated
579a1318,1377
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-controller-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-watcher-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-webhook-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
611c1409,1411
<   name: openshift-gitops-jobs-admin
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: openshift-gitops-pipelines-as-code
615c1415
<   name: openshift-gitops-jobs-admin
---
>   name: openshift-gitops-pipelines-as-code
656a1457,1494
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-cluster-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-chains-controller-cluster-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-tenant-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-chains-controller-tenant-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
745a1584,1743
>   application-name: RHTAP Staging
>   auto-configure-new-github-repo: "false"
>   auto-configure-repo-namespace-template: ""
>   bitbucket-cloud-additional-source-ip: ""
>   bitbucket-cloud-check-source-ip: "true"
>   default-max-keep-runs: ""
>   error-detection-from-container-logs: "false"
>   error-detection-max-number-of-lines: "50"
>   error-detection-simple-regexp: |
>     ^(?P<filename>[^:]*):(?P<line>[0-9]+):(?P<column>[0-9]+):([ ]*)?(?P<error>.*)
>   error-log-snippet: "true"
>   hub-catalog-name: tekton
>   hub-url: https://api.hub.tekton.dev/v1
>   max-keep-run-upper-limit: ""
>   remote-tasks: "true"
>   secret-auto-create: "true"
>   secret-github-app-scope-extra-repos: ""
>   secret-github-app-token-scoped: "true"
>   tekton-dashboard-url: ""
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   _example: |
>     ################################
>     #                              #
>     #    EXAMPLE CONFIGURATION     #
>     #                              #
>     ################################
>     # This block is not actually functional configuration,
>     # but serves to illustrate the available configuration
>     # options and document them in a way that is accessible
>     # to users that `kubectl edit` this config map.
>     #
>     # These sample configuration options may be copied out of
>     # this example block and unindented to be in the data block
>     # to actually change the configuration.
>     # metrics.backend-destination field specifies the system metrics destination.
>     # It supports either prometheus (the default) or stackdriver.
>     # Note: Using Stackdriver will incur additional charges.
>     metrics.backend-destination: prometheus
>     # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
>     # field is optional. When running on GCE, application default credentials will be
>     # used and metrics will be sent to the cluster's project if this field is
>     # not provided.
>     metrics.stackdriver-project-id: "<your stackdriver project id>"
>     # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
>     # to send metrics to Stackdriver using "global" resource type and custom
>     # metric type. Setting this flag to "true" could cause extra Stackdriver
>     # charge.  If metrics.backend-destination is not Stackdriver, this is
>     # ignored.
>     metrics.allow-stackdriver-custom-metrics: "false"
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-config-observability
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   controller-url: ""
>   provider: ""
>   version: v0.16.0
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   artifacts.oci.storage: oci
>   artifacts.pipelinerun.format: in-toto
>   artifacts.pipelinerun.storage: oci
>   artifacts.taskrun.format: in-toto
>   artifacts.taskrun.storage: ""
>   transparency.enabled: "false"
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: chains-config
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
>   version: v0.14.0
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: chains-info
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
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
>         "durationEncoder": "",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: config-logging
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
928a1927,1938
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-certs
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
956a1967,2035
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: http-listener
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
>   selector:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: controller
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: pipelines-as-code-watcher
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: http-metrics
>     port: 9090
>     protocol: TCP
>     targetPort: 9090
>   selector:
>     app.kubernetes.io/component: watcher
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: watcher
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: https-webhook
>     port: 443
>     targetPort: 8443
>   selector:
>     app.kubernetes.io/component: webhook
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: webhook
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1040a2120,2421
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: controller
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: controller
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app.kubernetes.io/component: controller
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: controller
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: TLS_KEY
>           value: key
>         - name: TLS_CERT
>           value: cert
>         - name: TLS_SECRET_NAME
>           value: pipelines-as-code-tls-secret
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: K_METRICS_CONFIG
>           value: '{"Domain":"pipelinesascode.tekton.dev/controller","Component":"controller","PrometheusPort":0,"PrometheusHost":"","ConfigMap":{}}'
>         - name: K_TRACING_CONFIG
>           value: '{"backend":"","debug":"false","sample-rate":"0"}'
>         - name: K_SINK_TIMEOUT
>           value: "30"
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
>         imagePullPolicy: Always
>         livenessProbe:
>           failureThreshold: 3
>           httpGet:
>             path: /live
>             port: api
>             scheme: HTTP
>           periodSeconds: 15
>           successThreshold: 1
>           timeoutSeconds: 1
>         name: pac-controller
>         ports:
>         - containerPort: 8080
>           name: api
>         readinessProbe:
>           failureThreshold: 3
>           httpGet:
>             path: /live
>             port: api
>             scheme: HTTP
>           periodSeconds: 15
>           successThreshold: 1
>           timeoutSeconds: 1
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>         volumeMounts:
>         - mountPath: /etc/pipelines-as-code/tls
>           name: tls
>           readOnly: true
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-controller
>       volumes:
>       - name: tls
>         secret:
>           optional: true
>           secretName: pipelines-as-code-tls-secret
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "2"
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: watcher
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: watcher
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app: pipelines-as-code-watcher
>         app.kubernetes.io/component: watcher
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: watcher
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: METRICS_DOMAIN
>           value: tekton.dev/pipelinesascode
>         - name: CONFIG_OBSERVABILITY_NAME
>           value: pipelines-as-code-config-observability
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
>         imagePullPolicy: Always
>         livenessProbe:
>           httpGet:
>             path: /live
>             port: probes
>             scheme: HTTP
>           initialDelaySeconds: 5
>           periodSeconds: 10
>           timeoutSeconds: 5
>         name: pac-watcher
>         ports:
>         - containerPort: 8080
>           name: probes
>         - containerPort: 9090
>           name: metrics
>         readinessProbe:
>           httpGet:
>             path: /live
>             port: probes
>             scheme: HTTP
>           initialDelaySeconds: 5
>           periodSeconds: 10
>           timeoutSeconds: 5
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-watcher
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> spec:
>   replicas: 0
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: webhook
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: webhook
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app.kubernetes.io/component: webhook
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: webhook
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: WEBHOOK_SERVICE_NAME
>           value: pipelines-as-code-webhook
>         - name: WEBHOOK_SECRET_NAME
>           value: pipelines-as-code-webhook-certs
>         - name: METRICS_DOMAIN
>           value: tekton.dev/pipelinesascode
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
>         name: pac-webhook
>         ports:
>         - containerPort: 8443
>           name: https-webhook
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-webhook
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "2"
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/name: controller
>     app.kubernetes.io/part-of: tekton-chains
>     pipeline.tekton.dev/release: devel
>     version: v0.14.0
>   name: tekton-chains-controller
>   namespace: tekton-chains
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: controller
>       app.kubernetes.io/instance: default
>       app.kubernetes.io/name: controller
>       app.kubernetes.io/part-of: tekton-chains
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
>       labels:
>         app: tekton-chains-controller
>         app.kubernetes.io/component: controller
>         app.kubernetes.io/instance: default
>         app.kubernetes.io/name: controller
>         app.kubernetes.io/part-of: tekton-chains
>         pipeline.tekton.dev/release: devel
>         version: v0.14.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: METRICS_DOMAIN
>           value: tekton.dev/chains
>         image: registry.redhat.io/openshift-pipelines/pipelines-chains-controller-rhel8:v1.10.2-1
>         name: tekton-chains-controller
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/signing-secrets
>           name: signing-secrets
>         - mountPath: /var/run/sigstore/cosign
>           name: oidc-info
>       serviceAccountName: tekton-chains-controller
>       volumes:
>       - name: signing-secrets
>         secret:
>           secretName: signing-secrets
>       - name: oidc-info
>         projected:
>           sources:
>           - serviceAccountToken:
>               audience: sigstore
>               expirationSeconds: 600
>               path: oidc-token
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
1278,1345d2658
<     argocd.argoproj.io/sync-wave: "2"
<   name: tekton-chains-secrets-migration
<   namespace: openshift-pipelines
< spec:
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       containers:
<       - command:
<         - /bin/bash
<         - -c
<         - |
<           cd /tmp
<           # Once the key-pair has been set it's marked as immutable so it can't be updated.
<           # Try to handle that nicely. The object is expected to always exist so check the data.
<           echo "Waiting for tekton-chains/secrets/signing-secrets: "
<           while [ -z  $CHAINS_SIG_KEY_DATA ]; do
<             echo -n "."
<             CHAINS_SIG_KEY_DATA=$(kubectl get secret signing-secrets -n tekton-chains -o jsonpath='{.data}')
<             sleep 3
<           done
<           echo "OK"
< 
<           OSP_SIG_KEY_DATA=$(kubectl get secret signing-secrets -n openshift-pipelines -o jsonpath='{.data}')
<           if [ -z "$OSP_SIG_KEY_DATA" -o "$OSP_SIG_KEY_DATA" != "$CHAINS_SIG_KEY_DATA" ]; then
<             echo "openshift-pipelines: copying signing-secrets from tekton-chains"
<             kubectl create secret generic signing-secrets \
<               --namespace openshift-pipelines \
<               --from-literal=cosign.key="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.key"]' | base64 -d
<               )" \
<               --from-literal=cosign.password="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.password"]' | base64 -d
<               )" \
<               --from-literal=cosign.pub="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.pub"]' | base64 -d
<               )" \
<               --dry-run=client \
<               -o yaml | kubectl apply -f -
<           else
<             echo "openshift-pipelines: signing-secrets is up to date"
<           fi
< 
<           # Generate/update the secret with the public key
<           echo "Creating public-key in openshift-pipelines"
<           kubectl create secret generic public-key \
<             --namespace openshift-pipelines \
<             --from-literal=cosign.pub="$(
<               cosign public-key --key k8s://openshift-pipelines/signing-secrets
<             )" \
<             --dry-run=client \
<             -o yaml | kubectl apply -f -
<           echo "OK"
<         image: quay.io/redhat-appstudio/appstudio-utils:eb94f28fe2d7c182f15e659d0fdb66f87b0b3b6b
<         imagePullPolicy: Always
<         name: chains-secret-migration
<       dnsPolicy: ClusterFirst
<       restartPolicy: OnFailure
<       serviceAccountName: tekton-chains-secrets-migrator
<       terminationGracePeriodSeconds: 30
< ---
< apiVersion: batch/v1
< kind: Job
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1487a2801,2824
>     networkoperator.openshift.io/ignore-errors: ""
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-monitor
>   namespace: pipelines-as-code
> spec:
>   endpoints:
>   - interval: 10s
>     port: http-metrics
>   jobLabel: app
>   namespaceSelector:
>     matchNames:
>     - pipelines-as-code
>   selector:
>     matchLabels:
>       app: pipelines-as-code-watcher
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1532,1538d2868
<   chain:
<     artifacts.oci.storage: oci
<     artifacts.pipelinerun.format: in-toto
<     artifacts.pipelinerun.storage: oci
<     artifacts.taskrun.format: in-toto
<     artifacts.taskrun.storage: ""
<     transparency.enabled: "false"
1558c2888
<         enable: true
---
>         enable: false
1575c2905
<   channel: pipelines-1.11
---
>   channel: pipelines-1.10
1578a2909,2933
> ---
> apiVersion: route.openshift.io/v1
> kind: Route
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>     pipelines-as-code/route: controller
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   port:
>     targetPort: http-listener
>   tls:
>     insecureEdgeTerminationPolicy: Redirect
>     termination: edge
>   to:
>     kind: Service
>     name: pipelines-as-code-controller
>     weight: 100
>   wildcardPolicy: None 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

./commit-4fccdc4c/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 98f03d6a to 4fccdc4c on Tue Jul 11 13:15:59 2023 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/pipeline-service/kustomization.yaml
index bc5ce193..83f59922 100644
--- a/components/monitoring/grafana/base/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f64281aeaf44cb99372f456740499ce9b40929f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 68078320..56391c69 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f64281aeaf44cb99372f456740499ce9b40929f
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f64281aeaf44cb99372f456740499ce9b40929f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
   - ../base/servicemonitors
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6dc54441..e71c04ee 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f64281aeaf44cb99372f456740499ce9b40929f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=5bfee7ea5b973bcd504ff4fe03b6bf444f6dffcb
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/servicemonitors
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index 2a79d16f..cfdf2d66 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -1,5 +1,8 @@
 #!/usr/bin/env bash
 
+PAC_NAMESPACE='openshift-pipelines'
+PAC_SECRET_NAME='pipelines-as-code-secret'
+
 setup-pac-app() (
         # Inspired by implementation by Will Haley at:
         #   http://willhaley.com/blog/generate-jwt-with-bash/
@@ -46,15 +49,15 @@ setup-pac-app() (
 
         webhook_secret=$(openssl rand -hex 20)
 
-        if ! oc get -n pipelines-as-code secret pipelines-as-code-secret &>/dev/null; then         
+        if ! oc get -n $PAC_NAMESPACE secret $PAC_SECRET_NAME &>/dev/null; then
                 token=$(sign rs256 "$payload" "$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)")
-                webhook_url=$(oc whoami --show-console | sed 's/console-openshift-console/pipelines-as-code-controller-pipelines-as-code/')
+                pac_host=$(oc get -n $PAC_NAMESPACE route pipelines-as-code-controller -o go-template="{{ .spec.host }}")
                 curl \
                 -X PATCH \
                 -H "Accept: application/vnd.github.v3+json" \
                 -H "Authorization: Bearer $token" \
                 https://api.github.com/app/hook/config \
-                -d "{\"content_type\":\"json\",\"insecure_ssl\":\"1\",\"secret\":\"$webhook_secret\",\"url\":\"$webhook_url\"}" &>/dev/null
+                -d "{\"content_type\":\"json\",\"insecure_ssl\":\"1\",\"secret\":\"$webhook_secret\",\"url\":\"https://$pac_host\"}" &>/dev/null
         fi
 
         echo $webhook_secret
@@ -78,9 +81,6 @@ if [ -n "${PAC_GITLAB_TOKEN}" ]; then
         GITLAB_WEBHOOK_DATA="--from-literal gitlab.token='${PAC_GITLAB_TOKEN}'"
 fi
 
-PAC_NAMESPACE='pipelines-as-code'
-PAC_SECRET_NAME='pipelines-as-code-secret'
-
 oc create namespace -o yaml --dry-run=client ${PAC_NAMESPACE} | oc apply -f-
 oc create namespace -o yaml --dry-run=client build-service | oc apply -f-
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1669 lines)</summary>  

``` 
./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml
7a8,16
>   name: pipelines-as-code
> ---
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     argocd.argoproj.io/managed-by: openshift-gitops
18a28,166
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: repositories.pipelinesascode.tekton.dev
> spec:
>   group: pipelinesascode.tekton.dev
>   names:
>     kind: Repository
>     plural: repositories
>     shortNames:
>     - repo
>     singular: repository
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.url
>       name: URL
>       type: string
>     - jsonPath: .pipelinerun_status[-1].conditions[?(@.type=="Succeeded")].status
>       name: Succeeded
>       type: string
>     - jsonPath: .pipelinerun_status[-1].conditions[?(@.type=="Succeeded")].reason
>       name: Reason
>       type: string
>     - jsonPath: .pipelinerun_status[-1].startTime
>       name: StartTime
>       type: date
>     - jsonPath: .pipelinerun_status[-1].completionTime
>       name: CompletionTime
>       type: date
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Schema for the repository API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/  api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: Spec defines the desired state of Repository
>             properties:
>               concurrency_limit:
>                 description: Number of maximum pipelinerun running at any moment
>                 type: integer
>               git_provider:
>                 properties:
>                   secret:
>                     properties:
>                       key:
>                         default: provider.token
>                         description: Key inside the secret
>                         type: string
>                       name:
>                         description: The secret name
>                         type: string
>                     type: object
>                   type:
>                     description: The Git provider type
>                     type: string
>                   url:
>                     description: The Git provider api url
>                     type: string
>                   user:
>                     description: The Git provider api user
>                     type: string
>                   webhook_secret:
>                     properties:
>                       key:
>                         default: webhook.secret
>                         description: Key inside the secret
>                         type: string
>                       name:
>                         description: The secret name
>                         type: string
>                     type: object
>                 type: object
>               incoming:
>                 items:
>                   properties:
>                     secret:
>                       description: Secret to use for the webhook
>                       properties:
>                         key:
>                           default: secret
>                           description: Key of the secret
>                           type: string
>                         name:
>                           description: Name of the secret
>                           type: string
>                       type: object
>                     targets:
>                       description: List of target branches or ref to trigger webhooks
>                         on
>                       items:
>                         description: Branch name
>                         type: string
>                       type: array
>                     type:
>                       description: Type of webhook
>                       enum:
>                       - webhook-url
>                       type: string
>                   type: object
>                 type: array
>               type:
>                 description: Git repository provider
>                 enum:
>                 - github
>                 - gitea
>                 - bitbucket
>                 - gitlab
>                 - bitbucket-enteprise
>                 type: string
>               url:
>                 description: Repository URL
>                 type: string
>             type: object
>         type: object
>         x-kubernetes-preserve-unknown-fields: true
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
32,33c180,209
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
47a224,235
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
93,94c281,286
<   name: openshift-pipelines-secret-migration
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-role
>   namespace: pipelines-as-code
99c291
<   - secrets
---
>   - configmaps
100a293
>   - get
102c295,355
<   - create
---
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pipelines-as-code-info
>   resources:
>   - configmaps
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>   name: pipelines-as-code-monitoring
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - services
>   - endpoints
>   - pods
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
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-role
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
103a357,366
>   - list
>   - watch
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - create
104a368
>   - delete
105a370,416
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-role
>   namespace: pipelines-as-code
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
>   - secrets
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resourceNames:
>   - pipelines-as-code-webhook-certs
>   resources:
>   - secrets
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - create
>   - update
106a418,419
>   - patch
>   - watch
132a446,489
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-info
>   namespace: tekton-chains
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - chains-info
>   resources:
>   - configmaps
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-leader-election
>   namespace: tekton-chains
> rules:
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
154c511,516
<   name: openshift-gitops-apply-tekton-config-parameters
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-controller-clusterrole
>   namespace: pipelines-as-code
157c519
<   - monitoring.coreos.com
---
>   - ""
159c521,543
<   - servicemonitors
---
>   - namespaces
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - create
>   - update
>   - delete
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - create
>   - list
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
162a547
>   - create
163a549,553
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
164a555,664
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-watcher-clusterrole
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - delete
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - get
>   - delete
>   - list
>   - watch
>   - update
>   - patch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - pods/log
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - update
>   - patch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipeline-as-code-webhook-clusterrole
>   namespace: pipelines-as-code
> rules:
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - admissionregistration.k8s.io
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - admissionregistration.k8s.io
>   resourceNames:
>   - validation.pipelinesascode.tekton.dev
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
>   - get
>   - update
165a666,673
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: openshift-gitops-apply-tekton-config-parameters
> rules:
192c700,702
<   name: openshift-gitops-jobs-admin
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: openshift-gitops-pipelines-as-code
195c705
<   - batch
---
>   - apiextensions.k8s.io
197c707
<   - jobs
---
>   - customresourcedefinitions
198a709
>   - patch
201c712,717
<   - patch
---
>   - create
> - apiGroups:
>   - admissionregistration.k8s.io
>   resources:
>   - validatingwebhookconfigurations
>   verbs:
203a720,725
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - servicemonitors
>   verbs:
>   - create
279c801,832
<   name: tekton-chains-public-key-viewer
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: pipelines-as-code-aggregate
> rules:
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-cluster-access
283,284d835
<   resourceNames:
<   - public-key
285a837,923
>   - pods
>   verbs:
>   - list
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - tasks
>   - clustertasks
>   - taskruns
>   - pipelines
>   - pipelineruns
>   - pipelineresources
>   - conditions
>   - runs
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns/finalizers
>   - pipelineruns/finalizers
>   - runs/finalizers
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - tasks/status
>   - clustertasks/status
>   - taskruns/status
>   - pipelines/status
>   - pipelineruns/status
>   - pipelineresources/status
>   - runs/status
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-tenant-access
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/log
>   - events
>   - persistentvolumeclaims
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - limitranges
286a925
>   - serviceaccounts
290a930,941
> - apiGroups:
>   - apps
>   resources:
>   - statefulsets
>   verbs:
>   - get
>   - list
>   - create
>   - update
>   - delete
>   - patch
>   - watch
297c948
<   name: tekton-chains-secret-migration
---
>   name: tekton-chains-public-key-viewer
303d953
<   - signing-secrets
307a958,959
>   - list
>   - watch
496,497c1148,1153
<   name: openshift-pipelines-public-key-viewer
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-binding
>   namespace: pipelines-as-code
500,501c1156,1176
<   kind: ClusterRole
<   name: tekton-chains-public-key-viewer
---
>   kind: Role
>   name: pipelines-as-code-controller-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-info
512,513c1187,1190
<   name: openshift-pipelines-secret-migration
<   namespace: openshift-pipelines
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: pipelines-as-code-monitoring
>   namespace: pipelines-as-code
517c1194
<   name: openshift-pipelines-secret-migration
---
>   name: pipelines-as-code-monitoring
520,521c1197,1236
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
>   name: prometheus-k8s
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-binding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-watcher-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-watcher
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-binding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipelines-as-code-webhook-role
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-webhook
544c1259,1263
<   name: tekton-chains-public-key-viewer
---
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-leaderelection
548,549c1267,1287
<   kind: ClusterRole
<   name: tekton-chains-public-key-viewer
---
>   kind: Role
>   name: tekton-chains-leader-election
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-info
>   namespace: tekton-chains
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: tekton-chains-info
560c1298
<   name: tekton-chains-secrets-migrator
---
>   name: tekton-chains-public-key-viewer
565c1303
<   name: tekton-chains-secret-migration
---
>   name: tekton-chains-public-key-viewer
567,569c1305,1307
< - kind: ServiceAccount
<   name: tekton-chains-secrets-migrator
<   namespace: openshift-pipelines
---
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: system:authenticated
595a1334,1393
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-controller-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-watcher-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-clusterbinding
>   namespace: pipelines-as-code
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pipeline-as-code-webhook-clusterrole
> subjects:
> - kind: ServiceAccount
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
611c1409,1411
<   name: openshift-gitops-jobs-admin
---
>   labels:
>     app.kubernetes.io/instance: build
>   name: openshift-gitops-pipelines-as-code
615c1415
<   name: openshift-gitops-jobs-admin
---
>   name: openshift-gitops-pipelines-as-code
671a1472,1509
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-cluster-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-chains-controller-cluster-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: tekton-chains-controller-tenant-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-chains-controller-tenant-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-chains-controller
>   namespace: tekton-chains
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
760a1599,1758
>   application-name: Pipelines as Code CI
>   auto-configure-new-github-repo: "false"
>   auto-configure-repo-namespace-template: ""
>   bitbucket-cloud-additional-source-ip: ""
>   bitbucket-cloud-check-source-ip: "true"
>   default-max-keep-runs: ""
>   error-detection-from-container-logs: "false"
>   error-detection-max-number-of-lines: "50"
>   error-detection-simple-regexp: |
>     ^(?P<filename>[^:]*):(?P<line>[0-9]+):(?P<column>[0-9]+):([ ]*)?(?P<error>.*)
>   error-log-snippet: "true"
>   hub-catalog-name: tekton
>   hub-url: https://api.hub.tekton.dev/v1
>   max-keep-run-upper-limit: ""
>   remote-tasks: "true"
>   secret-auto-create: "true"
>   secret-github-app-scope-extra-repos: ""
>   secret-github-app-token-scoped: "true"
>   tekton-dashboard-url: ""
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   _example: |
>     ################################
>     #                              #
>     #    EXAMPLE CONFIGURATION     #
>     #                              #
>     ################################
>     # This block is not actually functional configuration,
>     # but serves to illustrate the available configuration
>     # options and document them in a way that is accessible
>     # to users that `kubectl edit` this config map.
>     #
>     # These sample configuration options may be copied out of
>     # this example block and unindented to be in the data block
>     # to actually change the configuration.
>     # metrics.backend-destination field specifies the system metrics destination.
>     # It supports either prometheus (the default) or stackdriver.
>     # Note: Using Stackdriver will incur additional charges.
>     metrics.backend-destination: prometheus
>     # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
>     # field is optional. When running on GCE, application default credentials will be
>     # used and metrics will be sent to the cluster's project if this field is
>     # not provided.
>     metrics.stackdriver-project-id: "<your stackdriver project id>"
>     # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
>     # to send metrics to Stackdriver using "global" resource type and custom
>     # metric type. Setting this flag to "true" could cause extra Stackdriver
>     # charge.  If metrics.backend-destination is not Stackdriver, this is
>     # ignored.
>     metrics.allow-stackdriver-custom-metrics: "false"
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-config-observability
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   controller-url: ""
>   provider: ""
>   version: v0.16.0
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-info
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> data:
>   artifacts.oci.storage: oci
>   artifacts.pipelinerun.format: in-toto
>   artifacts.pipelinerun.storage: oci
>   artifacts.taskrun.format: in-toto
>   artifacts.taskrun.storage: ""
>   transparency.enabled: "false"
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: chains-config
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
>   version: v0.14.0
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: chains-info
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
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
>         "durationEncoder": "",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-chains
>   name: config-logging
>   namespace: tekton-chains
> ---
> apiVersion: v1
> data:
943a1942,1953
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook-certs
>   namespace: pipelines-as-code
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
971a1982,2050
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: http-listener
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
>   selector:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: controller
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app: pipelines-as-code-watcher
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: http-metrics
>     port: 9090
>     protocol: TCP
>     targetPort: 9090
>   selector:
>     app.kubernetes.io/component: watcher
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: watcher
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> spec:
>   ports:
>   - name: https-webhook
>     port: 443
>     targetPort: 8443
>   selector:
>     app.kubernetes.io/component: webhook
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/name: webhook
>     app.kubernetes.io/part-of: pipelines-as-code
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1055a2135,2436
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: controller
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: controller
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app.kubernetes.io/component: controller
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: controller
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: TLS_KEY
>           value: key
>         - name: TLS_CERT
>           value: cert
>         - name: TLS_SECRET_NAME
>           value: pipelines-as-code-tls-secret
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: K_METRICS_CONFIG
>           value: '{"Domain":"pipelinesascode.tekton.dev/controller","Component":"controller","PrometheusPort":0,"PrometheusHost":"","ConfigMap":{}}'
>         - name: K_TRACING_CONFIG
>           value: '{"backend":"","debug":"false","sample-rate":"0"}'
>         - name: K_SINK_TIMEOUT
>           value: "30"
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
>         imagePullPolicy: Always
>         livenessProbe:
>           failureThreshold: 3
>           httpGet:
>             path: /live
>             port: api
>             scheme: HTTP
>           periodSeconds: 15
>           successThreshold: 1
>           timeoutSeconds: 1
>         name: pac-controller
>         ports:
>         - containerPort: 8080
>           name: api
>         readinessProbe:
>           failureThreshold: 3
>           httpGet:
>             path: /live
>             port: api
>             scheme: HTTP
>           periodSeconds: 15
>           successThreshold: 1
>           timeoutSeconds: 1
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>         volumeMounts:
>         - mountPath: /etc/pipelines-as-code/tls
>           name: tls
>           readOnly: true
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-controller
>       volumes:
>       - name: tls
>         secret:
>           optional: true
>           secretName: pipelines-as-code-tls-secret
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "2"
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-watcher
>   namespace: pipelines-as-code
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: watcher
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: watcher
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app: pipelines-as-code-watcher
>         app.kubernetes.io/component: watcher
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: watcher
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: METRICS_DOMAIN
>           value: tekton.dev/pipelinesascode
>         - name: CONFIG_OBSERVABILITY_NAME
>           value: pipelines-as-code-config-observability
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
>         imagePullPolicy: Always
>         livenessProbe:
>           httpGet:
>             path: /live
>             port: probes
>             scheme: HTTP
>           initialDelaySeconds: 5
>           periodSeconds: 10
>           timeoutSeconds: 5
>         name: pac-watcher
>         ports:
>         - containerPort: 8080
>           name: probes
>         - containerPort: 9090
>           name: metrics
>         readinessProbe:
>           httpGet:
>             path: /live
>             port: probes
>             scheme: HTTP
>           initialDelaySeconds: 5
>           periodSeconds: 10
>           timeoutSeconds: 5
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-watcher
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-webhook
>   namespace: pipelines-as-code
> spec:
>   replicas: 0
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: webhook
>       app.kubernetes.io/instance: build
>       app.kubernetes.io/name: webhook
>       app.kubernetes.io/part-of: pipelines-as-code
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         app.kubernetes.io/component: webhook
>         app.kubernetes.io/instance: build
>         app.kubernetes.io/name: webhook
>         app.kubernetes.io/part-of: pipelines-as-code
>         app.kubernetes.io/version: v0.16.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: WEBHOOK_SERVICE_NAME
>           value: pipelines-as-code-webhook
>         - name: WEBHOOK_SECRET_NAME
>           value: pipelines-as-code-webhook-certs
>         - name: METRICS_DOMAIN
>           value: tekton.dev/pipelinesascode
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
>         name: pac-webhook
>         ports:
>         - containerPort: 8443
>           name: https-webhook
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>         seccompProfile:
>           type: RuntimeDefault
>       serviceAccountName: pipelines-as-code-webhook
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "2"
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/name: controller
>     app.kubernetes.io/part-of: tekton-chains
>     pipeline.tekton.dev/release: devel
>     version: v0.14.0
>   name: tekton-chains-controller
>   namespace: tekton-chains
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/component: controller
>       app.kubernetes.io/instance: default
>       app.kubernetes.io/name: controller
>       app.kubernetes.io/part-of: tekton-chains
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
>       labels:
>         app: tekton-chains-controller
>         app.kubernetes.io/component: controller
>         app.kubernetes.io/instance: default
>         app.kubernetes.io/name: controller
>         app.kubernetes.io/part-of: tekton-chains
>         pipeline.tekton.dev/release: devel
>         version: v0.14.0
>     spec:
>       containers:
>       - env:
>         - name: SYSTEM_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         - name: METRICS_DOMAIN
>           value: tekton.dev/chains
>         image: registry.redhat.io/openshift-pipelines/pipelines-chains-controller-rhel8:v1.10.2-1
>         name: tekton-chains-controller
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/signing-secrets
>           name: signing-secrets
>         - mountPath: /var/run/sigstore/cosign
>           name: oidc-info
>       serviceAccountName: tekton-chains-controller
>       volumes:
>       - name: signing-secrets
>         secret:
>           secretName: signing-secrets
>       - name: oidc-info
>         projected:
>           sources:
>           - serviceAccountToken:
>               audience: sigstore
>               expirationSeconds: 600
>               path: oidc-token
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
1414,1481d2794
<     argocd.argoproj.io/sync-wave: "2"
<   name: tekton-chains-secrets-migration
<   namespace: openshift-pipelines
< spec:
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       containers:
<       - command:
<         - /bin/bash
<         - -c
<         - |
<           cd /tmp
<           # Once the key-pair has been set it's marked as immutable so it can't be updated.
<           # Try to handle that nicely. The object is expected to always exist so check the data.
<           echo "Waiting for tekton-chains/secrets/signing-secrets: "
<           while [ -z  $CHAINS_SIG_KEY_DATA ]; do
<             echo -n "."
<             CHAINS_SIG_KEY_DATA=$(kubectl get secret signing-secrets -n tekton-chains -o jsonpath='{.data}')
<             sleep 3
<           done
<           echo "OK"
< 
<           OSP_SIG_KEY_DATA=$(kubectl get secret signing-secrets -n openshift-pipelines -o jsonpath='{.data}')
<           if [ -z "$OSP_SIG_KEY_DATA" -o "$OSP_SIG_KEY_DATA" != "$CHAINS_SIG_KEY_DATA" ]; then
<             echo "openshift-pipelines: copying signing-secrets from tekton-chains"
<             kubectl create secret generic signing-secrets \
<               --namespace openshift-pipelines \
<               --from-literal=cosign.key="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.key"]' | base64 -d
<               )" \
<               --from-literal=cosign.password="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.password"]' | base64 -d
<               )" \
<               --from-literal=cosign.pub="$(
<                 echo "$CHAINS_SIG_KEY_DATA" | jq -r '.["cosign.pub"]' | base64 -d
<               )" \
<               --dry-run=client \
<               -o yaml | kubectl apply -f -
<           else
<             echo "openshift-pipelines: signing-secrets is up to date"
<           fi
< 
<           # Generate/update the secret with the public key
<           echo "Creating public-key in openshift-pipelines"
<           kubectl create secret generic public-key \
<             --namespace openshift-pipelines \
<             --from-literal=cosign.pub="$(
<               cosign public-key --key k8s://openshift-pipelines/signing-secrets
<             )" \
<             --dry-run=client \
<             -o yaml | kubectl apply -f -
<           echo "OK"
<         image: quay.io/redhat-appstudio/appstudio-utils:eb94f28fe2d7c182f15e659d0fdb66f87b0b3b6b
<         imagePullPolicy: Always
<         name: chains-secret-migration
<       dnsPolicy: ClusterFirst
<       restartPolicy: OnFailure
<       serviceAccountName: tekton-chains-secrets-migrator
<       terminationGracePeriodSeconds: 30
< ---
< apiVersion: batch/v1
< kind: Job
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1615a2929,2952
>     networkoperator.openshift.io/ignore-errors: ""
>   labels:
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>   name: pipelines-as-code-monitor
>   namespace: pipelines-as-code
> spec:
>   endpoints:
>   - interval: 10s
>     port: http-metrics
>   jobLabel: app
>   namespaceSelector:
>     matchNames:
>     - pipelines-as-code
>   selector:
>     matchLabels:
>       app: pipelines-as-code-watcher
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1660,1666d2996
<   chain:
<     artifacts.oci.storage: oci
<     artifacts.pipelinerun.format: in-toto
<     artifacts.pipelinerun.storage: oci
<     artifacts.taskrun.format: in-toto
<     artifacts.taskrun.storage: ""
<     transparency.enabled: "false"
1686c3016
<         enable: true
---
>         enable: false
1717c3047
<   channel: pipelines-1.11
---
>   channel: pipelines-1.10
1720a3051,3075
> ---
> apiVersion: route.openshift.io/v1
> kind: Route
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     app.kubernetes.io/component: controller
>     app.kubernetes.io/instance: build
>     app.kubernetes.io/part-of: pipelines-as-code
>     app.kubernetes.io/version: v0.16.0
>     pipelines-as-code/route: controller
>   name: pipelines-as-code-controller
>   namespace: pipelines-as-code
> spec:
>   port:
>     targetPort: http-listener
>   tls:
>     insecureEdgeTerminationPolicy: Redirect
>     termination: edge
>   to:
>     kind: Service
>     name: pipelines-as-code-controller
>     weight: 100
>   wildcardPolicy: None 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4fccdc4c/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 18c84c8f to 98f03d6a on Tue Jul 11 12:41:22 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ba422958..f0886d2e 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=0b50c94147059c992b78363ba050187f1f8ba06f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f64281aeaf44cb99372f456740499ce9b40929f
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/servicemonitors 
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

./commit-98f03d6a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

./commit-98f03d6a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 18c84c8f to 98f03d6a on Tue Jul 11 12:41:22 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ba422958..f0886d2e 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=0b50c94147059c992b78363ba050187f1f8ba06f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f64281aeaf44cb99372f456740499ce9b40929f
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/servicemonitors 
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

./commit-98f03d6a/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-98f03d6a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 44cb3048 to 18c84c8f on Tue Jul 11 11:17:37 2023 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 7f45617c..8e7f69eb 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=90c6d553e8d963e32c8a949998ee2974e97a6bac
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=cfebcdeec452f00ce9392050f606994de4ec8f8e
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 417e3318..8fc39cb2 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=90c6d553e8d963e32c8a949998ee2974e97a6bac
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=cfebcdeec452f00ce9392050f606994de4ec8f8e
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 5a59e4f8..3356ab1c 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=90c6d553e8d963e32c8a949998ee2974e97a6bac
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=cfebcdeec452f00ce9392050f606994de4ec8f8e
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -11,10 +11,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
 
 patches:
   - target: 
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

./commit-18c84c8f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

./commit-18c84c8f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 44cb3048 to 18c84c8f on Tue Jul 11 11:17:37 2023 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 7f45617c..8e7f69eb 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=90c6d553e8d963e32c8a949998ee2974e97a6bac
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=cfebcdeec452f00ce9392050f606994de4ec8f8e
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 417e3318..8fc39cb2 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=90c6d553e8d963e32c8a949998ee2974e97a6bac
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=cfebcdeec452f00ce9392050f606994de4ec8f8e
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 5a59e4f8..3356ab1c 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=90c6d553e8d963e32c8a949998ee2974e97a6bac
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=cfebcdeec452f00ce9392050f606994de4ec8f8e
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -11,10 +11,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 90c6d553e8d963e32c8a949998ee2974e97a6bac
+    newTag: cfebcdeec452f00ce9392050f606994de4ec8f8e
 
 patches:
   - target: 
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

./commit-18c84c8f/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-18c84c8f/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 687e6edd to 44cb3048 on Tue Jul 11 09:32:34 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index ee11cf76..15833d9b 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c3828f452f3d80f65806265ee80cf291f504272b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=ac97af520b8dd9b2ef1bb418212b32f04816830e
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c3828f452f3d80f65806265ee80cf291f504272b
+  newTag: ac97af520b8dd9b2ef1bb418212b32f04816830e
 
 namespace: integration-service
 
diff --git a/components/monitoring/grafana/base/integration/kustomization.yaml b/components/monitoring/grafana/base/integration/kustomization.yaml
index 12ba66cd..0aa026c0 100644
--- a/components/monitoring/grafana/base/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/integration/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c3828f452f3d80f65806265ee80cf291f504272b
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=ac97af520b8dd9b2ef1bb418212b32f04816830e
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (479 lines)</summary>  

``` 
./commit-687e6edd/staging/components/integration/kustomize.out.yaml
562,563c562,564
<   creationTimestamp: null
<   name: integration-service-manager-role
---
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: integration-service-application-viewer-role
566c567
<   - ""
---
>   - appstudio.redhat.com
568c569
<   - secrets
---
>   - applications
576c577,592
<   - applications
---
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: integration-service-component-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
588,594c604
<   - applications/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications/status
---
>   - components/status
596a607,614
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-environment-editor-role
> rules:
600c618
<   - components
---
>   - environments
601a620,621
>   - create
>   - delete
610c630
<   - components/status
---
>   - environments/status
613,614c633,638
<   - patch
<   - update
---
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-editor-role
> rules:
618c642
<   - deploymenttargetclaims
---
>   - integrationtestscenarios
630c654,666
<   - deploymenttargetclasses
---
>   - integrationtestscenarios/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
638c674,687
<   - deploymenttargets
---
>   - integrationtestscenarios/status
>   verbs:
>   - get
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
640,641d688
<   - create
<   - delete
644,645d690
<   - patch
<   - update
650c695
<   - environments
---
>   - applications
662c707
<   - environments/finalizers
---
>   - applications/finalizers
668c713
<   - environments/status
---
>   - components
670a716
>   - list
672a719
>   - watch
676c723
<   - integrationtestscenarios
---
>   - components/status
678,679d724
<   - create
<   - delete
681d725
<   - list
684d727
<   - watch
688c731
<   - integrationtestscenarios/status
---
>   - deploymenttargetclaims
689a733,734
>   - create
>   - delete
690a736
>   - list
692a739
>   - watch
696c743
<   - releaseplans
---
>   - deploymenttargetclasses
704c751
<   - releaseplans/status
---
>   - deploymenttargets
705a753,754
>   - create
>   - delete
706a756
>   - list
708a759
>   - watch
712c763
<   - releases
---
>   - environments
724c775
<   - releases/status
---
>   - integrationtestscenarios
725a777,778
>   - create
>   - delete
726a780
>   - list
728a783
>   - watch
732c787
<   - snapshotenvironmentbindings
---
>   - integrationtestscenarios/status
734,735d788
<   - create
<   - delete
737d789
<   - list
740d791
<   - watch
744c795
<   - snapshotenvironmentbindings/status
---
>   - releases/status
746a798,799
>   - patch
>   - update
788d840
<   - deletecollection
863a916,1049
>   name: integration-service-release-editor-role
> rules:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-release-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-releaseplan-viewer-role
> rules:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-editor-role
> rules:
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
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshotenvironmentbinding-editor-role
> rules:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
866a1053,1079
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
>   - pipelineruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/finalizers
>   verbs:
>   - update
> - apiGroups:
942a1156,1207
>   name: integration-service-application-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-application-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-component-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-component-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-environment-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-environment-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-integrationtestscenario-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-integrationtestscenario-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
981a1247,1298
>   name: integration-service-release-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-release-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-releaseplan-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-releaseplan-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshot-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshot-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshotenvironmentbinding-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshotenvironmentbinding-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
1084c1401
<         image: quay.io/redhat-appstudio/integration-service:ac97af520b8dd9b2ef1bb418212b32f04816830e
---
>         image: quay.io/redhat-appstudio/integration-service:c3828f452f3d80f65806265ee80cf291f504272b 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

./commit-44cb3048/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 687e6edd to 44cb3048 on Tue Jul 11 09:32:34 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index ee11cf76..15833d9b 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c3828f452f3d80f65806265ee80cf291f504272b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=ac97af520b8dd9b2ef1bb418212b32f04816830e
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c3828f452f3d80f65806265ee80cf291f504272b
+  newTag: ac97af520b8dd9b2ef1bb418212b32f04816830e
 
 namespace: integration-service
 
diff --git a/components/monitoring/grafana/base/integration/kustomization.yaml b/components/monitoring/grafana/base/integration/kustomization.yaml
index 12ba66cd..0aa026c0 100644
--- a/components/monitoring/grafana/base/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/integration/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c3828f452f3d80f65806265ee80cf291f504272b
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=ac97af520b8dd9b2ef1bb418212b32f04816830e
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (479 lines)</summary>  

``` 
./commit-687e6edd/development/components/integration/kustomize.out.yaml
562,563c562,564
<   creationTimestamp: null
<   name: integration-service-manager-role
---
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: integration-service-application-viewer-role
566c567
<   - ""
---
>   - appstudio.redhat.com
568c569
<   - secrets
---
>   - applications
576c577,592
<   - applications
---
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: integration-service-component-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
588,594c604
<   - applications/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications/status
---
>   - components/status
596a607,614
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-environment-editor-role
> rules:
600c618
<   - components
---
>   - environments
601a620,621
>   - create
>   - delete
610c630
<   - components/status
---
>   - environments/status
613,614c633,638
<   - patch
<   - update
---
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-editor-role
> rules:
618c642
<   - deploymenttargetclaims
---
>   - integrationtestscenarios
630c654,666
<   - deploymenttargetclasses
---
>   - integrationtestscenarios/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
638c674,687
<   - deploymenttargets
---
>   - integrationtestscenarios/status
>   verbs:
>   - get
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
640,641d688
<   - create
<   - delete
644,645d690
<   - patch
<   - update
650c695
<   - environments
---
>   - applications
662c707
<   - environments/finalizers
---
>   - applications/finalizers
668c713
<   - environments/status
---
>   - components
670a716
>   - list
672a719
>   - watch
676c723
<   - integrationtestscenarios
---
>   - components/status
678,679d724
<   - create
<   - delete
681d725
<   - list
684d727
<   - watch
688c731
<   - integrationtestscenarios/status
---
>   - deploymenttargetclaims
689a733,734
>   - create
>   - delete
690a736
>   - list
692a739
>   - watch
696c743
<   - releaseplans
---
>   - deploymenttargetclasses
704c751
<   - releaseplans/status
---
>   - deploymenttargets
705a753,754
>   - create
>   - delete
706a756
>   - list
708a759
>   - watch
712c763
<   - releases
---
>   - environments
724c775
<   - releases/status
---
>   - integrationtestscenarios
725a777,778
>   - create
>   - delete
726a780
>   - list
728a783
>   - watch
732c787
<   - snapshotenvironmentbindings
---
>   - integrationtestscenarios/status
734,735d788
<   - create
<   - delete
737d789
<   - list
740d791
<   - watch
744c795
<   - snapshotenvironmentbindings/status
---
>   - releases/status
746a798,799
>   - patch
>   - update
788d840
<   - deletecollection
863a916,1049
>   name: integration-service-release-editor-role
> rules:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-release-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-releaseplan-viewer-role
> rules:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-editor-role
> rules:
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
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshotenvironmentbinding-editor-role
> rules:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
866a1053,1079
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
>   - pipelineruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/finalizers
>   verbs:
>   - update
> - apiGroups:
942a1156,1207
>   name: integration-service-application-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-application-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-component-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-component-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-environment-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-environment-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-integrationtestscenario-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-integrationtestscenario-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
981a1247,1298
>   name: integration-service-release-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-release-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-releaseplan-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-releaseplan-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshot-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshot-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshotenvironmentbinding-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshotenvironmentbinding-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
1084c1401
<         image: quay.io/redhat-appstudio/integration-service:ac97af520b8dd9b2ef1bb418212b32f04816830e
---
>         image: quay.io/redhat-appstudio/integration-service:c3828f452f3d80f65806265ee80cf291f504272b 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/has/development/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/integration/kustomize.out.yaml: (object: integration-service/integration-service-integration-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-44cb3048/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>
