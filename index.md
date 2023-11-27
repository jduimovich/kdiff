# kustomize changes tracked by commits 
### This file generated at Mon Nov 27 20:01:50 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b7ac9be6 to cfcaecf2 on Mon Nov 27 14:29:36 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index 0592296e..eea712c1 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -13,6 +13,7 @@ rules:
   - enterprisecontractpolicies
   - environments
   - integrationtestscenarios
+  - internalrequests
   - promotionruns
   - releaseplanadmissions
   - releaseplans 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-b7ac9be6/production/components/authentication/production/kustomize.out.yaml
403d402
<   - internalrequests 
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

./commit-cfcaecf2/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b7ac9be6 to cfcaecf2 on Mon Nov 27 14:29:36 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index 0592296e..eea712c1 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -13,6 +13,7 @@ rules:
   - enterprisecontractpolicies
   - environments
   - integrationtestscenarios
+  - internalrequests
   - promotionruns
   - releaseplanadmissions
   - releaseplans 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-b7ac9be6/staging/components/authentication/staging/kustomize.out.yaml
418d417
<   - internalrequests 
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

./commit-cfcaecf2/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from b7ac9be6 to cfcaecf2 on Mon Nov 27 14:29:36 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index 0592296e..eea712c1 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -13,6 +13,7 @@ rules:
   - enterprisecontractpolicies
   - environments
   - integrationtestscenarios
+  - internalrequests
   - promotionruns
   - releaseplanadmissions
   - releaseplans 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-b7ac9be6/development/components/authentication/development/kustomize.out.yaml
431d430
<   - internalrequests 
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

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-cfcaecf2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 68577fc3 to b7ac9be6 on Mon Nov 27 14:10:41 2023 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/build-templates/base/e2e/kustomization.yaml b/components/build-templates/base/e2e/kustomization.yaml
index 46dd4d91..0ea7fb68 100644
--- a/components/build-templates/base/e2e/kustomization.yaml
+++ b/components/build-templates/base/e2e/kustomization.yaml
@@ -2,7 +2,6 @@ resources:
 - namespace.yaml
 - rolebinding.yaml
 - role.yaml
-- serviceaccount.yaml
 
 namespace: build-templates-e2e
 
diff --git a/components/build-templates/production/kustomization.yaml b/components/build-templates/production/kustomization.yaml
index 018960de..cf51f774 100644
--- a/components/build-templates/production/kustomization.yaml
+++ b/components/build-templates/production/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - ../base
   - e2e-quay-push-secret.yaml
+  - serviceaccount.yaml
diff --git a/components/build-templates/base/e2e/serviceaccount.yaml b/components/build-templates/production/serviceaccount.yaml
similarity index 100%
rename from components/build-templates/base/e2e/serviceaccount.yaml
rename to components/build-templates/production/serviceaccount.yaml
diff --git a/components/build-templates/staging/kustomization.yaml b/components/build-templates/staging/kustomization.yaml
index 018960de..cf51f774 100644
--- a/components/build-templates/staging/kustomization.yaml
+++ b/components/build-templates/staging/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - ../base
   - e2e-quay-push-secret.yaml
+  - serviceaccount.yaml
diff --git a/components/build-templates/staging/serviceaccount.yaml b/components/build-templates/staging/serviceaccount.yaml
new file mode 100644
index 00000000..93d4de83
--- /dev/null
+++ b/components/build-templates/staging/serviceaccount.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: appstudio-pipeline
+secrets:
+  - name: quay-push-secret
+imagePullSecrets:
+  - name: quay-push-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-68577fc3/production/components/build-templates/production/kustomize.out.yaml
21a22
>   namespace: build-templates-e2e 
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

./commit-b7ac9be6/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 68577fc3 to b7ac9be6 on Mon Nov 27 14:10:41 2023 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/build-templates/base/e2e/kustomization.yaml b/components/build-templates/base/e2e/kustomization.yaml
index 46dd4d91..0ea7fb68 100644
--- a/components/build-templates/base/e2e/kustomization.yaml
+++ b/components/build-templates/base/e2e/kustomization.yaml
@@ -2,7 +2,6 @@ resources:
 - namespace.yaml
 - rolebinding.yaml
 - role.yaml
-- serviceaccount.yaml
 
 namespace: build-templates-e2e
 
diff --git a/components/build-templates/production/kustomization.yaml b/components/build-templates/production/kustomization.yaml
index 018960de..cf51f774 100644
--- a/components/build-templates/production/kustomization.yaml
+++ b/components/build-templates/production/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - ../base
   - e2e-quay-push-secret.yaml
+  - serviceaccount.yaml
diff --git a/components/build-templates/base/e2e/serviceaccount.yaml b/components/build-templates/production/serviceaccount.yaml
similarity index 100%
rename from components/build-templates/base/e2e/serviceaccount.yaml
rename to components/build-templates/production/serviceaccount.yaml
diff --git a/components/build-templates/staging/kustomization.yaml b/components/build-templates/staging/kustomization.yaml
index 018960de..cf51f774 100644
--- a/components/build-templates/staging/kustomization.yaml
+++ b/components/build-templates/staging/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - ../base
   - e2e-quay-push-secret.yaml
