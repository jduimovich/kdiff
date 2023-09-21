# kustomize changes tracked by commits 
### This file generated at Thu Sep 21 16:10:19 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2536c68b to bbc37b52 on Thu Sep 21 15:53:23 2023 </h3>  
 
<details> 
<summary>Git Diff (256 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml b/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
index 220aec55..06346538 100644
--- a/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - pipeline-service-sre.yaml
-  - pipeline-maintainer.yaml
\ No newline at end of file
+  
\ No newline at end of file
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml
deleted file mode 100644
index 3a70c6be..00000000
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml
+++ /dev/null
@@ -1,61 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: pipeline-maintainer
-rules:
-  - apiGroups:
-      - operators.coreos.com
-    resources:
-      - installplans
-    verbs:
-      - get
-      - list
-      - update
-      - patch
-  - verbs:
-      - patch
-      - get
-    apiGroups:
-      - ''
-    resources:
-      - serviceaccounts
-    resourceNames:
-      - pipeline # TODO: figure out how to 'gitops' this.
-  - verbs:
-      - create
-      - get
-      - list
-      - watch
-      - delete
-    apiGroups:
-      - ''
-    resources:
-      - secrets
-  - verbs:
-      - '*' # needed till we figure out how to cleanup workspaces.
-    apiGroups:
-      - 'tekton.dev'
-    resources:
-      - 'pipelineruns'
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
-  - apiGroups:
-    - ''
-    resources:
-    - pods/portforward
-    verbs:
-    - create
-  - apiGroups:
-      - 'apps'
-    resources:
-      - deployments
-    verbs:
-      - get
-      - patch
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 8ceba9c0..2980ab54 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -1,84 +1,102 @@
+---
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: pipeline-service-sre
 rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - installplans
-  verbs:
-  - get
-  - list
-  - update
-  - patch
-- apiGroups:
-  - tekton.dev
-  resources:
-  - clustertasks
-  - conditions
-  - pipelineresources
-  - pipelineruns
-  - pipelines
-  - runs
-  - taskruns
-  - tasks
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - triggers.tekton.dev
-  resources:
-  - clusterinterceptors
-  - clustertriggerbindings
-  - eventlisteners
-  - triggerbindings
-  - triggers
-  - triggertemplates
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - pipelinesascode.tekton.dev
-  resources:
-  - repositories
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - get
-  - list
-  - create
-  - delete
-  - update
+  # This rule is needed until RHTAPBUGS-256 is fixed
+  - apiGroups:
+      - ""
+    verbs:
+      - list
+      - delete
+    resources:
+      - secrets
+  # Grant access to the default account used to run pipelines
+  - apiGroups:
+      - ""
+    resources:
+      - "serviceaccounts"
+    resourceNames:
+      - "appstudio-pipeline"
+    verbs:
+      - "get"
+      - "list"
+  # Grant full access to pipeline related resources
+  - apiGroups:
+      - pipelinesascode.tekton.dev
+      - results.tekton.dev
+      - tekton.dev
+      - triggers.tekton.dev
+    resources:
+      - "*"
+    verbs:
+      - create
+      - delete
+      - get
+      - list
+      - patch
+      - update
+      - watch
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: pipeline-service-sre
 subjects:
-- kind: Group
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
+roleRef:
   apiGroup: rbac.authorization.k8s.io
-  name: Pipeline Service
+  kind: ClusterRole
+  name: pipeline-service-sre
+---
+# Grant access to the OpenShift-Pipelines operator namespace
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: pipeline-service-sre
+  namespace: openshift-pipelines
+subjects:
+  - kind: Group
+    name: pipeline-grp
+    apiGroup: rbac.authorization.k8s.io
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
 roleRef:
+  kind: ClusterRole
+  name: admin
   apiGroup: rbac.authorization.k8s.io
+---
+# Grant access to the Tekton Result namespace
+# This binding is needed until Tekton Result is deployed by OpenShift Pipelines
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: pipeline-service-sre
+  namespace: tekton-results
+subjects:
+  - kind: Group
+    name: pipeline-grp
+    apiGroup: rbac.authorization.k8s.io
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
+roleRef:
   kind: ClusterRole
-  name: pipeline-service-sre
\ No newline at end of file
+  name: admin
+  apiGroup: rbac.authorization.k8s.io 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (396 lines)</summary>  

``` 
./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
235a236,299
>   name: pipeline-maintainer
> rules:
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - installplans
>   verbs:
>   - get
>   - list
>   - update
>   - patch
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
>   - logs
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
306c370
<   - ""
---
>   - operators.coreos.com
308c372
<   - secrets
---
>   - installplans
309a374
>   - get
311c376,377
<   - delete
---
>   - update
>   - patch
313,315c379
<   - ""
<   resourceNames:
<   - appstudio-pipeline
---
>   - tekton.dev
317c381,388
<   - serviceaccounts
---
>   - clustertasks
>   - conditions
>   - pipelineresources
>   - pipelineruns
>   - pipelines
>   - runs
>   - taskruns
>   - tasks
320a392,395
>   - watch
>   - create
>   - delete
>   - patch
322,324d396
<   - pipelinesascode.tekton.dev
<   - results.tekton.dev
<   - tekton.dev
327c399,404
<   - '*'
---
>   - clusterinterceptors
>   - clustertriggerbindings
>   - eventlisteners
>   - triggerbindings
>   - triggers
>   - triggertemplates
328a406,408
>   - get
>   - list
>   - watch
330a411,416
>   - patch
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
332a419,421
>   - watch
>   - create
>   - delete
333a423,433
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   - logs
>   verbs:
>   - get
>   - list
>   - create
>   - delete
335d434
<   - watch
634,655d732
<   name: pipeline-service-sre
<   namespace: openshift-pipelines
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
739,760d815
<   name: pipeline-service-sre
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
877,882d931
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
235a236,299
>   name: pipeline-maintainer
> rules:
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - installplans
>   verbs:
>   - get
>   - list
>   - update
>   - patch
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
>   - logs
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
306c370
<   - ""
---
>   - operators.coreos.com
308c372
<   - secrets
---
>   - installplans
309a374
>   - get
311c376,377
<   - delete
---
>   - update
>   - patch
313,315c379
<   - ""
<   resourceNames:
<   - appstudio-pipeline
---
>   - tekton.dev
317c381,388
<   - serviceaccounts
---
>   - clustertasks
>   - conditions
>   - pipelineresources
>   - pipelineruns
>   - pipelines
>   - runs
>   - taskruns
>   - tasks
320a392,395
>   - watch
>   - create
>   - delete
>   - patch
322,324d396
<   - pipelinesascode.tekton.dev
<   - results.tekton.dev
<   - tekton.dev
327c399,404
<   - '*'
---
>   - clusterinterceptors
>   - clustertriggerbindings
>   - eventlisteners
>   - triggerbindings
>   - triggers
>   - triggertemplates
328a406,408
>   - get
>   - list
>   - watch
330a411,416
>   - patch
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
332a419,421
>   - watch
>   - create
>   - delete
333a423,433
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   - logs
>   verbs:
>   - get
>   - list
>   - create
>   - delete
335d434
<   - watch
634,655d732
<   name: pipeline-service-sre
<   namespace: openshift-pipelines
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
739,760d815
<   name: pipeline-service-sre
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
877,882d931
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 2536c68b to bbc37b52 on Thu Sep 21 15:53:23 2023 </h3>  
 
<details> 
<summary>Git Diff (256 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml b/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
index 220aec55..06346538 100644
--- a/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - pipeline-service-sre.yaml
-  - pipeline-maintainer.yaml
\ No newline at end of file
+  
\ No newline at end of file
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml
deleted file mode 100644
index 3a70c6be..00000000
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml
+++ /dev/null
@@ -1,61 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: pipeline-maintainer
-rules:
-  - apiGroups:
-      - operators.coreos.com
-    resources:
-      - installplans
-    verbs:
-      - get
-      - list
-      - update
-      - patch
-  - verbs:
-      - patch
-      - get
-    apiGroups:
-      - ''
-    resources:
-      - serviceaccounts
-    resourceNames:
-      - pipeline # TODO: figure out how to 'gitops' this.
-  - verbs:
-      - create
-      - get
-      - list
-      - watch
-      - delete
-    apiGroups:
-      - ''
-    resources:
-      - secrets
-  - verbs:
-      - '*' # needed till we figure out how to cleanup workspaces.
-    apiGroups:
-      - 'tekton.dev'
-    resources:
-      - 'pipelineruns'
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
-  - apiGroups:
-    - ''
-    resources:
-    - pods/portforward
-    verbs:
-    - create
-  - apiGroups:
-      - 'apps'
-    resources:
-      - deployments
-    verbs:
-      - get
-      - patch
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 8ceba9c0..2980ab54 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -1,84 +1,102 @@
+---
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: pipeline-service-sre
 rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - installplans
-  verbs:
-  - get
-  - list
-  - update
-  - patch
-- apiGroups:
-  - tekton.dev
-  resources:
-  - clustertasks
-  - conditions
-  - pipelineresources
-  - pipelineruns
-  - pipelines
-  - runs
-  - taskruns
-  - tasks
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - triggers.tekton.dev
-  resources:
-  - clusterinterceptors
-  - clustertriggerbindings
-  - eventlisteners
-  - triggerbindings
-  - triggers
-  - triggertemplates
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - pipelinesascode.tekton.dev
-  resources:
-  - repositories
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - get
-  - list
-  - create
-  - delete
-  - update
+  # This rule is needed until RHTAPBUGS-256 is fixed
+  - apiGroups:
+      - ""
+    verbs:
+      - list
+      - delete
+    resources:
+      - secrets
+  # Grant access to the default account used to run pipelines
+  - apiGroups:
+      - ""
+    resources:
+      - "serviceaccounts"
+    resourceNames:
+      - "appstudio-pipeline"
+    verbs:
+      - "get"
+      - "list"
+  # Grant full access to pipeline related resources
+  - apiGroups:
+      - pipelinesascode.tekton.dev
+      - results.tekton.dev
+      - tekton.dev
+      - triggers.tekton.dev
+    resources:
+      - "*"
+    verbs:
+      - create
+      - delete
+      - get
+      - list
+      - patch
+      - update
+      - watch
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: pipeline-service-sre
 subjects:
-- kind: Group
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
+roleRef:
   apiGroup: rbac.authorization.k8s.io
-  name: Pipeline Service
+  kind: ClusterRole
+  name: pipeline-service-sre
+---
+# Grant access to the OpenShift-Pipelines operator namespace
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: pipeline-service-sre
+  namespace: openshift-pipelines
+subjects:
+  - kind: Group
+    name: pipeline-grp
+    apiGroup: rbac.authorization.k8s.io
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
 roleRef:
+  kind: ClusterRole
+  name: admin
   apiGroup: rbac.authorization.k8s.io
+---
+# Grant access to the Tekton Result namespace
+# This binding is needed until Tekton Result is deployed by OpenShift Pipelines
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: pipeline-service-sre
+  namespace: tekton-results
+subjects:
+  - kind: Group
+    name: pipeline-grp
+    apiGroup: rbac.authorization.k8s.io
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
+roleRef:
   kind: ClusterRole
-  name: pipeline-service-sre
\ No newline at end of file
+  name: admin
+  apiGroup: rbac.authorization.k8s.io 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (396 lines)</summary>  

``` 
./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
235a236,299
>   name: pipeline-maintainer
> rules:
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - installplans
>   verbs:
>   - get
>   - list
>   - update
>   - patch
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
>   - logs
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
306c370
<   - ""
---
>   - operators.coreos.com
308c372
<   - secrets
---
>   - installplans
309a374
>   - get
311c376,377
<   - delete
---
>   - update
>   - patch
313,315c379
<   - ""
<   resourceNames:
<   - appstudio-pipeline
---
>   - tekton.dev
317c381,388
<   - serviceaccounts
---
>   - clustertasks
>   - conditions
>   - pipelineresources
>   - pipelineruns
>   - pipelines
>   - runs
>   - taskruns
>   - tasks
320a392,395
>   - watch
>   - create
>   - delete
>   - patch
322,324d396
<   - pipelinesascode.tekton.dev
<   - results.tekton.dev
<   - tekton.dev
327c399,404
<   - '*'
---
>   - clusterinterceptors
>   - clustertriggerbindings
>   - eventlisteners
>   - triggerbindings
>   - triggers
>   - triggertemplates
328a406,408
>   - get
>   - list
>   - watch
330a411,416
>   - patch
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
332a419,421
>   - watch
>   - create
>   - delete
333a423,433
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   - logs
>   verbs:
>   - get
>   - list
>   - create
>   - delete
335d434
<   - watch
634,655d732
<   name: pipeline-service-sre
<   namespace: openshift-pipelines
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
739,760d815
<   name: pipeline-service-sre
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
887,892d941
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
235a236,299
>   name: pipeline-maintainer
> rules:
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - installplans
>   verbs:
>   - get
>   - list
>   - update
>   - patch
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
>   - logs
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
306c370
<   - ""
---
>   - operators.coreos.com
308c372
<   - secrets
---
>   - installplans
309a374
>   - get
311c376,377
<   - delete
---
>   - update
>   - patch
313,315c379
<   - ""
<   resourceNames:
<   - appstudio-pipeline
---
>   - tekton.dev
317c381,388
<   - serviceaccounts
---
>   - clustertasks
>   - conditions
>   - pipelineresources
>   - pipelineruns
>   - pipelines
>   - runs
>   - taskruns
>   - tasks
320a392,395
>   - watch
>   - create
>   - delete
>   - patch
322,324d396
<   - pipelinesascode.tekton.dev
<   - results.tekton.dev
<   - tekton.dev
327c399,404
<   - '*'
---
>   - clusterinterceptors
>   - clustertriggerbindings
>   - eventlisteners
>   - triggerbindings
>   - triggers
>   - triggertemplates
328a406,408
>   - get
>   - list
>   - watch
330a411,416
>   - patch
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
332a419,421
>   - watch
>   - create
>   - delete
333a423,433
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   - logs
>   verbs:
>   - get
>   - list
>   - create
>   - delete
335d434
<   - watch
634,655d732
<   name: pipeline-service-sre
<   namespace: openshift-pipelines
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
739,760d815
<   name: pipeline-service-sre
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
887,892d941
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 2536c68b to bbc37b52 on Thu Sep 21 15:53:23 2023 </h3>  
 
<details> 
<summary>Git Diff (256 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml b/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
index 220aec55..06346538 100644
--- a/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - pipeline-service-sre.yaml
-  - pipeline-maintainer.yaml
\ No newline at end of file
+  
\ No newline at end of file
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml
deleted file mode 100644
index 3a70c6be..00000000
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-maintainer.yaml
+++ /dev/null
@@ -1,61 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: pipeline-maintainer
-rules:
-  - apiGroups:
-      - operators.coreos.com
-    resources:
-      - installplans
-    verbs:
-      - get
-      - list
-      - update
-      - patch
-  - verbs:
-      - patch
-      - get
-    apiGroups:
-      - ''
-    resources:
-      - serviceaccounts
-    resourceNames:
-      - pipeline # TODO: figure out how to 'gitops' this.
-  - verbs:
-      - create
-      - get
-      - list
-      - watch
-      - delete
-    apiGroups:
-      - ''
-    resources:
-      - secrets
-  - verbs:
-      - '*' # needed till we figure out how to cleanup workspaces.
-    apiGroups:
-      - 'tekton.dev'
-    resources:
-      - 'pipelineruns'
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
-  - apiGroups:
-    - ''
-    resources:
-    - pods/portforward
-    verbs:
-    - create
-  - apiGroups:
-      - 'apps'
-    resources:
-      - deployments
-    verbs:
-      - get
-      - patch
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 8ceba9c0..2980ab54 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -1,84 +1,102 @@
+---
 kind: ClusterRole
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: pipeline-service-sre
 rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - installplans
-  verbs:
-  - get
-  - list
-  - update
-  - patch
-- apiGroups:
-  - tekton.dev
-  resources:
-  - clustertasks
-  - conditions
-  - pipelineresources
-  - pipelineruns
-  - pipelines
-  - runs
-  - taskruns
-  - tasks
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - triggers.tekton.dev
-  resources:
-  - clusterinterceptors
-  - clustertriggerbindings
-  - eventlisteners
-  - triggerbindings
-  - triggers
-  - triggertemplates
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - pipelinesascode.tekton.dev
-  resources:
-  - repositories
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - delete
-  - patch
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - get
-  - list
-  - create
-  - delete
-  - update
+  # This rule is needed until RHTAPBUGS-256 is fixed
+  - apiGroups:
+      - ""
+    verbs:
+      - list
+      - delete
+    resources:
+      - secrets
+  # Grant access to the default account used to run pipelines
+  - apiGroups:
+      - ""
+    resources:
+      - "serviceaccounts"
+    resourceNames:
+      - "appstudio-pipeline"
+    verbs:
+      - "get"
+      - "list"
+  # Grant full access to pipeline related resources
+  - apiGroups:
+      - pipelinesascode.tekton.dev
+      - results.tekton.dev
+      - tekton.dev
+      - triggers.tekton.dev
+    resources:
+      - "*"
+    verbs:
+      - create
+      - delete
+      - get
+      - list
+      - patch
+      - update
+      - watch
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: pipeline-service-sre
 subjects:
-- kind: Group
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
+roleRef:
   apiGroup: rbac.authorization.k8s.io
-  name: Pipeline Service
+  kind: ClusterRole
+  name: pipeline-service-sre
+---
+# Grant access to the OpenShift-Pipelines operator namespace
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: pipeline-service-sre
+  namespace: openshift-pipelines
+subjects:
+  - kind: Group
+    name: pipeline-grp
+    apiGroup: rbac.authorization.k8s.io
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
 roleRef:
+  kind: ClusterRole
+  name: admin
   apiGroup: rbac.authorization.k8s.io
+---
+# Grant access to the Tekton Result namespace
+# This binding is needed until Tekton Result is deployed by OpenShift Pipelines
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: pipeline-service-sre
+  namespace: tekton-results
+subjects:
+  - kind: Group
+    name: pipeline-grp
+    apiGroup: rbac.authorization.k8s.io
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: sbose78
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jduimovich
+roleRef:
   kind: ClusterRole
-  name: pipeline-service-sre
\ No newline at end of file
+  name: admin
+  apiGroup: rbac.authorization.k8s.io 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (198 lines)</summary>  

``` 
./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml
252a253,316
>   name: pipeline-maintainer
> rules:
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - installplans
>   verbs:
>   - get
>   - list
>   - update
>   - patch
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
>   - logs
>   verbs:
>   - get
>   - list
> - apiGroups:
>   - ""
>   resources:
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
295c359
<   - ""
---
>   - operators.coreos.com
297c361
<   - secrets
---
>   - installplans
298a363
>   - get
300c365,366
<   - delete
---
>   - update
>   - patch
302,304c368
<   - ""
<   resourceNames:
<   - appstudio-pipeline
---
>   - tekton.dev
306c370,377
<   - serviceaccounts
---
>   - clustertasks
>   - conditions
>   - pipelineresources
>   - pipelineruns
>   - pipelines
>   - runs
>   - taskruns
>   - tasks
309a381,384
>   - watch
>   - create
>   - delete
>   - patch
311,313d385
<   - pipelinesascode.tekton.dev
<   - results.tekton.dev
<   - tekton.dev
316c388,393
<   - '*'
---
>   - clusterinterceptors
>   - clustertriggerbindings
>   - eventlisteners
>   - triggerbindings
>   - triggers
>   - triggertemplates
317a395,397
>   - get
>   - list
>   - watch
319a400,405
>   - patch
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
321a408,410
>   - watch
>   - create
>   - delete
322a412,422
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   - logs
>   verbs:
>   - get
>   - list
>   - create
>   - delete
324d423
<   - watch
623,644d721
<   name: pipeline-service-sre
<   namespace: openshift-pipelines
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
712,733d788
<   name: pipeline-service-sre
<   namespace: tekton-results
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: pipeline-grp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
827,832d881
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jduimovich 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-bbc37b52/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-bbc37b52/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-bbc37b52/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-bbc37b52/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ffe411cf to 2536c68b on Thu Sep 21 15:41:07 2023 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/pipelines-as-code-secret.yaml b/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
index 90c2c582..53220869 100644
--- a/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
+++ b/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
@@ -10,7 +10,7 @@ spec:
   dataFrom:
     - extract:
         key: production/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml b/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
index c40ce73e..3609d953 100644
--- a/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
+++ b/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
@@ -10,7 +10,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/sprayproxy/production/pipelines-as-code-secret.yaml b/components/sprayproxy/production/pipelines-as-code-secret.yaml
index e58d37a8..11ffb5d6 100644
--- a/components/sprayproxy/production/pipelines-as-code-secret.yaml
+++ b/components/sprayproxy/production/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: production/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/sprayproxy/staging/pipelines-as-code-secret.yaml b/components/sprayproxy/staging/pipelines-as-code-secret.yaml
index 3aa1ec9f..4663435f 100644
--- a/components/sprayproxy/staging/pipelines-as-code-secret.yaml
+++ b/components/sprayproxy/staging/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1796c1796
<   refreshInterval: 5m
---
>   refreshInterval: 1h
./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1796c1796
<   refreshInterval: 5m
---
>   refreshInterval: 1h
./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml
273c273
<   refreshInterval: 5m
---
>   refreshInterval: 1h 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from ffe411cf to 2536c68b on Thu Sep 21 15:41:07 2023 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/pipelines-as-code-secret.yaml b/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
index 90c2c582..53220869 100644
--- a/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
+++ b/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
@@ -10,7 +10,7 @@ spec:
   dataFrom:
     - extract:
         key: production/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml b/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
index c40ce73e..3609d953 100644
--- a/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
+++ b/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
@@ -10,7 +10,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/sprayproxy/production/pipelines-as-code-secret.yaml b/components/sprayproxy/production/pipelines-as-code-secret.yaml
index e58d37a8..11ffb5d6 100644
--- a/components/sprayproxy/production/pipelines-as-code-secret.yaml
+++ b/components/sprayproxy/production/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: production/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/sprayproxy/staging/pipelines-as-code-secret.yaml b/components/sprayproxy/staging/pipelines-as-code-secret.yaml
index 3aa1ec9f..4663435f 100644
--- a/components/sprayproxy/staging/pipelines-as-code-secret.yaml
+++ b/components/sprayproxy/staging/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1806c1806
<   refreshInterval: 5m
---
>   refreshInterval: 1h
./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1806c1806
<   refreshInterval: 5m
---
>   refreshInterval: 1h
./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml
273c273
<   refreshInterval: 5m
---
>   refreshInterval: 1h 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from ffe411cf to 2536c68b on Thu Sep 21 15:41:07 2023 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/pipelines-as-code-secret.yaml b/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
index 90c2c582..53220869 100644
--- a/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
+++ b/components/pipeline-service/production/base/pipelines-as-code-secret.yaml
@@ -10,7 +10,7 @@ spec:
   dataFrom:
     - extract:
         key: production/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml b/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
index c40ce73e..3609d953 100644
--- a/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
+++ b/components/pipeline-service/staging/base/pipelines-as-code-secret.yaml
@@ -10,7 +10,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/sprayproxy/production/pipelines-as-code-secret.yaml b/components/sprayproxy/production/pipelines-as-code-secret.yaml
index e58d37a8..11ffb5d6 100644
--- a/components/sprayproxy/production/pipelines-as-code-secret.yaml
+++ b/components/sprayproxy/production/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: production/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/sprayproxy/staging/pipelines-as-code-secret.yaml b/components/sprayproxy/staging/pipelines-as-code-secret.yaml
index 3aa1ec9f..4663435f 100644
--- a/components/sprayproxy/staging/pipelines-as-code-secret.yaml
+++ b/components/sprayproxy/staging/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 1h
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
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

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2536c68b/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2536c68b/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-2536c68b/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2536c68b/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from b8c315c9 to ffe411cf on Thu Sep 21 14:26:13 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/rhtap-admins.yaml
index da34ab09..f93d5631 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/rhtap-admins.yaml
@@ -188,6 +188,14 @@ rules:
       - buildlogs
     verbs:
       - '*'
+  - apiGroups:
+      - config.openshift.io
+    resources:
+      - '*'
+    verbs:
+      - get
+      - list
+      - watch
   - apiGroups:
       - image.openshift.io
     resources:
@@ -197,6 +205,12 @@ rules:
       - imagetags
     verbs:
       - '*'
+  - apiGroups:
+      - operators.coreos.com
+    resources:
+      - '*'
+    verbs:
+      - '*'
   - apiGroups:
       - route.openshift.io
     resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-b8c315c9/production/components/authentication/production/kustomize.out.yaml
259,266d258
<   - config.openshift.io
<   resources:
<   - '*'
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
273,278d264
<   verbs:
<   - '*'
< - apiGroups:
<   - operators.coreos.com
<   resources:
<   - '*' 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from b8c315c9 to ffe411cf on Thu Sep 21 14:26:13 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/rhtap-admins.yaml
index da34ab09..f93d5631 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/rhtap-admins.yaml
@@ -188,6 +188,14 @@ rules:
       - buildlogs
     verbs:
       - '*'
+  - apiGroups:
+      - config.openshift.io
+    resources:
+      - '*'
+    verbs:
+      - get
+      - list
+      - watch
   - apiGroups:
       - image.openshift.io
     resources:
@@ -197,6 +205,12 @@ rules:
       - imagetags
     verbs:
       - '*'
+  - apiGroups:
+      - operators.coreos.com
+    resources:
+      - '*'
+    verbs:
+      - '*'
   - apiGroups:
       - route.openshift.io
     resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-b8c315c9/staging/components/authentication/staging/kustomize.out.yaml
274,281d273
<   - config.openshift.io
<   resources:
<   - '*'
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
288,293d279
<   verbs:
<   - '*'
< - apiGroups:
<   - operators.coreos.com
<   resources:
<   - '*' 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from b8c315c9 to ffe411cf on Thu Sep 21 14:26:13 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/rhtap-admins.yaml
index da34ab09..f93d5631 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/rhtap-admins.yaml
@@ -188,6 +188,14 @@ rules:
       - buildlogs
     verbs:
       - '*'
+  - apiGroups:
+      - config.openshift.io
+    resources:
+      - '*'
+    verbs:
+      - get
+      - list
+      - watch
   - apiGroups:
       - image.openshift.io
     resources:
@@ -197,6 +205,12 @@ rules:
       - imagetags
     verbs:
       - '*'
+  - apiGroups:
+      - operators.coreos.com
+    resources:
+      - '*'
+    verbs:
+      - '*'
   - apiGroups:
       - route.openshift.io
     resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-b8c315c9/development/components/authentication/development/kustomize.out.yaml
287,294d286
<   - config.openshift.io
<   resources:
<   - '*'
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
301,306d292
<   verbs:
<   - '*'
< - apiGroups:
<   - operators.coreos.com
<   resources:
<   - '*' 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ffe411cf/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ffe411cf/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ffe411cf/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ffe411cf/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from efc0ab2e to b8c315c9 on Thu Sep 21 13:48:34 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index 7e0a4d06..331ddd1e 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-efc0ab2e/production/components/build-service/production/kustomize.out.yaml
749c749
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
755c755
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5f8eafcbd209abe6979f85ed5766172f6fb35129
761c761
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
767c767
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from efc0ab2e to b8c315c9 on Thu Sep 21 13:48:34 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index 7e0a4d06..331ddd1e 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-efc0ab2e/staging/components/build-service/staging/kustomize.out.yaml
749c749
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
755c755
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5f8eafcbd209abe6979f85ed5766172f6fb35129
761c761
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
767c767
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from efc0ab2e to b8c315c9 on Thu Sep 21 13:48:34 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index 7e0a4d06..331ddd1e 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-efc0ab2e/development/components/build-service/development/kustomize.out.yaml
755c755
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
761c761
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5f8eafcbd209abe6979f85ed5766172f6fb35129
767c767
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129
773c773
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5f8eafcbd209abe6979f85ed5766172f6fb35129 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b8c315c9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b8c315c9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-b8c315c9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b8c315c9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>
