# kustomize changes tracked by commits 
### This file generated at Thu Sep 21 20:08:28 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 3dece441 to 9f9aad48 on Thu Sep 21 19:36:46 2023 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/rhtap-admins.yaml
index f93d5631..d0c3c6e6 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/rhtap-admins.yaml
@@ -13,6 +13,7 @@ rules:
       - enterprisecontractpolicies
       - environments
       - integrationtestscenarios
+      - internalrequests
       - promotionruns
       - releaseplanadmissions
       - releaseplans
@@ -227,8 +228,17 @@ rules:
       - rbac.authorization.k8s.io
     resources:
       - clusterrolebindings
+    verbs:
+      - get
+      - list
+      - watch
+  - apiGroups:
+      - rbac.authorization.k8s.io
+    resources:
       - rolebindings
     verbs:
+      - create
+      - delete
       - get
       - list
       - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-3dece441/production/components/authentication/production/kustomize.out.yaml
83d82
<   - internalrequests
298,304d296
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
307,308d298
<   - create
<   - delete 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 3dece441 to 9f9aad48 on Thu Sep 21 19:36:46 2023 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/rhtap-admins.yaml
index f93d5631..d0c3c6e6 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/rhtap-admins.yaml
@@ -13,6 +13,7 @@ rules:
       - enterprisecontractpolicies
       - environments
       - integrationtestscenarios
+      - internalrequests
       - promotionruns
       - releaseplanadmissions
       - releaseplans
@@ -227,8 +228,17 @@ rules:
       - rbac.authorization.k8s.io
     resources:
       - clusterrolebindings
+    verbs:
+      - get
+      - list
+      - watch
+  - apiGroups:
+      - rbac.authorization.k8s.io
+    resources:
       - rolebindings
     verbs:
+      - create
+      - delete
       - get
       - list
       - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-3dece441/staging/components/authentication/staging/kustomize.out.yaml
98d97
<   - internalrequests
313,319d311
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
322,323d313
<   - create
<   - delete 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 3dece441 to 9f9aad48 on Thu Sep 21 19:36:46 2023 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/authentication/base/rhtap-admins.yaml b/components/authentication/base/rhtap-admins.yaml
index f93d5631..d0c3c6e6 100644
--- a/components/authentication/base/rhtap-admins.yaml
+++ b/components/authentication/base/rhtap-admins.yaml
@@ -13,6 +13,7 @@ rules:
       - enterprisecontractpolicies
       - environments
       - integrationtestscenarios
+      - internalrequests
       - promotionruns
       - releaseplanadmissions
       - releaseplans
@@ -227,8 +228,17 @@ rules:
       - rbac.authorization.k8s.io
     resources:
       - clusterrolebindings
+    verbs:
+      - get
+      - list
+      - watch
+  - apiGroups:
+      - rbac.authorization.k8s.io
+    resources:
       - rolebindings
     verbs:
+      - create
+      - delete
       - get
       - list
       - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-3dece441/development/components/authentication/development/kustomize.out.yaml
111d110
<   - internalrequests
326,332d324
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
335,336d326
<   - create
<   - delete 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9aad48/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9aad48/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9aad48/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9aad48/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from f8fe1b02 to 3dece441 on Thu Sep 21 19:34:00 2023 </h3>  
 