+  - serviceaccount.yaml
diff --git a/components/build-templates/staging/serviceaccount.yaml b/components/build-templates/staging/serviceaccount.yaml
new file mode 100644
index 00000000..93d4de83
--- /dev/null
+++ b/components/build-templates/staging/serviceaccount.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: appstudio-pipeline
+secrets:
+  - name: quay-push-secret
+imagePullSecrets:
+  - name: quay-push-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-68577fc3/staging/components/build-templates/staging/kustomize.out.yaml
21a22
>   namespace: build-templates-e2e 
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

./commit-b7ac9be6/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 68577fc3 to b7ac9be6 on Mon Nov 27 14:10:41 2023 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/build-templates/base/e2e/kustomization.yaml b/components/build-templates/base/e2e/kustomization.yaml
index 46dd4d91..0ea7fb68 100644
--- a/components/build-templates/base/e2e/kustomization.yaml
+++ b/components/build-templates/base/e2e/kustomization.yaml
@@ -2,7 +2,6 @@ resources:
 - namespace.yaml
 - rolebinding.yaml
 - role.yaml
-- serviceaccount.yaml
 
 namespace: build-templates-e2e
 
diff --git a/components/build-templates/production/kustomization.yaml b/components/build-templates/production/kustomization.yaml
index 018960de..cf51f774 100644
--- a/components/build-templates/production/kustomization.yaml
+++ b/components/build-templates/production/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - ../base
   - e2e-quay-push-secret.yaml
+  - serviceaccount.yaml
diff --git a/components/build-templates/base/e2e/serviceaccount.yaml b/components/build-templates/production/serviceaccount.yaml
similarity index 100%
rename from components/build-templates/base/e2e/serviceaccount.yaml
rename to components/build-templates/production/serviceaccount.yaml
diff --git a/components/build-templates/staging/kustomization.yaml b/components/build-templates/staging/kustomization.yaml
index 018960de..cf51f774 100644
--- a/components/build-templates/staging/kustomization.yaml
+++ b/components/build-templates/staging/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
   - ../base
   - e2e-quay-push-secret.yaml
+  - serviceaccount.yaml
diff --git a/components/build-templates/staging/serviceaccount.yaml b/components/build-templates/staging/serviceaccount.yaml
new file mode 100644
index 00000000..93d4de83
--- /dev/null
+++ b/components/build-templates/staging/serviceaccount.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: appstudio-pipeline
+secrets:
+  - name: quay-push-secret
+imagePullSecrets:
+  - name: quay-push-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-68577fc3/development/components/build-templates/development/kustomize.out.yaml
15a16,25
> apiVersion: v1
> imagePullSecrets:
> - name: quay-push-secret
> kind: ServiceAccount
> metadata:
>   name: appstudio-pipeline
>   namespace: build-templates-e2e
> secrets:
> - name: quay-push-secret
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

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7ac9be6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 9a343b79 to 68577fc3 on Mon Nov 27 14:10:33 2023 </h3>  
 
