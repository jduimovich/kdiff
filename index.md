# kustomize changes tracked by commits 
### This file generated at Fri Nov  3 04:02:03 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 3322e79f to d5ce8cbb on Thu Nov 2 23:46:04 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 6ac22630..ee2e9792 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,4 +3,9 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: b03b06453a12ca89f74b325150e6dd368a443a19
\ No newline at end of file
+    value: b03b06453a12ca89f74b325150e6dd368a443a19
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value:
+  - name: "USE_IMAGE_SPI"
+    value: "true" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-3322e79f/production/components/jvm-build-service/production/kustomize.out.yaml
1389,1390c1389,1390
<         - name: USE_IMAGE_SPI
<           value: "true"
---
>         - name: IMAGE_TAG
>           value: b03b06453a12ca89f74b325150e6dd368a443a19 
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

./commit-d5ce8cbb/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-d5ce8cbb/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 3322e79f to d5ce8cbb on Thu Nov 2 23:46:04 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 6ac22630..ee2e9792 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,4 +3,9 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: b03b06453a12ca89f74b325150e6dd368a443a19
\ No newline at end of file
+    value: b03b06453a12ca89f74b325150e6dd368a443a19
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value:
+  - name: "USE_IMAGE_SPI"
+    value: "true" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-3322e79f/staging/components/jvm-build-service/staging/kustomize.out.yaml
1389,1390c1389,1390
<         - name: USE_IMAGE_SPI
<           value: "true"
---
>         - name: IMAGE_TAG
>           value: b03b06453a12ca89f74b325150e6dd368a443a19 
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

./commit-d5ce8cbb/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-d5ce8cbb/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 3322e79f to d5ce8cbb on Thu Nov 2 23:46:04 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 6ac22630..ee2e9792 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,4 +3,9 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: b03b06453a12ca89f74b325150e6dd368a443a19
\ No newline at end of file
+    value: b03b06453a12ca89f74b325150e6dd368a443a19
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value:
+  - name: "USE_IMAGE_SPI"
+    value: "true" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-3322e79f/development/components/jvm-build-service/development/kustomize.out.yaml
1389,1390c1389,1390
<         - name: USE_IMAGE_SPI
<           value: "true"
---
>         - name: IMAGE_TAG
>           value: b03b06453a12ca89f74b325150e6dd368a443a19 
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

./commit-d5ce8cbb/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-d5ce8cbb/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from a25dbfd2 to 3322e79f on Thu Nov 2 21:28:59 2023 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 4be145d8..8afce2e9 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -87,12 +87,12 @@ spec:
   endpoints:
   - params:
       'match[]': # scrape only required metrics from in-cluster prometheus
-        - '{__name__="pipelinerun_duration_scheduled_seconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_duration_scheduled_seconds_count", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count", namespace~".*-tenant|tekton-ci"}'
+        - '{__name__="pipelinerun_duration_scheduled_seconds_sum"}'
+        - '{__name__="pipelinerun_duration_scheduled_seconds_count"}'
+        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_sum"}'
+        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count"}'
+        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
+        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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

./commit-3322e79f/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3322e79f/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a25dbfd2 to 3322e79f on Thu Nov 2 21:28:59 2023 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 4be145d8..8afce2e9 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -87,12 +87,12 @@ spec:
   endpoints:
   - params:
       'match[]': # scrape only required metrics from in-cluster prometheus
-        - '{__name__="pipelinerun_duration_scheduled_seconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_duration_scheduled_seconds_count", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count", namespace~".*-tenant|tekton-ci"}'
+        - '{__name__="pipelinerun_duration_scheduled_seconds_sum"}'
+        - '{__name__="pipelinerun_duration_scheduled_seconds_count"}'
+        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_sum"}'
+        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count"}'
+        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
+        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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

./commit-3322e79f/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3322e79f/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a25dbfd2 to 3322e79f on Thu Nov 2 21:28:59 2023 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 4be145d8..8afce2e9 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -87,12 +87,12 @@ spec:
   endpoints:
   - params:
       'match[]': # scrape only required metrics from in-cluster prometheus
-        - '{__name__="pipelinerun_duration_scheduled_seconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_duration_scheduled_seconds_count", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum", namespace~".*-tenant|tekton-ci"}'
-        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count", namespace~".*-tenant|tekton-ci"}'
+        - '{__name__="pipelinerun_duration_scheduled_seconds_sum"}'
+        - '{__name__="pipelinerun_duration_scheduled_seconds_count"}'
+        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_sum"}'
+        - '{__name__="pipelinerun_gap_between_taskruns_milliseconds_count"}'
+        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
+        - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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

./commit-3322e79f/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3322e79f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 53dabaea to a25dbfd2 on Thu Nov 2 15:37:53 2023 </h3>  
 
