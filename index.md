# kustomize changes tracked by commits 
### This file generated at Tue Nov 21 00:05:28 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9774664a to 47f53cd9 on Mon Nov 20 19:46:54 2023 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 36dfa53d..de4a34e4 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=945e4babeb79cf90242174f194e11ac2e87f3960
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=1c09614c43e1e50c768b5ddce35e344290e420ff 
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

./commit-47f53cd9/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-47f53cd9/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 9774664a to 47f53cd9 on Mon Nov 20 19:46:54 2023 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 36dfa53d..de4a34e4 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=945e4babeb79cf90242174f194e11ac2e87f3960
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=1c09614c43e1e50c768b5ddce35e344290e420ff 
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

./commit-47f53cd9/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-47f53cd9/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 9774664a to 47f53cd9 on Mon Nov 20 19:46:54 2023 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 36dfa53d..de4a34e4 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=945e4babeb79cf90242174f194e11ac2e87f3960
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=1c09614c43e1e50c768b5ddce35e344290e420ff 
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

./commit-47f53cd9/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-47f53cd9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 4226d0c5 to 9774664a on Mon Nov 20 15:01:49 2023 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f34b2737..3620b84c 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 61e4af02..b72be79b 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 59e2b29f..f0a81cb3 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 7b6ea0d6..b296bffa 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3901737917fa88cc797599322597e0a5dfd0a141
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 4226d0c5 to 9774664a on Mon Nov 20 15:01:49 2023 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f34b2737..3620b84c 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 61e4af02..b72be79b 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 59e2b29f..f0a81cb3 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 7b6ea0d6..b296bffa 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3901737917fa88cc797599322597e0a5dfd0a141
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 4226d0c5 to 9774664a on Mon Nov 20 15:01:49 2023 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f34b2737..3620b84c 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 61e4af02..b72be79b 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 59e2b29f..f0a81cb3 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 7b6ea0d6..b296bffa 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3901737917fa88cc797599322597e0a5dfd0a141
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=6712620a0d217d5ad2135768716477b4c0cf17aa
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
+    newTag: 6712620a0d217d5ad2135768716477b4c0cf17aa
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9774664a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 19451630 to 4226d0c5 on Mon Nov 20 15:01:41 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index 47b590f7..dc4a5208 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b5789bcb91e7c59a97009d1b02c880d2613818bb
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1c09614c43e1e50c768b5ddce35e344290e420ff
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
@@ -10,7 +10,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b5789bcb91e7c59a97009d1b02c880d2613818bb
+  newTag: 1c09614c43e1e50c768b5ddce35e344290e420ff
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-19451630/production/components/integration/kustomize.out.yaml
1100c1100
<         image: quay.io/redhat-appstudio/integration-service:1c09614c43e1e50c768b5ddce35e344290e420ff
---
>         image: quay.io/redhat-appstudio/integration-service:b5789bcb91e7c59a97009d1b02c880d2613818bb 
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

./commit-4226d0c5/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4226d0c5/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 19451630 to 4226d0c5 on Mon Nov 20 15:01:41 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index 47b590f7..dc4a5208 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b5789bcb91e7c59a97009d1b02c880d2613818bb
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1c09614c43e1e50c768b5ddce35e344290e420ff
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
@@ -10,7 +10,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b5789bcb91e7c59a97009d1b02c880d2613818bb
+  newTag: 1c09614c43e1e50c768b5ddce35e344290e420ff
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-19451630/staging/components/integration/kustomize.out.yaml
1100c1100
<         image: quay.io/redhat-appstudio/integration-service:1c09614c43e1e50c768b5ddce35e344290e420ff
---
>         image: quay.io/redhat-appstudio/integration-service:b5789bcb91e7c59a97009d1b02c880d2613818bb 
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

./commit-4226d0c5/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4226d0c5/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 19451630 to 4226d0c5 on Mon Nov 20 15:01:41 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index 47b590f7..dc4a5208 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b5789bcb91e7c59a97009d1b02c880d2613818bb
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1c09614c43e1e50c768b5ddce35e344290e420ff
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
@@ -10,7 +10,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b5789bcb91e7c59a97009d1b02c880d2613818bb
+  newTag: 1c09614c43e1e50c768b5ddce35e344290e420ff
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-19451630/development/components/integration/kustomize.out.yaml
1100c1100
<         image: quay.io/redhat-appstudio/integration-service:1c09614c43e1e50c768b5ddce35e344290e420ff
---
>         image: quay.io/redhat-appstudio/integration-service:b5789bcb91e7c59a97009d1b02c880d2613818bb 
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

./commit-4226d0c5/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-4226d0c5/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 509e0f49 to 19451630 on Mon Nov 20 12:55:11 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index aa56ceff..04ea5665 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -33,6 +33,7 @@ spec:
         - spi-system
         - group-sync-operator
         - build-templates
+        - build-templates-e2e
         - build-service
         - tekton-ci
         - image-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-509e0f49/production/components/cluster-secret-store/production/kustomize.out.yaml
16d15
<     - build-templates-e2e 
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

./commit-19451630/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-19451630/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 509e0f49 to 19451630 on Mon Nov 20 12:55:11 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index aa56ceff..04ea5665 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -33,6 +33,7 @@ spec:
         - spi-system
         - group-sync-operator
         - build-templates
+        - build-templates-e2e
         - build-service
         - tekton-ci
         - image-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-509e0f49/staging/components/cluster-secret-store/staging/kustomize.out.yaml
16d15
<     - build-templates-e2e 
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

./commit-19451630/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-19451630/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 509e0f49 to 19451630 on Mon Nov 20 12:55:11 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index aa56ceff..04ea5665 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -33,6 +33,7 @@ spec:
         - spi-system
         - group-sync-operator
         - build-templates
+        - build-templates-e2e
         - build-service
         - tekton-ci
         - image-controller 
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

./commit-19451630/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-19451630/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>
