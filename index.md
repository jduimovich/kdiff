# kustomize changes tracked by commits 
### This file generated at Mon Oct 30 20:10:20 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ef5a4fa1 to 092b87df on Mon Oct 30 20:00:33 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index f8a4636f..217e8af3 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -9,6 +9,11 @@ spec:
         revision: main
         directories:
           - path: auto-generated/cluster/stone-prd-rh01/managed/*
+    - git:
+        repoURL: https://github.com/redhat-appstudio/tenants-config
+        revision: main
+        directories:
+          - path: auto-generated/cluster/stone-stg-rh01/managed/*
   template:
     metadata:
       name: '{{path.basename}}-{{path[2]}}' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-ef5a4fa1/production/app-of-apps-production.yaml
1224,1228d1223
<   - git:
<       directories:
<       - path: auto-generated/cluster/stone-stg-rh01/managed/*
<       repoURL: https://github.com/redhat-appstudio/tenants-config
<       revision: main 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-092b87df/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from ef5a4fa1 to 092b87df on Mon Oct 30 20:00:33 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index f8a4636f..217e8af3 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -9,6 +9,11 @@ spec:
         revision: main
         directories:
           - path: auto-generated/cluster/stone-prd-rh01/managed/*
+    - git:
+        repoURL: https://github.com/redhat-appstudio/tenants-config
+        revision: main
+        directories:
+          - path: auto-generated/cluster/stone-stg-rh01/managed/*
   template:
     metadata:
       name: '{{path.basename}}-{{path[2]}}' 
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

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-092b87df/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-092b87df/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from ef5a4fa1 to 092b87df on Mon Oct 30 20:00:33 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index f8a4636f..217e8af3 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -9,6 +9,11 @@ spec:
         revision: main
         directories:
           - path: auto-generated/cluster/stone-prd-rh01/managed/*
+    - git:
+        repoURL: https://github.com/redhat-appstudio/tenants-config
+        revision: main
+        directories:
+          - path: auto-generated/cluster/stone-stg-rh01/managed/*
   template:
     metadata:
       name: '{{path.basename}}-{{path[2]}}' 
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

./commit-092b87df/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-092b87df/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-092b87df/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-092b87df/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from 1acc4ade to ef5a4fa1 on Mon Oct 30 19:46:05 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 86a4b50b..4caf8819 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 0569574f..464935c3 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=516ce16787c05a2df52556edb299b066be17f9a9
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
   - ../base/rbac
   
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7406af17..2c5bc4d3 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing 
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

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 1acc4ade to ef5a4fa1 on Mon Oct 30 19:46:05 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 86a4b50b..4caf8819 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 0569574f..464935c3 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=516ce16787c05a2df52556edb299b066be17f9a9
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
   - ../base/rbac
   
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7406af17..2c5bc4d3 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1090c1090
<       - image: quay.io/redhat-appstudio/pipeline-service-exporter:b39ee7effabc427a83b863f03ff33555dfc0526d
---
>       - image: quay.io/redhat-appstudio/pipeline-service-exporter:77a5e15e83f2e2211db3d486e4902e90fbdb9f66
./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1090c1090
<       - image: quay.io/redhat-appstudio/pipeline-service-exporter:b39ee7effabc427a83b863f03ff33555dfc0526d
---
>       - image: quay.io/redhat-appstudio/pipeline-service-exporter:77a5e15e83f2e2211db3d486e4902e90fbdb9f66 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 1acc4ade to ef5a4fa1 on Mon Oct 30 19:46:05 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 86a4b50b..4caf8819 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 0569574f..464935c3 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=516ce16787c05a2df52556edb299b066be17f9a9
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
   - ../base/rbac
   
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7406af17..2c5bc4d3 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=516ce16787c05a2df52556edb299b066be17f9a9
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=9c752b87651eb83a0bb2e0f62404e213cb701434
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-1acc4ade/development/components/pipeline-service/development/kustomize.out.yaml
1091c1091
<       - image: quay.io/redhat-appstudio/pipeline-service-exporter:b39ee7effabc427a83b863f03ff33555dfc0526d
---
>       - image: quay.io/redhat-appstudio/pipeline-service-exporter:77a5e15e83f2e2211db3d486e4902e90fbdb9f66 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ef5a4fa1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ef5a4fa1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ef5a4fa1/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from df773e38 to 1acc4ade on Mon Oct 30 18:10:46 2023 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9a55d224..a4601b6a 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 309efb1cc43318b3a5878aaad7f5a11d3486ca51
+    newTag: 70789344b2f17402a1442d2de5fff572fc9df9d9
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 5c851ec5..43688264 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 309efb1cc43318b3a5878aaad7f5a11d3486ca51
+    newTag: 70789344b2f17402a1442d2de5fff572fc9df9d9
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 52efa497..6751f16e 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index a3fe19f6..b1fe85b0 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-df773e38/production/components/has/production/kustomize.out.yaml
835c835
<         image: quay.io/redhat-appstudio/application-service:70789344b2f17402a1442d2de5fff572fc9df9d9
---
>         image: quay.io/redhat-appstudio/application-service:309efb1cc43318b3a5878aaad7f5a11d3486ca51 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from df773e38 to 1acc4ade on Mon Oct 30 18:10:46 2023 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9a55d224..a4601b6a 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 309efb1cc43318b3a5878aaad7f5a11d3486ca51
+    newTag: 70789344b2f17402a1442d2de5fff572fc9df9d9
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 5c851ec5..43688264 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 309efb1cc43318b3a5878aaad7f5a11d3486ca51
+    newTag: 70789344b2f17402a1442d2de5fff572fc9df9d9
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 52efa497..6751f16e 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index a3fe19f6..b1fe85b0 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-df773e38/staging/components/has/staging/kustomize.out.yaml
861c861
<         image: quay.io/redhat-appstudio/application-service:70789344b2f17402a1442d2de5fff572fc9df9d9
---
>         image: quay.io/redhat-appstudio/application-service:309efb1cc43318b3a5878aaad7f5a11d3486ca51 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from df773e38 to 1acc4ade on Mon Oct 30 18:10:46 2023 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9a55d224..a4601b6a 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 309efb1cc43318b3a5878aaad7f5a11d3486ca51
+    newTag: 70789344b2f17402a1442d2de5fff572fc9df9d9
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 5c851ec5..43688264 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 309efb1cc43318b3a5878aaad7f5a11d3486ca51
+    newTag: 70789344b2f17402a1442d2de5fff572fc9df9d9
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 52efa497..6751f16e 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index a3fe19f6..b1fe85b0 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=309efb1cc43318b3a5878aaad7f5a11d3486ca51
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=70789344b2f17402a1442d2de5fff572fc9df9d9
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-df773e38/development/components/has/development/kustomize.out.yaml
807c807
<         image: quay.io/redhat-appstudio/application-service:70789344b2f17402a1442d2de5fff572fc9df9d9
---
>         image: quay.io/redhat-appstudio/application-service:309efb1cc43318b3a5878aaad7f5a11d3486ca51 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1acc4ade/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1acc4ade/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1acc4ade/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from cbefcb2b to df773e38 on Mon Oct 30 16:47:56 2023 </h3>  
 
<details> 
<summary>Git Diff (178 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index c89f5d1e..6541d596 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,22 +10,22 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@slsa1'
+          - '@slsa2'
+          - '@slsa3'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -33,20 +33,20 @@ metadata:
   name: all
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '*'
   description: Include every rule in the default policy source. For experiments only. This is not expected to pass for RHTAP builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Everything (experimental)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '*'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -54,22 +54,22 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude:
-      - hermetic_build_task
-      - tasks.required_tasks_found:prefetch-dependencies
-    include:
-      - '@redhat'
   description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude:
+          - hermetic_build_task
+          - tasks.required_tasks_found:prefetch-dependencies
+        include:
+          - '@redhat'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -77,20 +77,20 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@redhat'
   description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@redhat'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -98,20 +98,20 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@minimal'
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all RHTAP builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@minimal'
+          - '@slsa1'
+          - '@slsa2'
+          - '@slsa3'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b7b681b6..33d17ba3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=056018955f357fefbd709f8ded323f56cb426827
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bc4531debd4c69a7ba87749ab8cd291d39f5dc4b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,11 +11,11 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:3e428fc0de5b3ccfd4fad90423e4f121283fd5f4@sha256:395951382d733c631712c4f3dda71cccc6c775fc5a8351859660508e4667d624
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5a0fdbae1629f015c6ac1509f6c578fb8b963a34@sha256:15ed6fa65fa6ce99367f941d41878114d3d685163d5a09125b4dfc9e94775402
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=3e428fc0de5b3ccfd4fad90423e4f121283fd5f4
+      - verify_ec_task_git_revision=5a0fdbae1629f015c6ac1509f6c578fb8b963a34
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 056018955f357fefbd709f8ded323f56cb426827
+    newTag: bc4531debd4c69a7ba87749ab8cd291d39f5dc4b 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (108 lines)</summary>  

``` 
./commit-cbefcb2b/production/components/enterprise-contract/kustomize.out.yaml
256c256
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5a0fdbae1629f015c6ac1509f6c578fb8b963a34@sha256:15ed6fa65fa6ce99367f941d41878114d3d685163d5a09125b4dfc9e94775402
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:3e428fc0de5b3ccfd4fad90423e4f121283fd5f4@sha256:395951382d733c631712c4f3dda71cccc6c775fc5a8351859660508e4667d624
258c258
<   verify_ec_task_git_revision: 5a0fdbae1629f015c6ac1509f6c578fb8b963a34
---
>   verify_ec_task_git_revision: 3e428fc0de5b3ccfd4fad90423e4f121283fd5f4
270a271,274
>   configuration:
>     exclude: []
>     include:
>     - '*'
279,283c283
<   - config:
<       exclude: []
<       include:
<       - '*'
<     data:
---
>   - data:
288c288
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
295a296,301
>   configuration:
>     exclude: []
>     include:
>     - '@slsa1'
>     - '@slsa2'
>     - '@slsa3'
303,309c309
<   - config:
<       exclude: []
<       include:
<       - '@slsa1'
<       - '@slsa2'
<       - '@slsa3'
<     data:
---
>   - data:
314c314
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
321a322,325
>   configuration:
>     exclude: []
>     include:
>     - '@redhat'
329,333c333
<   - config:
<       exclude: []
<       include:
<       - '@redhat'
<     data:
---
>   - data:
338c338
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
345a346,351
>   configuration:
>     exclude:
>     - hermetic_build_task
>     - tasks.required_tasks_found:prefetch-dependencies
>     include:
>     - '@redhat'
354,360c360
<   - config:
<       exclude:
<       - hermetic_build_task
<       - tasks.required_tasks_found:prefetch-dependencies
<       include:
<       - '@redhat'
<     data:
---
>   - data:
365c365
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
372a373,379
>   configuration:
>     exclude: []
>     include:
>     - '@minimal'
>     - '@slsa1'
>     - '@slsa2'
>     - '@slsa3'
381,388c388
<   - config:
<       exclude: []
<       include:
<       - '@minimal'
<       - '@slsa1'
<       - '@slsa2'
<       - '@slsa3'
<     data:
---
>   - data:
393c393
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from cbefcb2b to df773e38 on Mon Oct 30 16:47:56 2023 </h3>  
 
<details> 
<summary>Git Diff (178 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index c89f5d1e..6541d596 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,22 +10,22 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@slsa1'
+          - '@slsa2'
+          - '@slsa3'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -33,20 +33,20 @@ metadata:
   name: all
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '*'
   description: Include every rule in the default policy source. For experiments only. This is not expected to pass for RHTAP builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Everything (experimental)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '*'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -54,22 +54,22 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude:
-      - hermetic_build_task
-      - tasks.required_tasks_found:prefetch-dependencies
-    include:
-      - '@redhat'
   description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude:
+          - hermetic_build_task
+          - tasks.required_tasks_found:prefetch-dependencies
+        include:
+          - '@redhat'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -77,20 +77,20 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@redhat'
   description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@redhat'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -98,20 +98,20 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@minimal'
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all RHTAP builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@minimal'
+          - '@slsa1'
+          - '@slsa2'
+          - '@slsa3'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b7b681b6..33d17ba3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=056018955f357fefbd709f8ded323f56cb426827
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bc4531debd4c69a7ba87749ab8cd291d39f5dc4b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,11 +11,11 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:3e428fc0de5b3ccfd4fad90423e4f121283fd5f4@sha256:395951382d733c631712c4f3dda71cccc6c775fc5a8351859660508e4667d624
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5a0fdbae1629f015c6ac1509f6c578fb8b963a34@sha256:15ed6fa65fa6ce99367f941d41878114d3d685163d5a09125b4dfc9e94775402
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=3e428fc0de5b3ccfd4fad90423e4f121283fd5f4
+      - verify_ec_task_git_revision=5a0fdbae1629f015c6ac1509f6c578fb8b963a34
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 056018955f357fefbd709f8ded323f56cb426827
+    newTag: bc4531debd4c69a7ba87749ab8cd291d39f5dc4b 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (108 lines)</summary>  

``` 
./commit-cbefcb2b/staging/components/enterprise-contract/kustomize.out.yaml
256c256
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5a0fdbae1629f015c6ac1509f6c578fb8b963a34@sha256:15ed6fa65fa6ce99367f941d41878114d3d685163d5a09125b4dfc9e94775402
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:3e428fc0de5b3ccfd4fad90423e4f121283fd5f4@sha256:395951382d733c631712c4f3dda71cccc6c775fc5a8351859660508e4667d624
258c258
<   verify_ec_task_git_revision: 5a0fdbae1629f015c6ac1509f6c578fb8b963a34
---
>   verify_ec_task_git_revision: 3e428fc0de5b3ccfd4fad90423e4f121283fd5f4
270a271,274
>   configuration:
>     exclude: []
>     include:
>     - '*'
279,283c283
<   - config:
<       exclude: []
<       include:
<       - '*'
<     data:
---
>   - data:
288c288
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
295a296,301
>   configuration:
>     exclude: []
>     include:
>     - '@slsa1'
>     - '@slsa2'
>     - '@slsa3'
303,309c309
<   - config:
<       exclude: []
<       include:
<       - '@slsa1'
<       - '@slsa2'
<       - '@slsa3'
<     data:
---
>   - data:
314c314
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
321a322,325
>   configuration:
>     exclude: []
>     include:
>     - '@redhat'
329,333c333
<   - config:
<       exclude: []
<       include:
<       - '@redhat'
<     data:
---
>   - data:
338c338
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
345a346,351
>   configuration:
>     exclude:
>     - hermetic_build_task
>     - tasks.required_tasks_found:prefetch-dependencies
>     include:
>     - '@redhat'
354,360c360
<   - config:
<       exclude:
<       - hermetic_build_task
<       - tasks.required_tasks_found:prefetch-dependencies
<       include:
<       - '@redhat'
<     data:
---
>   - data:
365c365
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
372a373,379
>   configuration:
>     exclude: []
>     include:
>     - '@minimal'
>     - '@slsa1'
>     - '@slsa2'
>     - '@slsa3'
381,388c388
<   - config:
<       exclude: []
<       include:
<       - '@minimal'
<       - '@slsa1'
<       - '@slsa2'
<       - '@slsa3'
<     data:
---
>   - data:
393c393
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from cbefcb2b to df773e38 on Mon Oct 30 16:47:56 2023 </h3>  
 
<details> 
<summary>Git Diff (178 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index c89f5d1e..6541d596 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -10,22 +10,22 @@ metadata:
   name: default
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
   description: Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default config used for new RHTAP applications. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Default
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@slsa1'
+          - '@slsa2'
+          - '@slsa3'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -33,20 +33,20 @@ metadata:
   name: all
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '*'
   description: Include every rule in the default policy source. For experiments only. This is not expected to pass for RHTAP builds without excluding some rules. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Everything (experimental)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '*'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -54,22 +54,22 @@ metadata:
   name: redhat-no-hermetic
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude:
-      - hermetic_build_task
-      - tasks.required_tasks_found:prefetch-dependencies
-    include:
-      - '@redhat'
   description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Red Hat (non hermetic)
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude:
+          - hermetic_build_task
+          - tasks.required_tasks_found:prefetch-dependencies
+        include:
+          - '@redhat'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -77,20 +77,20 @@ metadata:
   name: redhat
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@redhat'
   description: Includes the full set of rules and policies required internally by Red Hat when building Red Hat products. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: Red Hat
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@redhat'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -98,20 +98,20 @@ metadata:
   name: slsa3
   namespace: enterprise-contract-service
 spec:
-  configuration:
-    exclude: []
-    include:
-      - '@minimal'
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
   description: Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a set of basic checks that are expected to pass for all RHTAP builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
   name: SLSA3
   publicKey: k8s://openshift-pipelines/public-key
   sources:
-    - data:
+    - config:
+        exclude: []
+        include:
+          - '@minimal'
+          - '@slsa1'
+          - '@slsa2'
+          - '@slsa3'
+      data:
         - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index b7b681b6..33d17ba3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=056018955f357fefbd709f8ded323f56cb426827
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bc4531debd4c69a7ba87749ab8cd291d39f5dc4b
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,11 +11,11 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:3e428fc0de5b3ccfd4fad90423e4f121283fd5f4@sha256:395951382d733c631712c4f3dda71cccc6c775fc5a8351859660508e4667d624
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5a0fdbae1629f015c6ac1509f6c578fb8b963a34@sha256:15ed6fa65fa6ce99367f941d41878114d3d685163d5a09125b4dfc9e94775402
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=3e428fc0de5b3ccfd4fad90423e4f121283fd5f4
+      - verify_ec_task_git_revision=5a0fdbae1629f015c6ac1509f6c578fb8b963a34
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 056018955f357fefbd709f8ded323f56cb426827
+    newTag: bc4531debd4c69a7ba87749ab8cd291d39f5dc4b 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (108 lines)</summary>  

``` 
./commit-cbefcb2b/development/components/enterprise-contract/kustomize.out.yaml
256c256
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5a0fdbae1629f015c6ac1509f6c578fb8b963a34@sha256:15ed6fa65fa6ce99367f941d41878114d3d685163d5a09125b4dfc9e94775402
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:3e428fc0de5b3ccfd4fad90423e4f121283fd5f4@sha256:395951382d733c631712c4f3dda71cccc6c775fc5a8351859660508e4667d624
258c258
<   verify_ec_task_git_revision: 5a0fdbae1629f015c6ac1509f6c578fb8b963a34
---
>   verify_ec_task_git_revision: 3e428fc0de5b3ccfd4fad90423e4f121283fd5f4
270a271,274
>   configuration:
>     exclude: []
>     include:
>     - '*'
279,283c283
<   - config:
<       exclude: []
<       include:
<       - '*'
<     data:
---
>   - data:
288c288
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
295a296,301
>   configuration:
>     exclude: []
>     include:
>     - '@slsa1'
>     - '@slsa2'
>     - '@slsa3'
303,309c309
<   - config:
<       exclude: []
<       include:
<       - '@slsa1'
<       - '@slsa2'
<       - '@slsa3'
<     data:
---
>   - data:
314c314
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
321a322,325
>   configuration:
>     exclude: []
>     include:
>     - '@redhat'
329,333c333
<   - config:
<       exclude: []
<       include:
<       - '@redhat'
<     data:
---
>   - data:
338c338
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
345a346,351
>   configuration:
>     exclude:
>     - hermetic_build_task
>     - tasks.required_tasks_found:prefetch-dependencies
>     include:
>     - '@redhat'
354,360c360
<   - config:
<       exclude:
<       - hermetic_build_task
<       - tasks.required_tasks_found:prefetch-dependencies
<       include:
<       - '@redhat'
<     data:
---
>   - data:
365c365
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866
372a373,379
>   configuration:
>     exclude: []
>     include:
>     - '@minimal'
>     - '@slsa1'
>     - '@slsa2'
>     - '@slsa3'
381,388c388
<   - config:
<       exclude: []
<       include:
<       - '@minimal'
<       - '@slsa1'
<       - '@slsa2'
<       - '@slsa3'
<     data:
---
>   - data:
393c393
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-131b6c0@sha256:87ef59968f8cd017635d4b3bdda817dc343cdfde3e0097d8d275934640aed0c7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6e6566f@sha256:79092b29f85163c41f9f19f830f260b8d7626046af9cd634db19dd7229bac866 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-df773e38/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-df773e38/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-df773e38/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