<details> 
<summary>Git Diff (152 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..5a626c9b
--- /dev/null
+++ b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml b/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml
deleted file mode 100644
index 4bd23351..00000000
--- a/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-m01/kustomization.yaml b/components/backup/production/stone-prd-m01/kustomization.yaml
index 356d4cc0..b2c1cba7 100644
--- a/components/backup/production/stone-prd-m01/kustomization.yaml
+++ b/components/backup/production/stone-prd-m01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-prd-m01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..50f361fd
--- /dev/null
+++ b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml b/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml
deleted file mode 100644
index 68d0ae75..00000000
--- a/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prd-rh01/kustomization.yaml b/components/backup/production/stone-prd-rh01/kustomization.yaml
index 01323418..b2c1cba7 100644
--- a/components/backup/production/stone-prd-rh01/kustomization.yaml
+++ b/components/backup/production/stone-prd-rh01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-prd-rh01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..2cbeba88
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml b/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml
deleted file mode 100644
index 6795dda1..00000000
--- a/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
index 6b0a1509..b2c1cba7 100644
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-m01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-stg-m01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..ed125c4d
--- /dev/null
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml b/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml
deleted file mode 100644
index 0b35615f..00000000
--- a/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/backup/staging/stone-stg-rh01/kustomization.yaml b/components/backup/staging/stone-stg-rh01/kustomization.yaml
index 9bf26cd2..b2c1cba7 100644
--- a/components/backup/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-rh01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-stg-rh01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-9a343b79/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
14,15d13
<       conversionStrategy: Default
<       decodingStrategy: None
./commit-9a343b79/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
14,15d13
<       conversionStrategy: Default
<       decodingStrategy: None 
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

./commit-68577fc3/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 9a343b79 to 68577fc3 on Mon Nov 27 14:10:33 2023 </h3>  
 
<details> 
<summary>Git Diff (152 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..5a626c9b
--- /dev/null
+++ b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml b/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml
deleted file mode 100644
index 4bd23351..00000000
--- a/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-m01/kustomization.yaml b/components/backup/production/stone-prd-m01/kustomization.yaml
index 356d4cc0..b2c1cba7 100644
--- a/components/backup/production/stone-prd-m01/kustomization.yaml
+++ b/components/backup/production/stone-prd-m01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-prd-m01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..50f361fd
--- /dev/null
+++ b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml b/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml
deleted file mode 100644
index 68d0ae75..00000000
--- a/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prd-rh01/kustomization.yaml b/components/backup/production/stone-prd-rh01/kustomization.yaml
index 01323418..b2c1cba7 100644
--- a/components/backup/production/stone-prd-rh01/kustomization.yaml
+++ b/components/backup/production/stone-prd-rh01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-prd-rh01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..2cbeba88
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml b/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml
deleted file mode 100644
index 6795dda1..00000000
--- a/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
index 6b0a1509..b2c1cba7 100644
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-m01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-stg-m01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..ed125c4d
--- /dev/null
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml b/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml
deleted file mode 100644
index 0b35615f..00000000
--- a/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/backup/staging/stone-stg-rh01/kustomization.yaml b/components/backup/staging/stone-stg-rh01/kustomization.yaml
index 9bf26cd2..b2c1cba7 100644
--- a/components/backup/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-rh01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-stg-rh01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-9a343b79/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
14,15d13
<       conversionStrategy: Default
<       decodingStrategy: None
./commit-9a343b79/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
14,15d13
<       conversionStrategy: Default
<       decodingStrategy: None 
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

./commit-68577fc3/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 9a343b79 to 68577fc3 on Mon Nov 27 14:10:33 2023 </h3>  
 
<details> 
<summary>Git Diff (152 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..5a626c9b
--- /dev/null
+++ b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml b/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml
deleted file mode 100644
index 4bd23351..00000000
--- a/components/backup/production/stone-prd-m01/backup-stone-prd-m01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-m01/kustomization.yaml b/components/backup/production/stone-prd-m01/kustomization.yaml
index 356d4cc0..b2c1cba7 100644
--- a/components/backup/production/stone-prd-m01/kustomization.yaml
+++ b/components/backup/production/stone-prd-m01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-prd-m01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..50f361fd
--- /dev/null
+++ b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml b/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml
deleted file mode 100644
index 68d0ae75..00000000
--- a/components/backup/production/stone-prd-rh01/backup-stone-prd-rh01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prd-rh01/kustomization.yaml b/components/backup/production/stone-prd-rh01/kustomization.yaml
index 01323418..b2c1cba7 100644
--- a/components/backup/production/stone-prd-rh01/kustomization.yaml
+++ b/components/backup/production/stone-prd-rh01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-prd-rh01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..2cbeba88
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml b/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml
deleted file mode 100644
index 6795dda1..00000000
--- a/components/backup/staging/stone-stg-m01/backup-stone-stg-m01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
index 6b0a1509..b2c1cba7 100644
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-m01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-stg-m01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..ed125c4d
--- /dev/null
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml b/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml
deleted file mode 100644
index 0b35615f..00000000
--- a/components/backup/staging/stone-stg-rh01/backup-stone-stg-rh01.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: backup-s3-credentials
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/backup/staging/stone-stg-rh01/kustomization.yaml b/components/backup/staging/stone-stg-rh01/kustomization.yaml
index 9bf26cd2..b2c1cba7 100644
--- a/components/backup/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-rh01/kustomization.yaml
@@ -3,4 +3,9 @@ kind: Kustomization
 resources:
   - ../../base/
 patches:
-  - path: backup-stone-stg-rh01.yaml
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml 
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

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-68577fc3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 24599a6e to 9a343b79 on Mon Nov 27 11:42:47 2023 </h3>  
 
<details> 
<summary>Git Diff (497 lines)</summary>  

``` 
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
index aae9cc3a..b77a4a0b 100644
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
@@ -5,9 +5,9 @@ metadata:
   name: gitops-service-gitops-component-maintainers
   namespace: gitops
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jgwest
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/gitops/base/authentication/gitops-clusterroles.yaml b/components/gitops/base/authentication/gitops-clusterroles.yaml
index 69e44884..3872e644 100644
--- a/components/gitops/base/authentication/gitops-clusterroles.yaml
+++ b/components/gitops/base/authentication/gitops-clusterroles.yaml
@@ -3,102 +3,121 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: gitops-component-maintainer
 rules:
+
   - apiGroups:
-      - '*'
+      - apiextensions.k8s.io
+    verbs:
+      - get
+      - list
+      - watch
     resources:
-      - '*'
+      - customresourcedefinitions
+
+  - apiGroups:
+      - rbac.authorization.k8s.io
+    resources:
+      - clusterrolebindings
+      - clusterroles
     verbs:
       - get
       - list
       - watch
 
   - apiGroups:
-      - appstudio.redhat.com
+      - rbac.authorization.k8s.io
     resources:
-      - snapshotenvironmentbindings
+      - rolebindings
+      - roles
     verbs:
-      - delete
+      - get
+      - list
+      - watch
+
 
   - apiGroups:
-    - admissionregistration.k8s.io
+      - ''
+      - 'apps'
     resources:
-    - validatingwebhookconfigurations
-    - mutatingwebhookconfigurations
+      - 'bindings'
+      - 'configmaps'
+      - 'daemonsets'
+      - 'deployments'
+      - 'events'
+      - 'namespaces'
+      - 'nodes'
+      - 'pods'
+      - 'pods/log'
+      - 'replicas'
+      - 'replicasets'
+      - 'routes'
+      - 'secrets'
+      - 'serviceaccounts'
+      - 'services'
+      - 'statefulsets'
     verbs:
-    - list
-    - watch
-    - create
-    - update
-    - patch
-    - delete
+      - 'get'
+      - 'list'
+      - 'watch'
+
 
   - apiGroups:
-      - operators.coreos.com
+      - appstudio.redhat.com
     resources:
-      - installplans
+      - snapshotenvironmentbindings
+    verbs:
+      - delete
+
+  - apiGroups:
+      - admissionregistration.k8s.io
+    resources:
+      - validatingwebhookconfigurations
+      - mutatingwebhookconfigurations
     verbs:
       - get
       - list
-      - update
-      - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-all-access
-rules:
-  - apiGroups:
-      - '*'
+      - watch
+      - delete
+
+  - apiGroups: 
+      - operators.coreos.com
     resources:
-      - '*'
+      - catalogsources
+      - clusterserviceversions
+      - installplans
+      - operatorgroups
+      - subscriptions
     verbs:
-      - '*'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-read-all-access
-rules:
+      - 'get'
+      - 'list'
+      - 'watch'
+
   - apiGroups:
-      - '*'
+      - "toolchain.dev.openshift.com"
     resources:
-      - '*'
+      - "spacerequests"
     verbs:
       - 'get'
       - 'list'
       - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-read-access
-rules:
+
   - apiGroups:
-      - ''
-      - 'apps'
+      - monitoring.coreos.com
     resources:
-      - 'pods'
-      - 'pods/log'
-      - 'deployments'
-      - 'events'
-      - 'bindings'
-      - 'replicas'
-      - 'configmaps'
-      - 'namespaces'
+      - alertmanagers
+      - prometheuses
+      - prometheusrules
+      - servicemonitors
     verbs:
       - 'get'
       - 'list'
       - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-delete-pods-access
-rules:
+
   - apiGroups:
-      - ''
-      - 'apps'
+      - operators.coreos.com
     resources:
-      - 'pods'
+      - installplans
     verbs:
-      - 'delete'
+      - get
+      - list
+      - update
+      - patch
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
new file mode 100644
index 00000000..b8baa3f2
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: gitops
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
new file mode 100644
index 00000000..845f0f1e
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: gitops-service-argocd
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
new file mode 100644
index 00000000..6a75b6f8
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: jgwest-tenant
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
new file mode 100644
index 00000000..00952847
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- gitops-namespace
+- gitops-service-argocd-namespace
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
new file mode 100644
index 00000000..16de7406
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- roles.yaml
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
new file mode 100644
index 00000000..6d6160e8
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
@@ -0,0 +1,61 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-all-access
+rules:
+  - apiGroups:
+      - '*'
+    resources:
+      - '*'
+    verbs:
+      - '*'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-read-all-access
+rules:
+  - apiGroups:
+      - '*'
+    resources:
+      - '*'
+    verbs:
+      - 'get'
+      - 'list'
+      - 'watch'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-read-access
+rules:
+  - apiGroups:
+      - ''
+      - 'apps'
+    resources:
+      - 'pods'
+      - 'pods/log'
+      - 'deployments'
+      - 'events'
+      - 'bindings'
+      - 'replicas'
+      - 'configmaps'
+      - 'namespaces'
+    verbs:
+      - 'get'
+      - 'list'
+      - 'watch'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-delete-pods-access
+rules:
+  - apiGroups:
+      - ''
+      - 'apps'
+    resources:
+      - 'pods'
+    verbs:
+      - 'delete'
diff --git a/components/gitops/base/authentication/kustomization.yaml b/components/gitops/base/authentication/kustomization.yaml
index 5126a16c..4c92317a 100644
--- a/components/gitops/base/authentication/kustomization.yaml
+++ b/components/gitops/base/authentication/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- gitops-namespace-roles
 - gitops-clusterroles.yaml
-- gitops-clusterrolebindings.yaml
\ No newline at end of file
+- gitops-clusterrolebindings.yaml
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
index c64208e8..919f02ba 100644
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
@@ -10,7 +10,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-access
 ---
 kind: RoleBinding
@@ -24,7 +24,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-access
 ---
 kind: RoleBinding
@@ -33,12 +33,9 @@ metadata:
   name: gitops-namespace-all-access
   namespace: gitops
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jgwest
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jannfis
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -50,12 +47,9 @@ metadata:
   name: gitops-service-argocd-namespace-all-access
   namespace: gitops-service-argocd
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jgwest
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jannfis
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
index 574eac2d..e5775334 100644
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
@@ -5,11 +5,11 @@ metadata:
   name: gitops-allow-team-access-to-jgwest-tenant
   namespace: jgwest-tenant
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jgwest
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-all-access
 ---
diff --git a/components/gitops/production/stone-prd-m01/kustomization.yaml b/components/gitops/production/stone-prd-m01/kustomization.yaml
index 047e2d9c..957e5200 100644
--- a/components/gitops/production/stone-prd-m01/kustomization.yaml
+++ b/components/gitops/production/stone-prd-m01/kustomization.yaml
@@ -4,6 +4,7 @@ kind: Kustomization
 resources:
 - ../base
 - gitops-team-member-namespaces.yaml
+- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
 
 patches:
   - path: gitops-service-postgres-rds-config-path.yaml
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
index df9ba1d1..afbf4750 100644
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
@@ -10,7 +10,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-all-access
 ---
 kind: RoleBinding
@@ -24,7 +24,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-all-access
 ---
 kind: RoleBinding
@@ -38,7 +38,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-delete-pods-access
 ---
 kind: RoleBinding
@@ -52,5 +52,5 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-delete-pods-access
\ No newline at end of file
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
index ff36216c..faedb0f6 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
@@ -14,6 +14,6 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-all-access
 ---
diff --git a/components/gitops/staging/stone-stg-m01/kustomization.yaml b/components/gitops/staging/stone-stg-m01/kustomization.yaml
index 047e2d9c..27e25486 100644
--- a/components/gitops/staging/stone-stg-m01/kustomization.yaml
+++ b/components/gitops/staging/stone-stg-m01/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 
 resources:
 - ../base
+- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
 - gitops-team-member-namespaces.yaml
 
 patches: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (754 lines)</summary>  

``` 
./commit-24599a6e/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml
1112,1184d1111
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
1265,1337d1191
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
1374,1438d1227
< kind: Role
< metadata:
<   name: gitops-namespaces-all-access
<   namespace: jgwest-tenant
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
<   name: gitops-namespaces-delete-pods-access
<   namespace: jgwest-tenant
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
<   name: gitops-namespaces-read-access
<   namespace: jgwest-tenant
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
<   name: gitops-namespaces-read-all-access
<   namespace: jgwest-tenant
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
1852,1879c1641
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
---
>   - '*'
1881,1896c1643
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
---
>   - '*'
1913d1659
<   - get
1915a1662,1664
>   - create
>   - update
>   - patch
1920,1950d1668
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
2211a1930,1998
>   name: gitops-namespaces-all-access
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-delete-pods-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-all-access
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2362,2363c2149,2153
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jannfis
2374c2164
<   kind: Role
---
>   kind: ClusterRole
2426,2427c2216,2220
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jannfis
2438c2231
<   kind: Role
---
>   kind: ClusterRole
2468c2261
<   kind: Role
---
>   kind: ClusterRole
2472,2473c2265,2266
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest
2488,2489c2281,2282
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest
./commit-24599a6e/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml
1112,1184d1111
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
1265,1337d1191
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
1787,1814c1641
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
---
>   - '*'
1816,1831c1643
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
---
>   - '*'
1848d1659
<   - get
1850a1662,1664
>   - create
>   - update
>   - patch
1855,1885d1668
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
2146a1930,1998
>   name: gitops-namespaces-all-access
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-delete-pods-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-all-access
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2297,2298c2149,2153
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jannfis
2309c2164
<   kind: Role
---
>   kind: ClusterRole
2361,2362c2216,2220
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jannfis
2373c2231
<   kind: Role
---
>   kind: ClusterRole
2409,2410c2267,2268
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest 
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

./commit-9a343b79/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 24599a6e to 9a343b79 on Mon Nov 27 11:42:47 2023 </h3>  
 
<details> 
<summary>Git Diff (497 lines)</summary>  

``` 
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
index aae9cc3a..b77a4a0b 100644
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
@@ -5,9 +5,9 @@ metadata:
   name: gitops-service-gitops-component-maintainers
   namespace: gitops
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jgwest
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/gitops/base/authentication/gitops-clusterroles.yaml b/components/gitops/base/authentication/gitops-clusterroles.yaml
index 69e44884..3872e644 100644
--- a/components/gitops/base/authentication/gitops-clusterroles.yaml
+++ b/components/gitops/base/authentication/gitops-clusterroles.yaml
@@ -3,102 +3,121 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: gitops-component-maintainer
 rules:
+
   - apiGroups:
-      - '*'
+      - apiextensions.k8s.io
+    verbs:
+      - get
+      - list
+      - watch
     resources:
-      - '*'
+      - customresourcedefinitions
+
+  - apiGroups:
+      - rbac.authorization.k8s.io
+    resources:
+      - clusterrolebindings
+      - clusterroles
     verbs:
       - get
       - list
       - watch
 
   - apiGroups:
-      - appstudio.redhat.com
+      - rbac.authorization.k8s.io
     resources:
-      - snapshotenvironmentbindings
+      - rolebindings
+      - roles
     verbs:
-      - delete
+      - get
+      - list
+      - watch
+
 
   - apiGroups:
-    - admissionregistration.k8s.io
+      - ''
+      - 'apps'
     resources:
-    - validatingwebhookconfigurations
-    - mutatingwebhookconfigurations
+      - 'bindings'
+      - 'configmaps'
+      - 'daemonsets'
+      - 'deployments'
+      - 'events'
+      - 'namespaces'
+      - 'nodes'
+      - 'pods'
+      - 'pods/log'
+      - 'replicas'
+      - 'replicasets'
+      - 'routes'
+      - 'secrets'
+      - 'serviceaccounts'
+      - 'services'
+      - 'statefulsets'
     verbs:
-    - list
-    - watch
-    - create
-    - update
-    - patch
-    - delete
+      - 'get'
+      - 'list'
+      - 'watch'
+
 
   - apiGroups:
-      - operators.coreos.com
+      - appstudio.redhat.com
     resources:
-      - installplans
+      - snapshotenvironmentbindings
+    verbs:
+      - delete
+
+  - apiGroups:
+      - admissionregistration.k8s.io
+    resources:
+      - validatingwebhookconfigurations
+      - mutatingwebhookconfigurations
     verbs:
       - get
       - list
-      - update
-      - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-all-access
-rules:
-  - apiGroups:
-      - '*'
+      - watch
+      - delete
+
+  - apiGroups: 
+      - operators.coreos.com
     resources:
-      - '*'
+      - catalogsources
+      - clusterserviceversions
+      - installplans
+      - operatorgroups
+      - subscriptions
     verbs:
-      - '*'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-read-all-access
-rules:
+      - 'get'
+      - 'list'
+      - 'watch'
+
   - apiGroups:
-      - '*'
+      - "toolchain.dev.openshift.com"
     resources:
-      - '*'
+      - "spacerequests"
     verbs:
       - 'get'
       - 'list'
       - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-read-access
-rules:
+
   - apiGroups:
-      - ''
-      - 'apps'
+      - monitoring.coreos.com
     resources:
-      - 'pods'
-      - 'pods/log'
-      - 'deployments'
-      - 'events'
-      - 'bindings'
-      - 'replicas'
-      - 'configmaps'
-      - 'namespaces'
+      - alertmanagers
+      - prometheuses
+      - prometheusrules
+      - servicemonitors
     verbs:
       - 'get'
       - 'list'
       - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-delete-pods-access
-rules:
+
   - apiGroups:
-      - ''
-      - 'apps'
+      - operators.coreos.com
     resources:
-      - 'pods'
+      - installplans
     verbs:
-      - 'delete'
+      - get
+      - list
+      - update
+      - patch
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
new file mode 100644
index 00000000..b8baa3f2
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: gitops
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
new file mode 100644
index 00000000..845f0f1e
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: gitops-service-argocd
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
new file mode 100644
index 00000000..6a75b6f8
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: jgwest-tenant
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
new file mode 100644
index 00000000..00952847
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- gitops-namespace
+- gitops-service-argocd-namespace
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
new file mode 100644
index 00000000..16de7406
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- roles.yaml
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
new file mode 100644
index 00000000..6d6160e8
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
@@ -0,0 +1,61 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-all-access
+rules:
+  - apiGroups:
+      - '*'
+    resources:
+      - '*'
+    verbs:
+      - '*'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-read-all-access
+rules:
+  - apiGroups:
+      - '*'
+    resources:
+      - '*'
+    verbs:
+      - 'get'
+      - 'list'
+      - 'watch'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-read-access
+rules:
+  - apiGroups:
+      - ''
+      - 'apps'
+    resources:
+      - 'pods'
+      - 'pods/log'
+      - 'deployments'
+      - 'events'
+      - 'bindings'
+      - 'replicas'
+      - 'configmaps'
+      - 'namespaces'
+    verbs:
+      - 'get'
+      - 'list'
+      - 'watch'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-delete-pods-access
+rules:
+  - apiGroups:
+      - ''
+      - 'apps'
+    resources:
+      - 'pods'
+    verbs:
+      - 'delete'
diff --git a/components/gitops/base/authentication/kustomization.yaml b/components/gitops/base/authentication/kustomization.yaml
index 5126a16c..4c92317a 100644
--- a/components/gitops/base/authentication/kustomization.yaml
+++ b/components/gitops/base/authentication/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- gitops-namespace-roles
 - gitops-clusterroles.yaml
-- gitops-clusterrolebindings.yaml
\ No newline at end of file
+- gitops-clusterrolebindings.yaml
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
index c64208e8..919f02ba 100644
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
@@ -10,7 +10,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-access
 ---
 kind: RoleBinding
@@ -24,7 +24,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-access
 ---
 kind: RoleBinding
@@ -33,12 +33,9 @@ metadata:
   name: gitops-namespace-all-access
   namespace: gitops
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jgwest
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jannfis
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -50,12 +47,9 @@ metadata:
   name: gitops-service-argocd-namespace-all-access
   namespace: gitops-service-argocd
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jgwest
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jannfis
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
index 574eac2d..e5775334 100644
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
@@ -5,11 +5,11 @@ metadata:
   name: gitops-allow-team-access-to-jgwest-tenant
   namespace: jgwest-tenant
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jgwest
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-all-access
 ---
diff --git a/components/gitops/production/stone-prd-m01/kustomization.yaml b/components/gitops/production/stone-prd-m01/kustomization.yaml
index 047e2d9c..957e5200 100644
--- a/components/gitops/production/stone-prd-m01/kustomization.yaml
+++ b/components/gitops/production/stone-prd-m01/kustomization.yaml
@@ -4,6 +4,7 @@ kind: Kustomization
 resources:
 - ../base
 - gitops-team-member-namespaces.yaml
+- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
 
 patches:
   - path: gitops-service-postgres-rds-config-path.yaml
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
index df9ba1d1..afbf4750 100644
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
@@ -10,7 +10,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-all-access
 ---
 kind: RoleBinding
@@ -24,7 +24,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-all-access
 ---
 kind: RoleBinding
@@ -38,7 +38,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-delete-pods-access
 ---
 kind: RoleBinding
@@ -52,5 +52,5 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-delete-pods-access
\ No newline at end of file
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
index ff36216c..faedb0f6 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
@@ -14,6 +14,6 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-all-access
 ---
diff --git a/components/gitops/staging/stone-stg-m01/kustomization.yaml b/components/gitops/staging/stone-stg-m01/kustomization.yaml
index 047e2d9c..27e25486 100644
--- a/components/gitops/staging/stone-stg-m01/kustomization.yaml
+++ b/components/gitops/staging/stone-stg-m01/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 
 resources:
 - ../base
+- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
 - gitops-team-member-namespaces.yaml
 
 patches: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (728 lines)</summary>  

``` 
./commit-24599a6e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml
1112,1184d1111
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
1265,1337d1191
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
1374,1438d1227
< kind: Role
< metadata:
<   name: gitops-namespaces-all-access
<   namespace: jgwest-tenant
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
<   name: gitops-namespaces-delete-pods-access
<   namespace: jgwest-tenant
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
<   name: gitops-namespaces-read-access
<   namespace: jgwest-tenant
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
<   name: gitops-namespaces-read-all-access
<   namespace: jgwest-tenant
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
1852,1879c1641
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
---
>   - '*'
1881,1896c1643
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
---
>   - '*'
1913d1659
<   - get
1915a1662,1664
>   - create
>   - update
>   - patch
1920,1950d1668
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
2211a1930,1998
>   name: gitops-namespaces-all-access
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-delete-pods-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-all-access
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2358c2145
<   kind: Role
---
>   kind: ClusterRole
2374c2161
<   kind: Role
---
>   kind: ClusterRole
2422c2209
<   kind: Role
---
>   kind: ClusterRole
2438c2225
<   kind: Role
---
>   kind: ClusterRole
2468c2255
<   kind: Role
---
>   kind: ClusterRole
2488,2489c2275,2276
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest
./commit-24599a6e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml
1112,1184d1111
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
1265,1337d1191
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
1787,1814c1641
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
---
>   - '*'
1816,1831c1643
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
---
>   - '*'
1848d1659
<   - get
1850a1662,1664
>   - create
>   - update
>   - patch
1855,1885d1668
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
2146a1930,1998
>   name: gitops-namespaces-all-access
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-delete-pods-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-access
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
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-namespaces-read-all-access
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
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2293c2145
<   kind: Role
---
>   kind: ClusterRole
2309c2161
<   kind: Role
---
>   kind: ClusterRole
2357c2209
<   kind: Role
---
>   kind: ClusterRole
2373c2225
<   kind: Role
---
>   kind: ClusterRole
2409,2410c2261,2262
<   kind: Group
<   name: GitOps Service Team Admins
---
>   kind: User
>   name: jgwest 
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

./commit-9a343b79/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 24599a6e to 9a343b79 on Mon Nov 27 11:42:47 2023 </h3>  
 
<details> 
<summary>Git Diff (497 lines)</summary>  

``` 
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
index aae9cc3a..b77a4a0b 100644
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
@@ -5,9 +5,9 @@ metadata:
   name: gitops-service-gitops-component-maintainers
   namespace: gitops
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jgwest
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/gitops/base/authentication/gitops-clusterroles.yaml b/components/gitops/base/authentication/gitops-clusterroles.yaml
index 69e44884..3872e644 100644
--- a/components/gitops/base/authentication/gitops-clusterroles.yaml
+++ b/components/gitops/base/authentication/gitops-clusterroles.yaml
@@ -3,102 +3,121 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: gitops-component-maintainer
 rules:
+
   - apiGroups:
-      - '*'
+      - apiextensions.k8s.io
+    verbs:
+      - get
+      - list
+      - watch
     resources:
-      - '*'
+      - customresourcedefinitions
+
+  - apiGroups:
+      - rbac.authorization.k8s.io
+    resources:
+      - clusterrolebindings
+      - clusterroles
     verbs:
       - get
       - list
       - watch
 
   - apiGroups:
-      - appstudio.redhat.com
+      - rbac.authorization.k8s.io
     resources:
-      - snapshotenvironmentbindings
+      - rolebindings
+      - roles
     verbs:
-      - delete
+      - get
+      - list
+      - watch
+
 
   - apiGroups:
-    - admissionregistration.k8s.io
+      - ''
+      - 'apps'
     resources:
-    - validatingwebhookconfigurations
-    - mutatingwebhookconfigurations
+      - 'bindings'
+      - 'configmaps'
+      - 'daemonsets'
+      - 'deployments'
+      - 'events'
+      - 'namespaces'
+      - 'nodes'
+      - 'pods'
+      - 'pods/log'
+      - 'replicas'
+      - 'replicasets'
+      - 'routes'
+      - 'secrets'
+      - 'serviceaccounts'
+      - 'services'
+      - 'statefulsets'
     verbs:
-    - list
-    - watch
-    - create
-    - update
-    - patch
-    - delete
+      - 'get'
+      - 'list'
+      - 'watch'
+
 
   - apiGroups:
-      - operators.coreos.com
+      - appstudio.redhat.com
     resources:
-      - installplans
+      - snapshotenvironmentbindings
+    verbs:
+      - delete
+
+  - apiGroups:
+      - admissionregistration.k8s.io
+    resources:
+      - validatingwebhookconfigurations
+      - mutatingwebhookconfigurations
     verbs:
       - get
       - list
-      - update
-      - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-all-access
-rules:
-  - apiGroups:
-      - '*'
+      - watch
+      - delete
+
+  - apiGroups: 
+      - operators.coreos.com
     resources:
-      - '*'
+      - catalogsources
+      - clusterserviceversions
+      - installplans
+      - operatorgroups
+      - subscriptions
     verbs:
-      - '*'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-read-all-access
-rules:
+      - 'get'
+      - 'list'
+      - 'watch'
+
   - apiGroups:
-      - '*'
+      - "toolchain.dev.openshift.com"
     resources:
-      - '*'
+      - "spacerequests"
     verbs:
       - 'get'
       - 'list'
       - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-read-access
-rules:
+
   - apiGroups:
-      - ''
-      - 'apps'
+      - monitoring.coreos.com
     resources:
-      - 'pods'
-      - 'pods/log'
-      - 'deployments'
-      - 'events'
-      - 'bindings'
-      - 'replicas'
-      - 'configmaps'
-      - 'namespaces'
+      - alertmanagers
+      - prometheuses
+      - prometheusrules
+      - servicemonitors
     verbs:
       - 'get'
       - 'list'
       - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: gitops-namespaces-delete-pods-access
-rules:
+
   - apiGroups:
-      - ''
-      - 'apps'
+      - operators.coreos.com
     resources:
-      - 'pods'
+      - installplans
     verbs:
-      - 'delete'
+      - get
+      - list
+      - update
+      - patch
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
new file mode 100644
index 00000000..b8baa3f2
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: gitops
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
new file mode 100644
index 00000000..845f0f1e
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: gitops-service-argocd
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
new file mode 100644
index 00000000..6a75b6f8
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../roles
+
+namespace: jgwest-tenant
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
new file mode 100644
index 00000000..00952847
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- gitops-namespace
+- gitops-service-argocd-namespace
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
new file mode 100644
index 00000000..16de7406
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- roles.yaml
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
new file mode 100644
index 00000000..6d6160e8
--- /dev/null
+++ b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
@@ -0,0 +1,61 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-all-access
+rules:
+  - apiGroups:
+      - '*'
+    resources:
+      - '*'
+    verbs:
+      - '*'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-read-all-access
+rules:
+  - apiGroups:
+      - '*'
+    resources:
+      - '*'
+    verbs:
+      - 'get'
+      - 'list'
+      - 'watch'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-read-access
+rules:
+  - apiGroups:
+      - ''
+      - 'apps'
+    resources:
+      - 'pods'
+      - 'pods/log'
+      - 'deployments'
+      - 'events'
+      - 'bindings'
+      - 'replicas'
+      - 'configmaps'
+      - 'namespaces'
+    verbs:
+      - 'get'
+      - 'list'
+      - 'watch'
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: gitops-namespaces-delete-pods-access
+rules:
+  - apiGroups:
+      - ''
+      - 'apps'
+    resources:
+      - 'pods'
+    verbs:
+      - 'delete'
diff --git a/components/gitops/base/authentication/kustomization.yaml b/components/gitops/base/authentication/kustomization.yaml
index 5126a16c..4c92317a 100644
--- a/components/gitops/base/authentication/kustomization.yaml
+++ b/components/gitops/base/authentication/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- gitops-namespace-roles
 - gitops-clusterroles.yaml
-- gitops-clusterrolebindings.yaml
\ No newline at end of file
+- gitops-clusterrolebindings.yaml
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
index c64208e8..919f02ba 100644
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
@@ -10,7 +10,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-access
 ---
 kind: RoleBinding
@@ -24,7 +24,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-access
 ---
 kind: RoleBinding
@@ -33,12 +33,9 @@ metadata:
   name: gitops-namespace-all-access
   namespace: gitops
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jgwest
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jannfis
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -50,12 +47,9 @@ metadata:
   name: gitops-service-argocd-namespace-all-access
   namespace: gitops-service-argocd
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jgwest
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jannfis
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
index 574eac2d..e5775334 100644
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
@@ -5,11 +5,11 @@ metadata:
   name: gitops-allow-team-access-to-jgwest-tenant
   namespace: jgwest-tenant
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: jgwest
+    name: GitOps Service Team Admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-all-access
 ---
diff --git a/components/gitops/production/stone-prd-m01/kustomization.yaml b/components/gitops/production/stone-prd-m01/kustomization.yaml
index 047e2d9c..957e5200 100644
--- a/components/gitops/production/stone-prd-m01/kustomization.yaml
+++ b/components/gitops/production/stone-prd-m01/kustomization.yaml
@@ -4,6 +4,7 @@ kind: Kustomization
 resources:
 - ../base
 - gitops-team-member-namespaces.yaml
+- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
 
 patches:
   - path: gitops-service-postgres-rds-config-path.yaml
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
index df9ba1d1..afbf4750 100644
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
@@ -10,7 +10,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-all-access
 ---
 kind: RoleBinding
@@ -24,7 +24,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-read-all-access
 ---
 kind: RoleBinding
@@ -38,7 +38,7 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-delete-pods-access
 ---
 kind: RoleBinding
@@ -52,5 +52,5 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-delete-pods-access
\ No newline at end of file
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
index ff36216c..faedb0f6 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
@@ -14,6 +14,6 @@ subjects:
     name: GitOps Service Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
+  kind: Role
   name: gitops-namespaces-all-access
 ---
diff --git a/components/gitops/staging/stone-stg-m01/kustomization.yaml b/components/gitops/staging/stone-stg-m01/kustomization.yaml
index 047e2d9c..27e25486 100644
--- a/components/gitops/staging/stone-stg-m01/kustomization.yaml
+++ b/components/gitops/staging/stone-stg-m01/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 
 resources:
 - ../base
+- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
 - gitops-team-member-namespaces.yaml
 
 patches: 
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

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9a343b79/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>