<details> 
<summary>Git Diff (99 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/README.md b/components/monitoring/prometheus/README.md
index b80a3429..b131470a 100644
--- a/components/monitoring/prometheus/README.md
+++ b/components/monitoring/prometheus/README.md
@@ -56,7 +56,7 @@ Prometheus instance deployed by the RHOBS
 [Observability Operator](https://github.com/rhobs/observability-operator).
 
 #### Platform Prometheus
-Scrapes generic metrics produced by built-in exports such as cAdvisor,
+Mainly scrapes generic metrics produced by built-in exports such as cAdvisor,
 kube-state-metrics, etc.
 
 #### User Workload Monitoring (UWM) Prometheus
@@ -107,7 +107,7 @@ namespaces).
 For those reasons, another instance is needed to federate the other instances, and
 write metrics to RHOBS.
 
-This instance collect selected metrics from Platform Prometheus and UWM Prometheus, and
+This instance collects selected metrics from Platform Prometheus and UWM Prometheus, and
 remote-writes selected labels for those metrics to RHOBS, which in turn, makes the
 metrics accessible to AppSRE Grafana.
 
@@ -115,6 +115,75 @@ This Prometheus instance is deployed using a MonitoringStack custom resource pro
 by the Observability Operator. This operator is installed by default in Production and Staging clusters.  
 In Development clusters, it's not installed by default to prevent conflicts with other deployments. 
 It can be installed and configured in development by using the `--obo/-o` flags.  
-For example:  
+For example:
+
 `./hack/bootstrap-cluster.sh preview --obo`  
 `./hack/bootstrap-cluster.sh preview -o`
+
+#### Federation and Remote-write
+
+Through Federation and remote-write configurations, only a subset of the metrics and
+the labels collected within the data plane clusters reach RHOBS. For that reason, it
+might be that metrics that are visible via the OCP web console (under Observe -->
+Metrics) do not reach RHOBS and are not visible in AppSRE Grafana.
+
+The Platform Prometheus instance monitors a wide variety of resources which are, in
+nature, of an unbound cardinality (e.g. containers, pods, jobs). Consequently, it
+generates a substantial amount of metrics time series that cannot all be forwarded to
+RHOBS. For that reason, we only allow a very small subset of the metrics it scrapes
+to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
+
+The UWM Prometheus instance, on the other hand, generates a very few time series by
+default, and the metrics it is configured to scrape for services are generally of
+constant cardinality. I.e. the number of time series stored for a given service does
+not grow based on the service load. For this reason, we allow all metrics it scrapes
+to be federated by the OBO Prometheus instance (and reach RHOBS).
+
+All **metrics** reaching the OBO instance are remote-written to RHOBS, but not all
+**labels** are. This means that it might be that time series visible in AppSRE Grafana
+will not include some of the labels the same time series have on the data plane
+clusters. The OBO instance is configured to remote-write only specific labels, and if
+the presence of a new label is required in alerting rules or AppSRE Grafana dashboards,
+then this label should be added to the configurations.
+
+##### Troubleshooting Missing Metrics and Labels
+
+There are a few steps to follow when specific metrics or labels are required for new
+alerting rules or Grafana dashboards, but are not present in AppSRE Grafana.
+
+> **_NOTE:_**  While we remote-write the metrics to RHOBS rather than to AppSRE Grafana,
+we don't have an easy way to directly confirm whether metrics are reaching RHOBS or not.
+Instead, we check AppSRE Grafana, assuming no metrics/labels are dropped between RHOBS
+and AppSRE Grafana. Nevertheless, such drops are possible, although far less probable
+comparing to MonitoringStack misconfigurations.
+
+If the metric is missing altogether:
+
+1. Verify that the metric does exist inside its expected cluster of origin by querying
+   for it on the Observe --> Metrics screen on the OCP web console.
+    * If it doesn't, further troubleshoot the service monitor expected to collect the
+      metric and the Kubernetes resource expected to generate it.
+2. While querying for the metric, check the value of its `prometheus` label.
+    * if the value is `openshift-monitoring/k8s`, it means it's being collected by the
+      Platform Prometheus instance. As we only federate specific metrics from this
+      instance, the metric needs to be added to the `match` list under the
+      `appstudio-federate-smon` ServiceMonitor resource within the
+      [MonitoringStack configurations].
+    * if the label value is different, reach out to the o11y team on [Slack][o11y-slack]
+3. Once added, the metric should be federated by the OBO instance and remote-written to
+   RHOBS.
+
+If the metric is present, but labels are missing:
+
+1. Verify that the labels do exist when querying for the metric through the OCP web
+   console.
+    * If not, further troubleshoot the resource that should export or instrument
+      the metric.
+2. Add the missing labels to the `LabelKeep` action's `regex` field within the
+   `MonitoringStack` resource definition in the [MonitoringStack configurations].
+3. Once added, the label should be remote-written by the OBO instance to RHOBS.
+
+For further assistance, reach out to the o11y team on [Slack][o11y-slack].
+
+[MonitoringStack configurations]: base/monitoringstack/monitoringstack.yaml
+[o11y-slack]: https://redhat-internal.slack.com/archives/C04FDFTF8EB 
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

./commit-a25dbfd2/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a25dbfd2/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 53dabaea to a25dbfd2 on Thu Nov 2 15:37:53 2023 </h3>  
 
<details> 
<summary>Git Diff (99 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/README.md b/components/monitoring/prometheus/README.md
index b80a3429..b131470a 100644
--- a/components/monitoring/prometheus/README.md
+++ b/components/monitoring/prometheus/README.md
@@ -56,7 +56,7 @@ Prometheus instance deployed by the RHOBS
 [Observability Operator](https://github.com/rhobs/observability-operator).
 
 #### Platform Prometheus
-Scrapes generic metrics produced by built-in exports such as cAdvisor,
+Mainly scrapes generic metrics produced by built-in exports such as cAdvisor,
 kube-state-metrics, etc.
 
 #### User Workload Monitoring (UWM) Prometheus
@@ -107,7 +107,7 @@ namespaces).
 For those reasons, another instance is needed to federate the other instances, and
 write metrics to RHOBS.
 
-This instance collect selected metrics from Platform Prometheus and UWM Prometheus, and
+This instance collects selected metrics from Platform Prometheus and UWM Prometheus, and
 remote-writes selected labels for those metrics to RHOBS, which in turn, makes the
 metrics accessible to AppSRE Grafana.
 
@@ -115,6 +115,75 @@ This Prometheus instance is deployed using a MonitoringStack custom resource pro
 by the Observability Operator. This operator is installed by default in Production and Staging clusters.  
 In Development clusters, it's not installed by default to prevent conflicts with other deployments. 
 It can be installed and configured in development by using the `--obo/-o` flags.  
-For example:  
+For example:
+
 `./hack/bootstrap-cluster.sh preview --obo`  
 `./hack/bootstrap-cluster.sh preview -o`
+
+#### Federation and Remote-write
+
+Through Federation and remote-write configurations, only a subset of the metrics and
+the labels collected within the data plane clusters reach RHOBS. For that reason, it
+might be that metrics that are visible via the OCP web console (under Observe -->
+Metrics) do not reach RHOBS and are not visible in AppSRE Grafana.
+
+The Platform Prometheus instance monitors a wide variety of resources which are, in
+nature, of an unbound cardinality (e.g. containers, pods, jobs). Consequently, it
+generates a substantial amount of metrics time series that cannot all be forwarded to
+RHOBS. For that reason, we only allow a very small subset of the metrics it scrapes
+to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
+
+The UWM Prometheus instance, on the other hand, generates a very few time series by
+default, and the metrics it is configured to scrape for services are generally of
+constant cardinality. I.e. the number of time series stored for a given service does
+not grow based on the service load. For this reason, we allow all metrics it scrapes
+to be federated by the OBO Prometheus instance (and reach RHOBS).
+
+All **metrics** reaching the OBO instance are remote-written to RHOBS, but not all
+**labels** are. This means that it might be that time series visible in AppSRE Grafana
+will not include some of the labels the same time series have on the data plane
+clusters. The OBO instance is configured to remote-write only specific labels, and if
+the presence of a new label is required in alerting rules or AppSRE Grafana dashboards,
+then this label should be added to the configurations.
+
+##### Troubleshooting Missing Metrics and Labels
+
+There are a few steps to follow when specific metrics or labels are required for new
+alerting rules or Grafana dashboards, but are not present in AppSRE Grafana.
+
+> **_NOTE:_**  While we remote-write the metrics to RHOBS rather than to AppSRE Grafana,
+we don't have an easy way to directly confirm whether metrics are reaching RHOBS or not.
+Instead, we check AppSRE Grafana, assuming no metrics/labels are dropped between RHOBS
+and AppSRE Grafana. Nevertheless, such drops are possible, although far less probable
+comparing to MonitoringStack misconfigurations.
+
+If the metric is missing altogether:
+
+1. Verify that the metric does exist inside its expected cluster of origin by querying
+   for it on the Observe --> Metrics screen on the OCP web console.
+    * If it doesn't, further troubleshoot the service monitor expected to collect the
+      metric and the Kubernetes resource expected to generate it.
+2. While querying for the metric, check the value of its `prometheus` label.
+    * if the value is `openshift-monitoring/k8s`, it means it's being collected by the
+      Platform Prometheus instance. As we only federate specific metrics from this
+      instance, the metric needs to be added to the `match` list under the
+      `appstudio-federate-smon` ServiceMonitor resource within the
+      [MonitoringStack configurations].
+    * if the label value is different, reach out to the o11y team on [Slack][o11y-slack]
+3. Once added, the metric should be federated by the OBO instance and remote-written to
+   RHOBS.
+
+If the metric is present, but labels are missing:
+
+1. Verify that the labels do exist when querying for the metric through the OCP web
+   console.
+    * If not, further troubleshoot the resource that should export or instrument
+      the metric.
+2. Add the missing labels to the `LabelKeep` action's `regex` field within the
+   `MonitoringStack` resource definition in the [MonitoringStack configurations].
+3. Once added, the label should be remote-written by the OBO instance to RHOBS.
+
+For further assistance, reach out to the o11y team on [Slack][o11y-slack].
+
+[MonitoringStack configurations]: base/monitoringstack/monitoringstack.yaml
+[o11y-slack]: https://redhat-internal.slack.com/archives/C04FDFTF8EB 
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

./commit-a25dbfd2/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a25dbfd2/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 53dabaea to a25dbfd2 on Thu Nov 2 15:37:53 2023 </h3>  
 
<details> 
<summary>Git Diff (99 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/README.md b/components/monitoring/prometheus/README.md
index b80a3429..b131470a 100644
--- a/components/monitoring/prometheus/README.md
+++ b/components/monitoring/prometheus/README.md
@@ -56,7 +56,7 @@ Prometheus instance deployed by the RHOBS
 [Observability Operator](https://github.com/rhobs/observability-operator).
 
 #### Platform Prometheus
-Scrapes generic metrics produced by built-in exports such as cAdvisor,
+Mainly scrapes generic metrics produced by built-in exports such as cAdvisor,
 kube-state-metrics, etc.
 
 #### User Workload Monitoring (UWM) Prometheus
@@ -107,7 +107,7 @@ namespaces).
 For those reasons, another instance is needed to federate the other instances, and
 write metrics to RHOBS.
 
-This instance collect selected metrics from Platform Prometheus and UWM Prometheus, and
+This instance collects selected metrics from Platform Prometheus and UWM Prometheus, and
 remote-writes selected labels for those metrics to RHOBS, which in turn, makes the
 metrics accessible to AppSRE Grafana.
 
@@ -115,6 +115,75 @@ This Prometheus instance is deployed using a MonitoringStack custom resource pro
 by the Observability Operator. This operator is installed by default in Production and Staging clusters.  
 In Development clusters, it's not installed by default to prevent conflicts with other deployments. 
 It can be installed and configured in development by using the `--obo/-o` flags.  
-For example:  
+For example:
+
 `./hack/bootstrap-cluster.sh preview --obo`  
 `./hack/bootstrap-cluster.sh preview -o`
+
+#### Federation and Remote-write
+
+Through Federation and remote-write configurations, only a subset of the metrics and
+the labels collected within the data plane clusters reach RHOBS. For that reason, it
+might be that metrics that are visible via the OCP web console (under Observe -->
+Metrics) do not reach RHOBS and are not visible in AppSRE Grafana.
+
+The Platform Prometheus instance monitors a wide variety of resources which are, in
+nature, of an unbound cardinality (e.g. containers, pods, jobs). Consequently, it
+generates a substantial amount of metrics time series that cannot all be forwarded to
+RHOBS. For that reason, we only allow a very small subset of the metrics it scrapes
+to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
+
+The UWM Prometheus instance, on the other hand, generates a very few time series by
+default, and the metrics it is configured to scrape for services are generally of
+constant cardinality. I.e. the number of time series stored for a given service does
+not grow based on the service load. For this reason, we allow all metrics it scrapes
+to be federated by the OBO Prometheus instance (and reach RHOBS).
+
+All **metrics** reaching the OBO instance are remote-written to RHOBS, but not all
+**labels** are. This means that it might be that time series visible in AppSRE Grafana
+will not include some of the labels the same time series have on the data plane
+clusters. The OBO instance is configured to remote-write only specific labels, and if
+the presence of a new label is required in alerting rules or AppSRE Grafana dashboards,
+then this label should be added to the configurations.
+
+##### Troubleshooting Missing Metrics and Labels
+
+There are a few steps to follow when specific metrics or labels are required for new
+alerting rules or Grafana dashboards, but are not present in AppSRE Grafana.
+
+> **_NOTE:_**  While we remote-write the metrics to RHOBS rather than to AppSRE Grafana,
+we don't have an easy way to directly confirm whether metrics are reaching RHOBS or not.
+Instead, we check AppSRE Grafana, assuming no metrics/labels are dropped between RHOBS
+and AppSRE Grafana. Nevertheless, such drops are possible, although far less probable
+comparing to MonitoringStack misconfigurations.
+
+If the metric is missing altogether:
+
+1. Verify that the metric does exist inside its expected cluster of origin by querying
+   for it on the Observe --> Metrics screen on the OCP web console.
+    * If it doesn't, further troubleshoot the service monitor expected to collect the
+      metric and the Kubernetes resource expected to generate it.
+2. While querying for the metric, check the value of its `prometheus` label.
+    * if the value is `openshift-monitoring/k8s`, it means it's being collected by the
+      Platform Prometheus instance. As we only federate specific metrics from this
+      instance, the metric needs to be added to the `match` list under the
+      `appstudio-federate-smon` ServiceMonitor resource within the
+      [MonitoringStack configurations].
+    * if the label value is different, reach out to the o11y team on [Slack][o11y-slack]
+3. Once added, the metric should be federated by the OBO instance and remote-written to
+   RHOBS.
+
+If the metric is present, but labels are missing:
+
+1. Verify that the labels do exist when querying for the metric through the OCP web
+   console.
+    * If not, further troubleshoot the resource that should export or instrument
+      the metric.
+2. Add the missing labels to the `LabelKeep` action's `regex` field within the
+   `MonitoringStack` resource definition in the [MonitoringStack configurations].
+3. Once added, the label should be remote-written by the OBO instance to RHOBS.
+
+For further assistance, reach out to the o11y team on [Slack][o11y-slack].
+
+[MonitoringStack configurations]: base/monitoringstack/monitoringstack.yaml
+[o11y-slack]: https://redhat-internal.slack.com/archives/C04FDFTF8EB 
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

./commit-a25dbfd2/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-a25dbfd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 98c11e30 to 53dabaea on Thu Nov 2 12:11:50 2023 </h3>  
 
<details> 
<summary>Git Diff (429 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/quality-dashboard/kustomization.yaml b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
deleted file mode 100644
index 1c96767e..00000000
--- a/argo-cd-apps/base/quality-dashboard/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- quality-dashboard.yaml
-components:
-  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
deleted file mode 100644
index bb41503e..00000000
--- a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              selector:
-                matchLabels:
-                  appstudio.redhat.com/quality-dashboard: "true"
-              values:
-                sourceRoot: components/quality-dashboard
-                environment: staging
-                clusterDir: ""
-          - list:
-              elements: []
-  template:
-    metadata:
-      name: quality-dashboard-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: quality-dashboard
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 0796114b..c171a92f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -7,12 +7,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: monitoring-workload-logging
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5c9c8533..ccf7c7cb 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -7,7 +7,6 @@ resources:
   - ../../base/member
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
-  - ../../base/quality-dashboard
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -53,11 +52,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: dora-metrics
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: quality-dashboard
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
index e23fe3fc..56f05e5b 100644
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging/kustomization.yaml
@@ -4,4 +4,3 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
-  - ../../base/quality-dashboard
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index ca5cc4d7..aa56ceff 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -30,7 +30,6 @@ spec:
         - dora-metrics
         - application-service
         - appstudio-workload-monitoring
-        - quality-dashboard
         - spi-system
         - group-sync-operator
         - build-templates
diff --git a/components/quality-dashboard/OWNERS b/components/quality-dashboard/OWNERS
deleted file mode 100644
index 113a2850..00000000
--- a/components/quality-dashboard/OWNERS
+++ /dev/null
@@ -1,7 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- sawood14012
-- rhopp
-- jkopriva
-- flacatus
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
deleted file mode 100644
index 903288bf..00000000
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=7ae2771229454e513c8df6296408d621eb14e7c1
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-
-images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-backend
-    newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 7ae2771229454e513c8df6296408d621eb14e7c1
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
deleted file mode 100644
index 6cf79f03..00000000
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e6ba5d09f498ecbec82596eead2a3589f770865b
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-configMapGenerator:
-- name: quality-dashboard-configmap
-  literals:
-  - BACKEND_ROUTE=https://quality-backend-route-quality-dashboard.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
-
-images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: e6ba5d09f498ecbec82596eead2a3589f770865b
diff --git a/components/quality-dashboard/base/kustomization.yaml b/components/quality-dashboard/base/kustomization.yaml
deleted file mode 100644
index 15dc274a..00000000
--- a/components/quality-dashboard/base/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-resources:
-  - backend/
-  - frontend/
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/components/quality-dashboard/base/rbac/kustomization.yaml b/components/quality-dashboard/base/rbac/kustomization.yaml
deleted file mode 100644
index 005f8b7b..00000000
--- a/components/quality-dashboard/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - quality-dashboard.yaml
diff --git a/components/quality-dashboard/base/rbac/quality-dashboard.yaml b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
deleted file mode 100644
index 13be6b4c..00000000
--- a/components/quality-dashboard/base/rbac/quality-dashboard.yaml
+++ /dev/null
@@ -1,38 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: quality-dashboard-maintainer
-  namespace: quality-dashboard
-rules:
-  - verbs:
-      - create
-      - delete
-      - edit
-      - list
-    apiGroups:
-      - ''
-    resources:
-      - secrets
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: quality-dashboard-maintainers
-  namespace: quality-dashboard
-subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: rhopp
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: flacatus
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jkopriva
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sawood14012
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: quality-dashboard-maintainer
diff --git a/components/quality-dashboard/development/kustomization.yaml b/components/quality-dashboard/development/kustomization.yaml
deleted file mode 100644
index bdf7ce4f..00000000
--- a/components/quality-dashboard/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
deleted file mode 100644
index 9e8ba6fc..00000000
--- a/components/quality-dashboard/staging/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- quality-dashboard-secrets.yaml
-- quality-dashboard-auth.yaml
-namespace: quality-dashboard
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
deleted file mode 100644
index 7cf1ff44..00000000
--- a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quality-dashboard-auth
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/qe/quality-dashboard-auth
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quality-dashboard-auth
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
deleted file mode 100644
index ed8a09ec..00000000
--- a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quality-dashboard-secrets
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/qe/quality-dashboard-secrets
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quality-dashboard-secrets
diff --git a/components/quality-dashboard/staging/kustomization.yaml b/components/quality-dashboard/staging/kustomization.yaml
deleted file mode 100644
index 6f10c102..00000000
--- a/components/quality-dashboard/staging/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
-- external-secrets
-- ../base/rbac
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index eec61118..6ded4a27 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -53,7 +53,5 @@ docs-en:
         url: /components/monitoring/grafana/README.html
   - title: Misc
     children:
-      - title: Quality Dashboard
-        url: /docs/misc/quality-dashboard.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
deleted file mode 100644
index c2561b58..00000000
--- a/docs/misc/quality-dashboard.md
+++ /dev/null
@@ -1,10 +0,0 @@
----
-title: Quality Dashboard
----
-
-The purpose of the Quality Dashboard is to provide information that indicates the quality
-of the different StoneSoup services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
-
-The manifests can be found [here](../../components/quality-dashboard/)
-
-By default the frontend is using StoneSoup Staging cluster for backend. If you want to use backend on your cluster you need to set secrets for `rds-endpoint`, `POSTGRES_PASSWORD` and `github-token` in `quality-dashboard` namespace and also push `components/quality-dashboard/frontend/kustomization.yaml`(the route to backend is changed by script `hack/util-set-quality-dashboard-backend-route.sh` in development and preview cluster modes).
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index 24d16156..c5827b15 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -4,7 +4,6 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 
 main() {
     load_global_vars
-    "${ROOT}/secret-creator/create-quality-dashboard-secrets.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index 38a9f8fe..a5509b67 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -31,17 +31,17 @@ echo
 echo "Remove RBAC for OpenShift GitOps:"
 kubectl delete -k $ROOT/openshift-gitops/base/cluster-rbac
 
-echo 
+echo
 echo "Remove the OpenShift GitOps operator subscription:"
 kubectl delete -f $ROOT/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
 
-echo 
+echo
 echo "Removing operators and operands:"
 oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operators
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
+oc delete project enterprise-contract-service gitops internal-services application-api
 
 echo
 echo "Removing dev-sso"
@@ -53,5 +53,5 @@ rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
 make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup
 
-echo 
+echo
 echo "Complete."
diff --git a/hack/secret-creator/create-quality-dashboard-secrets.sh b/hack/secret-creator/create-quality-dashboard-secrets.sh
deleted file mode 100755
index 0fa427b7..00000000
--- a/hack/secret-creator/create-quality-dashboard-secrets.sh
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/bash -e
-
-
-main() {
-    echo "Setting secrets for Quality Dashboard"
-    kubectl create namespace quality-dashboard -o yaml --dry-run=client | oc apply -f-
-    if ! kubectl get secret -n quality-dashboard quality-dashboard-secrets &>/dev/null; then
-        kubectl create secret generic quality-dashboard-secrets \
-            --namespace=quality-dashboard \
-            --from-literal=rds-endpoint=REPLACE_WITH_RDS_ENDPOINT \
-            --from-literal=storage-user=postgres \
-            --from-literal=storage-password=REPLACE_DB_PASSWORD \
-            --from-literal=storage-database=quality \
-            --from-literal=github-token=REPLACE_GITHUB_TOKEN \
-            --from-literal=jira-token=REPLACE_JIRA_TOKEN
-    fi
-    if ! kubectl get secret -n quality-dashboard quality-dashboard-auth &>/dev/null; then
-        kubectl create secret generic quality-dashboard-auth \
-            --namespace=quality-dashboard \
-            --from-literal=users.htpasswd=NOUSER
-    fi
-}
-
-if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
-    main "$@"
-fi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-98c11e30/production/components/cluster-secret-store/production/kustomize.out.yaml
12a13
>     - quality-dashboard 
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

./commit-53dabaea/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-53dabaea/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 98c11e30 to 53dabaea on Thu Nov 2 12:11:50 2023 </h3>  
 
<details> 
<summary>Git Diff (429 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/quality-dashboard/kustomization.yaml b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
deleted file mode 100644
index 1c96767e..00000000
--- a/argo-cd-apps/base/quality-dashboard/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- quality-dashboard.yaml
-components:
-  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
deleted file mode 100644
index bb41503e..00000000
--- a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              selector:
-                matchLabels:
-                  appstudio.redhat.com/quality-dashboard: "true"
-              values:
-                sourceRoot: components/quality-dashboard
-                environment: staging
-                clusterDir: ""
-          - list:
-              elements: []
-  template:
-    metadata:
-      name: quality-dashboard-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: quality-dashboard
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 0796114b..c171a92f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -7,12 +7,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: monitoring-workload-logging
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5c9c8533..ccf7c7cb 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -7,7 +7,6 @@ resources:
   - ../../base/member
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
-  - ../../base/quality-dashboard
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -53,11 +52,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: dora-metrics
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: quality-dashboard
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
index e23fe3fc..56f05e5b 100644
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging/kustomization.yaml
@@ -4,4 +4,3 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
-  - ../../base/quality-dashboard
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index ca5cc4d7..aa56ceff 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -30,7 +30,6 @@ spec:
         - dora-metrics
         - application-service
         - appstudio-workload-monitoring
-        - quality-dashboard
         - spi-system
         - group-sync-operator
         - build-templates
diff --git a/components/quality-dashboard/OWNERS b/components/quality-dashboard/OWNERS
deleted file mode 100644
index 113a2850..00000000
--- a/components/quality-dashboard/OWNERS
+++ /dev/null
@@ -1,7 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- sawood14012
-- rhopp
-- jkopriva
-- flacatus
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
deleted file mode 100644
index 903288bf..00000000
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=7ae2771229454e513c8df6296408d621eb14e7c1
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-
-images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-backend
-    newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 7ae2771229454e513c8df6296408d621eb14e7c1
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
deleted file mode 100644
index 6cf79f03..00000000
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e6ba5d09f498ecbec82596eead2a3589f770865b
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-configMapGenerator:
-- name: quality-dashboard-configmap
-  literals:
-  - BACKEND_ROUTE=https://quality-backend-route-quality-dashboard.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
-
-images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: e6ba5d09f498ecbec82596eead2a3589f770865b
diff --git a/components/quality-dashboard/base/kustomization.yaml b/components/quality-dashboard/base/kustomization.yaml
deleted file mode 100644
index 15dc274a..00000000
--- a/components/quality-dashboard/base/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-resources:
-  - backend/
-  - frontend/
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/components/quality-dashboard/base/rbac/kustomization.yaml b/components/quality-dashboard/base/rbac/kustomization.yaml
deleted file mode 100644
index 005f8b7b..00000000
--- a/components/quality-dashboard/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - quality-dashboard.yaml
diff --git a/components/quality-dashboard/base/rbac/quality-dashboard.yaml b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
deleted file mode 100644
index 13be6b4c..00000000
--- a/components/quality-dashboard/base/rbac/quality-dashboard.yaml
+++ /dev/null
@@ -1,38 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: quality-dashboard-maintainer
-  namespace: quality-dashboard
-rules:
-  - verbs:
-      - create
-      - delete
-      - edit
-      - list
-    apiGroups:
-      - ''
-    resources:
-      - secrets
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: quality-dashboard-maintainers
-  namespace: quality-dashboard
-subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: rhopp
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: flacatus
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jkopriva
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sawood14012
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: quality-dashboard-maintainer
diff --git a/components/quality-dashboard/development/kustomization.yaml b/components/quality-dashboard/development/kustomization.yaml
deleted file mode 100644
index bdf7ce4f..00000000
--- a/components/quality-dashboard/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
deleted file mode 100644
index 9e8ba6fc..00000000
--- a/components/quality-dashboard/staging/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- quality-dashboard-secrets.yaml
-- quality-dashboard-auth.yaml
-namespace: quality-dashboard
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
deleted file mode 100644
index 7cf1ff44..00000000
--- a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quality-dashboard-auth
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/qe/quality-dashboard-auth
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quality-dashboard-auth
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
deleted file mode 100644
index ed8a09ec..00000000
--- a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quality-dashboard-secrets
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/qe/quality-dashboard-secrets
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quality-dashboard-secrets
diff --git a/components/quality-dashboard/staging/kustomization.yaml b/components/quality-dashboard/staging/kustomization.yaml
deleted file mode 100644
index 6f10c102..00000000
--- a/components/quality-dashboard/staging/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
-- external-secrets
-- ../base/rbac
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index eec61118..6ded4a27 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -53,7 +53,5 @@ docs-en:
         url: /components/monitoring/grafana/README.html
   - title: Misc
     children:
-      - title: Quality Dashboard
-        url: /docs/misc/quality-dashboard.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
deleted file mode 100644
index c2561b58..00000000
--- a/docs/misc/quality-dashboard.md
+++ /dev/null
@@ -1,10 +0,0 @@
----
-title: Quality Dashboard
----
-
-The purpose of the Quality Dashboard is to provide information that indicates the quality
-of the different StoneSoup services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
-
-The manifests can be found [here](../../components/quality-dashboard/)
-
-By default the frontend is using StoneSoup Staging cluster for backend. If you want to use backend on your cluster you need to set secrets for `rds-endpoint`, `POSTGRES_PASSWORD` and `github-token` in `quality-dashboard` namespace and also push `components/quality-dashboard/frontend/kustomization.yaml`(the route to backend is changed by script `hack/util-set-quality-dashboard-backend-route.sh` in development and preview cluster modes).
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index 24d16156..c5827b15 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -4,7 +4,6 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 
 main() {
     load_global_vars
-    "${ROOT}/secret-creator/create-quality-dashboard-secrets.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index 38a9f8fe..a5509b67 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -31,17 +31,17 @@ echo
 echo "Remove RBAC for OpenShift GitOps:"
 kubectl delete -k $ROOT/openshift-gitops/base/cluster-rbac
 
-echo 
+echo
 echo "Remove the OpenShift GitOps operator subscription:"
 kubectl delete -f $ROOT/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
 
-echo 
+echo
 echo "Removing operators and operands:"
 oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operators
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
+oc delete project enterprise-contract-service gitops internal-services application-api
 
 echo
 echo "Removing dev-sso"
@@ -53,5 +53,5 @@ rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
 make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup
 
-echo 
+echo
 echo "Complete."
diff --git a/hack/secret-creator/create-quality-dashboard-secrets.sh b/hack/secret-creator/create-quality-dashboard-secrets.sh
deleted file mode 100755
index 0fa427b7..00000000
--- a/hack/secret-creator/create-quality-dashboard-secrets.sh
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/bash -e
-
-
-main() {
-    echo "Setting secrets for Quality Dashboard"
-    kubectl create namespace quality-dashboard -o yaml --dry-run=client | oc apply -f-
-    if ! kubectl get secret -n quality-dashboard quality-dashboard-secrets &>/dev/null; then
-        kubectl create secret generic quality-dashboard-secrets \
-            --namespace=quality-dashboard \
-            --from-literal=rds-endpoint=REPLACE_WITH_RDS_ENDPOINT \
-            --from-literal=storage-user=postgres \
-            --from-literal=storage-password=REPLACE_DB_PASSWORD \
-            --from-literal=storage-database=quality \
-            --from-literal=github-token=REPLACE_GITHUB_TOKEN \
-            --from-literal=jira-token=REPLACE_JIRA_TOKEN
-    fi
-    if ! kubectl get secret -n quality-dashboard quality-dashboard-auth &>/dev/null; then
-        kubectl create secret generic quality-dashboard-auth \
-            --namespace=quality-dashboard \
-            --from-literal=users.htpasswd=NOUSER
-    fi
-}
-
-if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
-    main "$@"
-fi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (51 lines)</summary>  

``` 
./commit-98c11e30/staging/app-of-apps-staging.yaml
1446a1447,1491
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: quality-dashboard
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/quality-dashboard: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/quality-dashboard
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: quality-dashboard-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: quality-dashboard
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
./commit-98c11e30/staging/components/cluster-secret-store/staging/kustomize.out.yaml
12a13
>     - quality-dashboard
./commit-98c11e30/staging/components: quality-dashboard 
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

./commit-53dabaea/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-53dabaea/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 98c11e30 to 53dabaea on Thu Nov 2 12:11:50 2023 </h3>  
 
<details> 
<summary>Git Diff (429 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/quality-dashboard/kustomization.yaml b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
deleted file mode 100644
index 1c96767e..00000000
--- a/argo-cd-apps/base/quality-dashboard/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- quality-dashboard.yaml
-components:
-  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
deleted file mode 100644
index bb41503e..00000000
--- a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              selector:
-                matchLabels:
-                  appstudio.redhat.com/quality-dashboard: "true"
-              values:
-                sourceRoot: components/quality-dashboard
-                environment: staging
-                clusterDir: ""
-          - list:
-              elements: []
-  template:
-    metadata:
-      name: quality-dashboard-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: quality-dashboard
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 0796114b..c171a92f 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -7,12 +7,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: quality-dashboard
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: monitoring-workload-logging
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5c9c8533..ccf7c7cb 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -7,7 +7,6 @@ resources:
   - ../../base/member
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
-  - ../../base/quality-dashboard
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -53,11 +52,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: dora-metrics
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: quality-dashboard
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
index e23fe3fc..56f05e5b 100644
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging/kustomization.yaml
@@ -4,4 +4,3 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
-  - ../../base/quality-dashboard
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index ca5cc4d7..aa56ceff 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -30,7 +30,6 @@ spec:
         - dora-metrics
         - application-service
         - appstudio-workload-monitoring
-        - quality-dashboard
         - spi-system
         - group-sync-operator
         - build-templates
diff --git a/components/quality-dashboard/OWNERS b/components/quality-dashboard/OWNERS
deleted file mode 100644
index 113a2850..00000000
--- a/components/quality-dashboard/OWNERS
+++ /dev/null
@@ -1,7 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- sawood14012
-- rhopp
-- jkopriva
-- flacatus
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
deleted file mode 100644
index 903288bf..00000000
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=7ae2771229454e513c8df6296408d621eb14e7c1
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-
-images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-backend
-    newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 7ae2771229454e513c8df6296408d621eb14e7c1
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
deleted file mode 100644
index 6cf79f03..00000000
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e6ba5d09f498ecbec82596eead2a3589f770865b
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-configMapGenerator:
-- name: quality-dashboard-configmap
-  literals:
-  - BACKEND_ROUTE=https://quality-backend-route-quality-dashboard.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
-
-images:
-  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: e6ba5d09f498ecbec82596eead2a3589f770865b
diff --git a/components/quality-dashboard/base/kustomization.yaml b/components/quality-dashboard/base/kustomization.yaml
deleted file mode 100644
index 15dc274a..00000000
--- a/components/quality-dashboard/base/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-resources:
-  - backend/
-  - frontend/
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/components/quality-dashboard/base/rbac/kustomization.yaml b/components/quality-dashboard/base/rbac/kustomization.yaml
deleted file mode 100644
index 005f8b7b..00000000
--- a/components/quality-dashboard/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - quality-dashboard.yaml
diff --git a/components/quality-dashboard/base/rbac/quality-dashboard.yaml b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
deleted file mode 100644
index 13be6b4c..00000000
--- a/components/quality-dashboard/base/rbac/quality-dashboard.yaml
+++ /dev/null
@@ -1,38 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: quality-dashboard-maintainer
-  namespace: quality-dashboard
-rules:
-  - verbs:
-      - create
-      - delete
-      - edit
-      - list
-    apiGroups:
-      - ''
-    resources:
-      - secrets
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: quality-dashboard-maintainers
-  namespace: quality-dashboard
-subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: rhopp
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: flacatus
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jkopriva
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sawood14012
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: quality-dashboard-maintainer
diff --git a/components/quality-dashboard/development/kustomization.yaml b/components/quality-dashboard/development/kustomization.yaml
deleted file mode 100644
index bdf7ce4f..00000000
--- a/components/quality-dashboard/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
deleted file mode 100644
index 9e8ba6fc..00000000
--- a/components/quality-dashboard/staging/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- quality-dashboard-secrets.yaml
-- quality-dashboard-auth.yaml
-namespace: quality-dashboard
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
deleted file mode 100644
index 7cf1ff44..00000000
--- a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quality-dashboard-auth
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/qe/quality-dashboard-auth
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quality-dashboard-auth
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
deleted file mode 100644
index ed8a09ec..00000000
--- a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quality-dashboard-secrets
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/qe/quality-dashboard-secrets
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quality-dashboard-secrets
diff --git a/components/quality-dashboard/staging/kustomization.yaml b/components/quality-dashboard/staging/kustomization.yaml
deleted file mode 100644
index 6f10c102..00000000
--- a/components/quality-dashboard/staging/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
-- external-secrets
-- ../base/rbac
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index eec61118..6ded4a27 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -53,7 +53,5 @@ docs-en:
         url: /components/monitoring/grafana/README.html
   - title: Misc
     children:
-      - title: Quality Dashboard
-        url: /docs/misc/quality-dashboard.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
deleted file mode 100644
index c2561b58..00000000
--- a/docs/misc/quality-dashboard.md
+++ /dev/null
@@ -1,10 +0,0 @@
----
-title: Quality Dashboard
----
-
-The purpose of the Quality Dashboard is to provide information that indicates the quality
-of the different StoneSoup services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
-
-The manifests can be found [here](../../components/quality-dashboard/)
-
-By default the frontend is using StoneSoup Staging cluster for backend. If you want to use backend on your cluster you need to set secrets for `rds-endpoint`, `POSTGRES_PASSWORD` and `github-token` in `quality-dashboard` namespace and also push `components/quality-dashboard/frontend/kustomization.yaml`(the route to backend is changed by script `hack/util-set-quality-dashboard-backend-route.sh` in development and preview cluster modes).
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index 24d16156..c5827b15 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -4,7 +4,6 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 
 main() {
     load_global_vars
-    "${ROOT}/secret-creator/create-quality-dashboard-secrets.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index 38a9f8fe..a5509b67 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -31,17 +31,17 @@ echo
 echo "Remove RBAC for OpenShift GitOps:"
 kubectl delete -k $ROOT/openshift-gitops/base/cluster-rbac
 
-echo 
+echo
 echo "Remove the OpenShift GitOps operator subscription:"
 kubectl delete -f $ROOT/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
 
-echo 
+echo
 echo "Removing operators and operands:"
 oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operators
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
+oc delete project enterprise-contract-service gitops internal-services application-api
 
 echo
 echo "Removing dev-sso"
@@ -53,5 +53,5 @@ rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
 make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup
 
-echo 
+echo
 echo "Complete."
diff --git a/hack/secret-creator/create-quality-dashboard-secrets.sh b/hack/secret-creator/create-quality-dashboard-secrets.sh
deleted file mode 100755
index 0fa427b7..00000000
--- a/hack/secret-creator/create-quality-dashboard-secrets.sh
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/bash -e
-
-
-main() {
-    echo "Setting secrets for Quality Dashboard"
-    kubectl create namespace quality-dashboard -o yaml --dry-run=client | oc apply -f-
-    if ! kubectl get secret -n quality-dashboard quality-dashboard-secrets &>/dev/null; then
-        kubectl create secret generic quality-dashboard-secrets \
-            --namespace=quality-dashboard \
-            --from-literal=rds-endpoint=REPLACE_WITH_RDS_ENDPOINT \
-            --from-literal=storage-user=postgres \
-            --from-literal=storage-password=REPLACE_DB_PASSWORD \
-            --from-literal=storage-database=quality \
-            --from-literal=github-token=REPLACE_GITHUB_TOKEN \
-            --from-literal=jira-token=REPLACE_JIRA_TOKEN
-    fi
-    if ! kubectl get secret -n quality-dashboard quality-dashboard-auth &>/dev/null; then
-        kubectl create secret generic quality-dashboard-auth \
-            --namespace=quality-dashboard \
-            --from-literal=users.htpasswd=NOUSER
-    fi
-}
-
-if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
-    main "$@"
-fi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-98c11e30/development/components: quality-dashboard 
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

./commit-53dabaea/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-53dabaea/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>