<details> 
<summary>Git Diff (177 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml
new file mode 100644
index 00000000..a3dfb3f0
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: enable-dvo
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/enable-dvo-for-all-cluster
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: enable-dvo-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: configs/enable-dvo-for-all-cluster
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: deployment-validation-operator
+        server: '{{server}}'
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
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml
new file mode 100644
index 00000000..38b19cfd
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - enable-dvo.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 9d6d38e3..2dee7e9b 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - monitoring-workload-logging
   - authentication
   - disable-csvcopy-for-all-cluster
+  - enable-dvo-for-all-cluster
 
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/configs/enable-dvo-for-all-cluster/configure-dvo.yaml b/configs/enable-dvo-for-all-cluster/configure-dvo.yaml
new file mode 100644
index 00000000..cdcc2d36
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/configure-dvo.yaml
@@ -0,0 +1,42 @@
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: deployment-validation-operator-config
+  namespace: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+data:
+  deployment-validation-operator-config.yaml: |-
+    checks:
+      doNotAutoAddDefaults: true
+      addAllBuiltIn: false
+      include:
+      - "host-ipc"
+      - "host-network"
+      - "host-pid"
+      - "non-isolated-pod"
+      - "pdb-max-unavailable"
+      - "pdb-min-available"
+      - "privilege-escalation-container"
+      - "privileged-container"
+      - "run-as-non-root"
+      - "unsafe-sysctls"
+      - "unset-cpu-requirements"
+      - "unset-memory-requirements"
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    name: deployment-validation-operator
+  name: deployment-validation-operator-metrics
+  namespace: deployment-validation-operator
+spec:
+  ports:
+  - name: http-metrics
+    port: 8383
+    protocol: TCP
+    targetPort: 8383
+  selector:
+    name: deployment-validation-operator
diff --git a/configs/enable-dvo-for-all-cluster/install-dvo.yaml b/configs/enable-dvo-for-all-cluster/install-dvo.yaml
new file mode 100644
index 00000000..4ca5d9aa
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/install-dvo.yaml
@@ -0,0 +1,42 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  name: deployment-validation-operator-catalog
+  labels:
+    name: deployment-validation-operator
+spec:
+  displayName: Deployment Validation Operator
+  grpcPodConfig:
+    securityContextConfig: restricted
+  image: quay.io/app-sre/deployment-validation-operator-catalog:latest
+  publisher: OperatorHub.io
+  sourceType: grpc
+
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+  namespace: deployment-validation-operator
+spec:
+  channel: alpha
+  installPlanApproval: Automatic
+  name: deployment-validation-operator
+  source: community-operators
+  sourceNamespace: openshift-marketplace
+  startingCSV: deployment-validation-operator.v0.6.0
+
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+  namespace: deployment-validation-operator
+spec:
+  targetNamespaces:
+  - deployment-validation-operator
diff --git a/configs/enable-dvo-for-all-cluster/kustomization.yaml b/configs/enable-dvo-for-all-cluster/kustomization.yaml
new file mode 100644
index 00000000..9b57c29a
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: deployment-validation-operator
+resources:
+  - install-dvo.yaml
+  - configure-dvo.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-f8fe1b02/production/app-of-apps-production.yaml
458,508d457
<   name: enable-dvo
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: configs/enable-dvo-for-all-cluster
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: enable-dvo-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: deployment-validation-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: configs/enable-dvo-for-all-cluster
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
<           limit: -1
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

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from f8fe1b02 to 3dece441 on Thu Sep 21 19:34:00 2023 </h3>  
 
<details> 
<summary>Git Diff (177 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml
new file mode 100644
index 00000000..a3dfb3f0
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: enable-dvo
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/enable-dvo-for-all-cluster
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: enable-dvo-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: configs/enable-dvo-for-all-cluster
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: deployment-validation-operator
+        server: '{{server}}'
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
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml
new file mode 100644
index 00000000..38b19cfd
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - enable-dvo.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 9d6d38e3..2dee7e9b 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - monitoring-workload-logging
   - authentication
   - disable-csvcopy-for-all-cluster
+  - enable-dvo-for-all-cluster
 
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/configs/enable-dvo-for-all-cluster/configure-dvo.yaml b/configs/enable-dvo-for-all-cluster/configure-dvo.yaml
new file mode 100644
index 00000000..cdcc2d36
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/configure-dvo.yaml
@@ -0,0 +1,42 @@
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: deployment-validation-operator-config
+  namespace: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+data:
+  deployment-validation-operator-config.yaml: |-
+    checks:
+      doNotAutoAddDefaults: true
+      addAllBuiltIn: false
+      include:
+      - "host-ipc"
+      - "host-network"
+      - "host-pid"
+      - "non-isolated-pod"
+      - "pdb-max-unavailable"
+      - "pdb-min-available"
+      - "privilege-escalation-container"
+      - "privileged-container"
+      - "run-as-non-root"
+      - "unsafe-sysctls"
+      - "unset-cpu-requirements"
+      - "unset-memory-requirements"
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    name: deployment-validation-operator
+  name: deployment-validation-operator-metrics
+  namespace: deployment-validation-operator
+spec:
+  ports:
+  - name: http-metrics
+    port: 8383
+    protocol: TCP
+    targetPort: 8383
+  selector:
+    name: deployment-validation-operator
diff --git a/configs/enable-dvo-for-all-cluster/install-dvo.yaml b/configs/enable-dvo-for-all-cluster/install-dvo.yaml
new file mode 100644
index 00000000..4ca5d9aa
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/install-dvo.yaml
@@ -0,0 +1,42 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  name: deployment-validation-operator-catalog
+  labels:
+    name: deployment-validation-operator
+spec:
+  displayName: Deployment Validation Operator
+  grpcPodConfig:
+    securityContextConfig: restricted
+  image: quay.io/app-sre/deployment-validation-operator-catalog:latest
+  publisher: OperatorHub.io
+  sourceType: grpc
+
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+  namespace: deployment-validation-operator
+spec:
+  channel: alpha
+  installPlanApproval: Automatic
+  name: deployment-validation-operator
+  source: community-operators
+  sourceNamespace: openshift-marketplace
+  startingCSV: deployment-validation-operator.v0.6.0
+
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+  namespace: deployment-validation-operator
+spec:
+  targetNamespaces:
+  - deployment-validation-operator
diff --git a/configs/enable-dvo-for-all-cluster/kustomization.yaml b/configs/enable-dvo-for-all-cluster/kustomization.yaml
new file mode 100644
index 00000000..9b57c29a
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: deployment-validation-operator
+resources:
+  - install-dvo.yaml
+  - configure-dvo.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-f8fe1b02/staging/app-of-apps-staging.yaml
329,379d328
<   name: enable-dvo
<   namespace: argocd-staging
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: configs/enable-dvo-for-all-cluster
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: enable-dvo-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: deployment-validation-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: configs/enable-dvo-for-all-cluster
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
<           limit: -1
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

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from f8fe1b02 to 3dece441 on Thu Sep 21 19:34:00 2023 </h3>  
 
<details> 
<summary>Git Diff (177 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml
new file mode 100644
index 00000000..a3dfb3f0
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/enable-dvo.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: enable-dvo
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/enable-dvo-for-all-cluster
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: enable-dvo-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: configs/enable-dvo-for-all-cluster
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: deployment-validation-operator
+        server: '{{server}}'
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
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml
new file mode 100644
index 00000000..38b19cfd
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-dvo-for-all-cluster/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - enable-dvo.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 9d6d38e3..2dee7e9b 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - monitoring-workload-logging
   - authentication
   - disable-csvcopy-for-all-cluster
+  - enable-dvo-for-all-cluster
 
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/configs/enable-dvo-for-all-cluster/configure-dvo.yaml b/configs/enable-dvo-for-all-cluster/configure-dvo.yaml
new file mode 100644
index 00000000..cdcc2d36
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/configure-dvo.yaml
@@ -0,0 +1,42 @@
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: deployment-validation-operator-config
+  namespace: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+data:
+  deployment-validation-operator-config.yaml: |-
+    checks:
+      doNotAutoAddDefaults: true
+      addAllBuiltIn: false
+      include:
+      - "host-ipc"
+      - "host-network"
+      - "host-pid"
+      - "non-isolated-pod"
+      - "pdb-max-unavailable"
+      - "pdb-min-available"
+      - "privilege-escalation-container"
+      - "privileged-container"
+      - "run-as-non-root"
+      - "unsafe-sysctls"
+      - "unset-cpu-requirements"
+      - "unset-memory-requirements"
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    name: deployment-validation-operator
+  name: deployment-validation-operator-metrics
+  namespace: deployment-validation-operator
+spec:
+  ports:
+  - name: http-metrics
+    port: 8383
+    protocol: TCP
+    targetPort: 8383
+  selector:
+    name: deployment-validation-operator
diff --git a/configs/enable-dvo-for-all-cluster/install-dvo.yaml b/configs/enable-dvo-for-all-cluster/install-dvo.yaml
new file mode 100644
index 00000000..4ca5d9aa
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/install-dvo.yaml
@@ -0,0 +1,42 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  name: deployment-validation-operator-catalog
+  labels:
+    name: deployment-validation-operator
+spec:
+  displayName: Deployment Validation Operator
+  grpcPodConfig:
+    securityContextConfig: restricted
+  image: quay.io/app-sre/deployment-validation-operator-catalog:latest
+  publisher: OperatorHub.io
+  sourceType: grpc
+
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+  namespace: deployment-validation-operator
+spec:
+  channel: alpha
+  installPlanApproval: Automatic
+  name: deployment-validation-operator
+  source: community-operators
+  sourceNamespace: openshift-marketplace
+  startingCSV: deployment-validation-operator.v0.6.0
+
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: deployment-validation-operator
+  labels:
+    name: deployment-validation-operator
+  namespace: deployment-validation-operator
+spec:
+  targetNamespaces:
+  - deployment-validation-operator
diff --git a/configs/enable-dvo-for-all-cluster/kustomization.yaml b/configs/enable-dvo-for-all-cluster/kustomization.yaml
new file mode 100644
index 00000000..9b57c29a
--- /dev/null
+++ b/configs/enable-dvo-for-all-cluster/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: deployment-validation-operator
+resources:
+  - install-dvo.yaml
+  - configure-dvo.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-f8fe1b02/development/app-of-apps-development.yaml
281,331d280
<   name: enable-dvo
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: configs/enable-dvo-for-all-cluster
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: enable-dvo-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: deployment-validation-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: configs/enable-dvo-for-all-cluster
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
<           limit: -1
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

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3dece441/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3dece441/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3dece441/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3dece441/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from bbc37b52 to f8fe1b02 on Thu Sep 21 18:16:34 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/has/OWNERS b/components/has/OWNERS
index 9eb9055a..8878f681 100644
--- a/components/has/OWNERS
+++ b/components/has/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
 
@@ -16,6 +15,5 @@ reviewers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 10a0fc7c..6a62a436 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -34,8 +34,6 @@ subjects:
     name: yangcao77
   - kind: User
     name: thepetk
-  - kind: User
-    name: mike-hoang
   - kind: User
     name: michael-valdron
 roleRef:
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index dc2eb2b1..5f863e4f 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -25,9 +25,6 @@ subjects:
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mike-hoang
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: michael-valdron
diff --git a/components/monitoring/grafana/base/dashboards/has/OWNERS b/components/monitoring/grafana/base/dashboards/has/OWNERS
index 9eb9055a..8878f681 100644
--- a/components/monitoring/grafana/base/dashboards/has/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/has/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
 
@@ -16,6 +15,5 @@ reviewers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-bbc37b52/production/components/has/production/kustomize.out.yaml
555a556,558
>   name: mike-hoang
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
591a595,596
> - kind: User
>   name: mike-hoang 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from bbc37b52 to f8fe1b02 on Thu Sep 21 18:16:34 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/has/OWNERS b/components/has/OWNERS
index 9eb9055a..8878f681 100644
--- a/components/has/OWNERS
+++ b/components/has/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
 
@@ -16,6 +15,5 @@ reviewers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 10a0fc7c..6a62a436 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -34,8 +34,6 @@ subjects:
     name: yangcao77
   - kind: User
     name: thepetk
-  - kind: User
-    name: mike-hoang
   - kind: User
     name: michael-valdron
 roleRef:
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index dc2eb2b1..5f863e4f 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -25,9 +25,6 @@ subjects:
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mike-hoang
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: michael-valdron
diff --git a/components/monitoring/grafana/base/dashboards/has/OWNERS b/components/monitoring/grafana/base/dashboards/has/OWNERS
index 9eb9055a..8878f681 100644
--- a/components/monitoring/grafana/base/dashboards/has/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/has/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
 
@@ -16,6 +15,5 @@ reviewers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-bbc37b52/staging/components/has/staging/kustomize.out.yaml
568a569,571
>   name: mike-hoang
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
604a608,609
> - kind: User
>   name: mike-hoang 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from bbc37b52 to f8fe1b02 on Thu Sep 21 18:16:34 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/has/OWNERS b/components/has/OWNERS
index 9eb9055a..8878f681 100644
--- a/components/has/OWNERS
+++ b/components/has/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
 
@@ -16,6 +15,5 @@ reviewers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
diff --git a/components/has/base/rbac/has-admin.yaml b/components/has/base/rbac/has-admin.yaml
index 10a0fc7c..6a62a436 100644
--- a/components/has/base/rbac/has-admin.yaml
+++ b/components/has/base/rbac/has-admin.yaml
@@ -34,8 +34,6 @@ subjects:
     name: yangcao77
   - kind: User
     name: thepetk
-  - kind: User
-    name: mike-hoang
   - kind: User
     name: michael-valdron
 roleRef:
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index dc2eb2b1..5f863e4f 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -25,9 +25,6 @@ subjects:
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: thepetk
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mike-hoang
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: michael-valdron
diff --git a/components/monitoring/grafana/base/dashboards/has/OWNERS b/components/monitoring/grafana/base/dashboards/has/OWNERS
index 9eb9055a..8878f681 100644
--- a/components/monitoring/grafana/base/dashboards/has/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/has/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77
 
@@ -16,6 +15,5 @@ reviewers:
 - kim-tsao
 - maysunfaisal
 - michael-valdron
-- mike-hoang
 - thepetk
 - yangcao77 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-bbc37b52/development/components/has/development/kustomize.out.yaml
549a550,552
>   name: mike-hoang
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
585a589,590
> - kind: User
>   name: mike-hoang 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f8fe1b02/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f8fe1b02/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f8fe1b02/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f8fe1b02/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 2536c68b to bbc37b52 on Thu Sep 21 15:53:23 2023 </h3>  
 
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
<h3>4: Staging changes from 2536c68b to bbc37b52 on Thu Sep 21 15:53:23 2023 </h3>  
 
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
<h3>4: Development changes from 2536c68b to bbc37b52 on Thu Sep 21 15:53:23 2023 </h3>  
 
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
