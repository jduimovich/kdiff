# kustomize changes tracked by commits 
### This file generated at Tue Dec 19 12:04:48 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 597af78d to 31cf4a95 on Tue Dec 19 10:18:01 2023 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/.tekton/tasks/get-git-token.yaml b/.tekton/tasks/get-git-token.yaml
index b7145355..163e61a3 100644
--- a/.tekton/tasks/get-git-token.yaml
+++ b/.tekton/tasks/get-git-token.yaml
@@ -12,17 +12,17 @@ spec:
       description: secret in the namespace which contains private key for the GitHub App
     - name: GITHUB_APP_ID
       description: ID of Github app used for updating PR
-      default: "305606"
+      default: "172616"
     - name: GITHUB_APP_INSTALLATION_ID
       description: Installation ID of Github app in the organization
-      default: "35269675"
+      default: "23331085"
   workspaces:
    - name: shared-file-path
    - name: infra-deployment-git
   volumes:
     - name: infra-deployments-pr-creator
       secret:
-        # 'private-key' - private key for Github app
+        # 'appstudio-staging-ci' - private key for staging Github app
         secretName: $(params.shared-secret)
   steps:
     - name: get-token
@@ -33,7 +33,7 @@ spec:
           mountPath: /secrets/deploy-key
       env:
         - name: GITHUBAPP_KEY_PATH
-          value: /secrets/deploy-key/private-key
+          value: /secrets/deploy-key/appstudio-staging-ci
         - name: GITHUBAPP_APP_ID
           value: "$(params.GITHUB_APP_ID)"
         - name: GITHUBAPP_INSTALLATION_ID 
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

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 597af78d to 31cf4a95 on Tue Dec 19 10:18:01 2023 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/.tekton/tasks/get-git-token.yaml b/.tekton/tasks/get-git-token.yaml
index b7145355..163e61a3 100644
--- a/.tekton/tasks/get-git-token.yaml
+++ b/.tekton/tasks/get-git-token.yaml
@@ -12,17 +12,17 @@ spec:
       description: secret in the namespace which contains private key for the GitHub App
     - name: GITHUB_APP_ID
       description: ID of Github app used for updating PR
-      default: "305606"
+      default: "172616"
     - name: GITHUB_APP_INSTALLATION_ID
       description: Installation ID of Github app in the organization
-      default: "35269675"
+      default: "23331085"
   workspaces:
    - name: shared-file-path
    - name: infra-deployment-git
   volumes:
     - name: infra-deployments-pr-creator
       secret:
-        # 'private-key' - private key for Github app
+        # 'appstudio-staging-ci' - private key for staging Github app
         secretName: $(params.shared-secret)
   steps:
     - name: get-token
@@ -33,7 +33,7 @@ spec:
           mountPath: /secrets/deploy-key
       env:
         - name: GITHUBAPP_KEY_PATH
-          value: /secrets/deploy-key/private-key
+          value: /secrets/deploy-key/appstudio-staging-ci
         - name: GITHUBAPP_APP_ID
           value: "$(params.GITHUB_APP_ID)"
         - name: GITHUBAPP_INSTALLATION_ID 
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

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-31cf4a95/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 597af78d to 31cf4a95 on Tue Dec 19 10:18:01 2023 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/.tekton/tasks/get-git-token.yaml b/.tekton/tasks/get-git-token.yaml
index b7145355..163e61a3 100644
--- a/.tekton/tasks/get-git-token.yaml
+++ b/.tekton/tasks/get-git-token.yaml
@@ -12,17 +12,17 @@ spec:
       description: secret in the namespace which contains private key for the GitHub App
     - name: GITHUB_APP_ID
       description: ID of Github app used for updating PR
-      default: "305606"
+      default: "172616"
     - name: GITHUB_APP_INSTALLATION_ID
       description: Installation ID of Github app in the organization
-      default: "35269675"
+      default: "23331085"
   workspaces:
    - name: shared-file-path
    - name: infra-deployment-git
   volumes:
     - name: infra-deployments-pr-creator
       secret:
-        # 'private-key' - private key for Github app
+        # 'appstudio-staging-ci' - private key for staging Github app
         secretName: $(params.shared-secret)
   steps:
     - name: get-token
@@ -33,7 +33,7 @@ spec:
           mountPath: /secrets/deploy-key
       env:
         - name: GITHUBAPP_KEY_PATH
-          value: /secrets/deploy-key/private-key
+          value: /secrets/deploy-key/appstudio-staging-ci
         - name: GITHUBAPP_APP_ID
           value: "$(params.GITHUB_APP_ID)"
         - name: GITHUBAPP_INSTALLATION_ID 
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

./commit-31cf4a95/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from c7cacf63 to 597af78d on Tue Dec 19 08:25:12 2023 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/spi/overlays/development/config-patch.json b/components/spi/overlays/development/config-patch.json
index 7686a1fc..a9b78908 100644
--- a/components/spi/overlays/development/config-patch.json
+++ b/components/spi/overlays/development/config-patch.json
@@ -9,11 +9,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-dev"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/production/stone-prd-m01/config-patch.json b/components/spi/overlays/production/stone-prd-m01/config-patch.json
index da5af03b..ca75e7f7 100644
--- a/components/spi/overlays/production/stone-prd-m01/config-patch.json
+++ b/components/spi/overlays/production/stone-prd-m01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-prod/m01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/production/stone-prd-rh01/config-patch.json b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
index 90175b56..135d826c 100644
--- a/components/spi/overlays/production/stone-prd-rh01/config-patch.json
+++ b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-prod/rh01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
index 13eec098..77c2ccca 100644
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-stage/m01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
index 32275952..2dca0c30 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-stage/rh01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID", 
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

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from c7cacf63 to 597af78d on Tue Dec 19 08:25:12 2023 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/spi/overlays/development/config-patch.json b/components/spi/overlays/development/config-patch.json
index 7686a1fc..a9b78908 100644
--- a/components/spi/overlays/development/config-patch.json
+++ b/components/spi/overlays/development/config-patch.json
@@ -9,11 +9,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-dev"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/production/stone-prd-m01/config-patch.json b/components/spi/overlays/production/stone-prd-m01/config-patch.json
index da5af03b..ca75e7f7 100644
--- a/components/spi/overlays/production/stone-prd-m01/config-patch.json
+++ b/components/spi/overlays/production/stone-prd-m01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-prod/m01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/production/stone-prd-rh01/config-patch.json b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
index 90175b56..135d826c 100644
--- a/components/spi/overlays/production/stone-prd-rh01/config-patch.json
+++ b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-prod/rh01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
index 13eec098..77c2ccca 100644
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-stage/m01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
index 32275952..2dca0c30 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-stage/rh01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID", 
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

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-597af78d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-597af78d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-597af78d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from c7cacf63 to 597af78d on Tue Dec 19 08:25:12 2023 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/spi/overlays/development/config-patch.json b/components/spi/overlays/development/config-patch.json
index 7686a1fc..a9b78908 100644
--- a/components/spi/overlays/development/config-patch.json
+++ b/components/spi/overlays/development/config-patch.json
@@ -9,11 +9,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-dev"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/production/stone-prd-m01/config-patch.json b/components/spi/overlays/production/stone-prd-m01/config-patch.json
index da5af03b..ca75e7f7 100644
--- a/components/spi/overlays/production/stone-prd-m01/config-patch.json
+++ b/components/spi/overlays/production/stone-prd-m01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-prod/m01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/production/stone-prd-rh01/config-patch.json b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
index 90175b56..135d826c 100644
--- a/components/spi/overlays/production/stone-prd-rh01/config-patch.json
+++ b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-prod/rh01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
index 13eec098..77c2ccca 100644
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-stage/m01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID",
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
index 32275952..2dca0c30 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
@@ -4,11 +4,6 @@
     "path": "/data/BASEURL",
     "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
   },
-  {
-    "op": "add",
-    "path": "/data/SPIINSTANCEID",
-    "value": "spi-stage/rh01"
-  },
   {
     "op": "add",
     "path": "/data/INSTANCEID", 
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

./commit-597af78d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from 06e10448 to c7cacf63 on Tue Dec 19 06:05:01 2023 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/.tekton/pipeline/rhtap-staging-e2e.yaml b/.tekton/pipeline/rhtap-staging-e2e.yaml
index 8b4b0c0f..05e41c8c 100644
--- a/.tekton/pipeline/rhtap-staging-e2e.yaml
+++ b/.tekton/pipeline/rhtap-staging-e2e.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Pipeline
 metadata:
   name: rhtap-staging-e2e
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   params:
     - name: repo_url
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml
index 6729ab67..b4c0d0b8 100644
--- a/.tekton/rhtap-staging-e2e-ci.yaml
+++ b/.tekton/rhtap-staging-e2e-ci.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   generateName: rhtap-staging-e2e-
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "pull_request" && target_branch == "main" &&
diff --git a/.tekton/tasks/check-pr-label.yaml b/.tekton/tasks/check-pr-label.yaml
index e8084ce7..92002204 100644
--- a/.tekton/tasks/check-pr-label.yaml
+++ b/.tekton/tasks/check-pr-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: pr-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     check if the pull request label for which the test is running on staging is ready to be merged
diff --git a/.tekton/tasks/check-pr-rebase-label.yaml b/.tekton/tasks/check-pr-rebase-label.yaml
index b7b092d3..6b2d9c02 100644
--- a/.tekton/tasks/check-pr-rebase-label.yaml
+++ b/.tekton/tasks/check-pr-rebase-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: pr-rebase-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     check if the pull request label for which the test is running on staging needs to be rebased.
diff --git a/.tekton/tasks/component-app-name.yaml b/.tekton/tasks/component-app-name.yaml
index 76318ccf..fb924ccd 100644
--- a/.tekton/tasks/component-app-name.yaml
+++ b/.tekton/tasks/component-app-name.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: component-app-name
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   params:
    - name: APP_FILE_NAME
diff --git a/.tekton/tasks/get-git-token.yaml b/.tekton/tasks/get-git-token.yaml
index c921a5ac..b7145355 100644
--- a/.tekton/tasks/get-git-token.yaml
+++ b/.tekton/tasks/get-git-token.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: get-github-token
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     get the github app token for infra-deployment
diff --git a/.tekton/tasks/get-pr-modified-files.yaml b/.tekton/tasks/get-pr-modified-files.yaml
index 39019cdb..38ff2b33 100644
--- a/.tekton/tasks/get-pr-modified-files.yaml
+++ b/.tekton/tasks/get-pr-modified-files.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: get-pr-modified-files
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: >-
     This task retrieves the file paths modified by the pull request
diff --git a/.tekton/tasks/merge-pr.yaml b/.tekton/tasks/merge-pr.yaml
index ab039122..269b019a 100644
--- a/.tekton/tasks/merge-pr.yaml
+++ b/.tekton/tasks/merge-pr.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: merge-pr
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     merge the pull request into main branch.
diff --git a/.tekton/tasks/rebase-pr.yaml b/.tekton/tasks/rebase-pr.yaml
index d2a1897d..4cef7934 100644
--- a/.tekton/tasks/rebase-pr.yaml
+++ b/.tekton/tasks/rebase-pr.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: rebase-pr
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     rebase the pull request for which the test is running on staging.
diff --git a/.tekton/tasks/remove-pr-label.yaml b/.tekton/tasks/remove-pr-label.yaml
index 6e7bf94f..39de8e68 100644
--- a/.tekton/tasks/remove-pr-label.yaml
+++ b/.tekton/tasks/remove-pr-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: remove-pr-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     Remove the 'ok-to-merge' label on the PR so the final rebase does not trigger a new execution of the pipelinerun
diff --git a/.tekton/tasks/replace-revision.yaml b/.tekton/tasks/replace-revision.yaml
index 3fb257db..85596b97 100644
--- a/.tekton/tasks/replace-revision.yaml
+++ b/.tekton/tasks/replace-revision.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: replace-revision
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     replace the target revision of staging argocd applicationset with pull request latest revision
diff --git a/.tekton/tasks/revert-replace-revision.yaml b/.tekton/tasks/revert-replace-revision.yaml
index f7508bfb..ce2bb204 100644
--- a/.tekton/tasks/revert-replace-revision.yaml
+++ b/.tekton/tasks/revert-replace-revision.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: revert-replace-revision
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     revert the argocd applicationset target revision to original branch state.
diff --git a/.tekton/tasks/verify-smoke-e2e.yaml b/.tekton/tasks/verify-smoke-e2e.yaml
index 0cda9465..0b6445c9 100644
--- a/.tekton/tasks/verify-smoke-e2e.yaml
+++ b/.tekton/tasks/verify-smoke-e2e.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: stage-verify-e2e-test
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: >-
     This task is for running stage e2e test on RHTAP staging cluster 
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

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 06e10448 to c7cacf63 on Tue Dec 19 06:05:01 2023 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/.tekton/pipeline/rhtap-staging-e2e.yaml b/.tekton/pipeline/rhtap-staging-e2e.yaml
index 8b4b0c0f..05e41c8c 100644
--- a/.tekton/pipeline/rhtap-staging-e2e.yaml
+++ b/.tekton/pipeline/rhtap-staging-e2e.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Pipeline
 metadata:
   name: rhtap-staging-e2e
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   params:
     - name: repo_url
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml
index 6729ab67..b4c0d0b8 100644
--- a/.tekton/rhtap-staging-e2e-ci.yaml
+++ b/.tekton/rhtap-staging-e2e-ci.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   generateName: rhtap-staging-e2e-
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "pull_request" && target_branch == "main" &&
diff --git a/.tekton/tasks/check-pr-label.yaml b/.tekton/tasks/check-pr-label.yaml
index e8084ce7..92002204 100644
--- a/.tekton/tasks/check-pr-label.yaml
+++ b/.tekton/tasks/check-pr-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: pr-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     check if the pull request label for which the test is running on staging is ready to be merged
diff --git a/.tekton/tasks/check-pr-rebase-label.yaml b/.tekton/tasks/check-pr-rebase-label.yaml
index b7b092d3..6b2d9c02 100644
--- a/.tekton/tasks/check-pr-rebase-label.yaml
+++ b/.tekton/tasks/check-pr-rebase-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: pr-rebase-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     check if the pull request label for which the test is running on staging needs to be rebased.
diff --git a/.tekton/tasks/component-app-name.yaml b/.tekton/tasks/component-app-name.yaml
index 76318ccf..fb924ccd 100644
--- a/.tekton/tasks/component-app-name.yaml
+++ b/.tekton/tasks/component-app-name.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: component-app-name
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   params:
    - name: APP_FILE_NAME
diff --git a/.tekton/tasks/get-git-token.yaml b/.tekton/tasks/get-git-token.yaml
index c921a5ac..b7145355 100644
--- a/.tekton/tasks/get-git-token.yaml
+++ b/.tekton/tasks/get-git-token.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: get-github-token
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     get the github app token for infra-deployment
diff --git a/.tekton/tasks/get-pr-modified-files.yaml b/.tekton/tasks/get-pr-modified-files.yaml
index 39019cdb..38ff2b33 100644
--- a/.tekton/tasks/get-pr-modified-files.yaml
+++ b/.tekton/tasks/get-pr-modified-files.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: get-pr-modified-files
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: >-
     This task retrieves the file paths modified by the pull request
diff --git a/.tekton/tasks/merge-pr.yaml b/.tekton/tasks/merge-pr.yaml
index ab039122..269b019a 100644
--- a/.tekton/tasks/merge-pr.yaml
+++ b/.tekton/tasks/merge-pr.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: merge-pr
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     merge the pull request into main branch.
diff --git a/.tekton/tasks/rebase-pr.yaml b/.tekton/tasks/rebase-pr.yaml
index d2a1897d..4cef7934 100644
--- a/.tekton/tasks/rebase-pr.yaml
+++ b/.tekton/tasks/rebase-pr.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: rebase-pr
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     rebase the pull request for which the test is running on staging.
diff --git a/.tekton/tasks/remove-pr-label.yaml b/.tekton/tasks/remove-pr-label.yaml
index 6e7bf94f..39de8e68 100644
--- a/.tekton/tasks/remove-pr-label.yaml
+++ b/.tekton/tasks/remove-pr-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: remove-pr-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     Remove the 'ok-to-merge' label on the PR so the final rebase does not trigger a new execution of the pipelinerun
diff --git a/.tekton/tasks/replace-revision.yaml b/.tekton/tasks/replace-revision.yaml
index 3fb257db..85596b97 100644
--- a/.tekton/tasks/replace-revision.yaml
+++ b/.tekton/tasks/replace-revision.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: replace-revision
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     replace the target revision of staging argocd applicationset with pull request latest revision
diff --git a/.tekton/tasks/revert-replace-revision.yaml b/.tekton/tasks/revert-replace-revision.yaml
index f7508bfb..ce2bb204 100644
--- a/.tekton/tasks/revert-replace-revision.yaml
+++ b/.tekton/tasks/revert-replace-revision.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: revert-replace-revision
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     revert the argocd applicationset target revision to original branch state.
diff --git a/.tekton/tasks/verify-smoke-e2e.yaml b/.tekton/tasks/verify-smoke-e2e.yaml
index 0cda9465..0b6445c9 100644
--- a/.tekton/tasks/verify-smoke-e2e.yaml
+++ b/.tekton/tasks/verify-smoke-e2e.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: stage-verify-e2e-test
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: >-
     This task is for running stage e2e test on RHTAP staging cluster 
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

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-c7cacf63/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 06e10448 to c7cacf63 on Tue Dec 19 06:05:01 2023 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/.tekton/pipeline/rhtap-staging-e2e.yaml b/.tekton/pipeline/rhtap-staging-e2e.yaml
index 8b4b0c0f..05e41c8c 100644
--- a/.tekton/pipeline/rhtap-staging-e2e.yaml
+++ b/.tekton/pipeline/rhtap-staging-e2e.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Pipeline
 metadata:
   name: rhtap-staging-e2e
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   params:
     - name: repo_url
diff --git a/.tekton/rhtap-staging-e2e-ci.yaml b/.tekton/rhtap-staging-e2e-ci.yaml
index 6729ab67..b4c0d0b8 100644
--- a/.tekton/rhtap-staging-e2e-ci.yaml
+++ b/.tekton/rhtap-staging-e2e-ci.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: PipelineRun
 metadata:
   generateName: rhtap-staging-e2e-
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
   annotations:
     pipelinesascode.tekton.dev/on-cel-expression: |
       event == "pull_request" && target_branch == "main" &&
diff --git a/.tekton/tasks/check-pr-label.yaml b/.tekton/tasks/check-pr-label.yaml
index e8084ce7..92002204 100644
--- a/.tekton/tasks/check-pr-label.yaml
+++ b/.tekton/tasks/check-pr-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: pr-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     check if the pull request label for which the test is running on staging is ready to be merged
diff --git a/.tekton/tasks/check-pr-rebase-label.yaml b/.tekton/tasks/check-pr-rebase-label.yaml
index b7b092d3..6b2d9c02 100644
--- a/.tekton/tasks/check-pr-rebase-label.yaml
+++ b/.tekton/tasks/check-pr-rebase-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: pr-rebase-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     check if the pull request label for which the test is running on staging needs to be rebased.
diff --git a/.tekton/tasks/component-app-name.yaml b/.tekton/tasks/component-app-name.yaml
index 76318ccf..fb924ccd 100644
--- a/.tekton/tasks/component-app-name.yaml
+++ b/.tekton/tasks/component-app-name.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: component-app-name
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   params:
    - name: APP_FILE_NAME
diff --git a/.tekton/tasks/get-git-token.yaml b/.tekton/tasks/get-git-token.yaml
index c921a5ac..b7145355 100644
--- a/.tekton/tasks/get-git-token.yaml
+++ b/.tekton/tasks/get-git-token.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: get-github-token
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     get the github app token for infra-deployment
diff --git a/.tekton/tasks/get-pr-modified-files.yaml b/.tekton/tasks/get-pr-modified-files.yaml
index 39019cdb..38ff2b33 100644
--- a/.tekton/tasks/get-pr-modified-files.yaml
+++ b/.tekton/tasks/get-pr-modified-files.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: get-pr-modified-files
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: >-
     This task retrieves the file paths modified by the pull request
diff --git a/.tekton/tasks/merge-pr.yaml b/.tekton/tasks/merge-pr.yaml
index ab039122..269b019a 100644
--- a/.tekton/tasks/merge-pr.yaml
+++ b/.tekton/tasks/merge-pr.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: merge-pr
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     merge the pull request into main branch.
diff --git a/.tekton/tasks/rebase-pr.yaml b/.tekton/tasks/rebase-pr.yaml
index d2a1897d..4cef7934 100644
--- a/.tekton/tasks/rebase-pr.yaml
+++ b/.tekton/tasks/rebase-pr.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: rebase-pr
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     rebase the pull request for which the test is running on staging.
diff --git a/.tekton/tasks/remove-pr-label.yaml b/.tekton/tasks/remove-pr-label.yaml
index 6e7bf94f..39de8e68 100644
--- a/.tekton/tasks/remove-pr-label.yaml
+++ b/.tekton/tasks/remove-pr-label.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: remove-pr-labels
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     Remove the 'ok-to-merge' label on the PR so the final rebase does not trigger a new execution of the pipelinerun
diff --git a/.tekton/tasks/replace-revision.yaml b/.tekton/tasks/replace-revision.yaml
index 3fb257db..85596b97 100644
--- a/.tekton/tasks/replace-revision.yaml
+++ b/.tekton/tasks/replace-revision.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: replace-revision
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     replace the target revision of staging argocd applicationset with pull request latest revision
diff --git a/.tekton/tasks/revert-replace-revision.yaml b/.tekton/tasks/revert-replace-revision.yaml
index f7508bfb..ce2bb204 100644
--- a/.tekton/tasks/revert-replace-revision.yaml
+++ b/.tekton/tasks/revert-replace-revision.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: revert-replace-revision
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: |
     revert the argocd applicationset target revision to original branch state.
diff --git a/.tekton/tasks/verify-smoke-e2e.yaml b/.tekton/tasks/verify-smoke-e2e.yaml
index 0cda9465..0b6445c9 100644
--- a/.tekton/tasks/verify-smoke-e2e.yaml
+++ b/.tekton/tasks/verify-smoke-e2e.yaml
@@ -2,7 +2,7 @@ apiVersion: tekton.dev/v1beta1
 kind: Task
 metadata:
   name: stage-verify-e2e-test
-  namespace: rhtap-staging-testing
+  namespace: rhtap-promotion-staging
 spec:
   description: >-
     This task is for running stage e2e test on RHTAP staging cluster 
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

./commit-c7cacf63/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from 12526dd2 to 06e10448 on Tue Dec 19 03:25:28 2023 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 070bbfa5..662dc1f8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 8f798cd96da264749222fdbc8d3c854f38af5668
+    newTag: bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (104 lines)</summary>  

``` 
./commit-12526dd2/production/components/release/production/kustomize.out.yaml
62c62
<                   the managed Release Pipeline
---
>                   the release Pipeline
77c77
<                   by the managed Release PipelineRun
---
>                   by the release PipelineRun
115c115
<                   use in the managed Release PipelineRun to gain elevated privileges
---
>                   use in the release PipelineRun to gain elevated privileges
199,200c199,200
<                 description: ReleasePlan is a list of releasePlans matched to the
<                   ReleasePlanAdmission
---
>                 description: ReleasePlan is a list of references to releasePlans matched
>                   to the ReleasePlanAdmission
202,213c202
<                   description: MatchedReleasePlan defines the relevant information
<                     for a matched ReleasePlan.
<                   properties:
<                     active:
<                       description: Active indicates whether the ReleasePlan is set
<                         to auto-release or not
<                       type: boolean
<                     name:
<                       description: Name contains the namespaced name of the ReleasePlan
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   type: object
---
>                   type: string
280c269
<                   the managed Release Pipeline
---
>                   the release Pipeline
285c274
<                   would be executed before the managed Release Pipeline
---
>                   would be executed before the release Pipeline
404,415c393,396
<                 description: ReleasePlanAdmission contains the information of the
<                   releasePlanAdmission this ReleasePlan is matched to
<                 properties:
<                   active:
<                     description: Active indicates whether the ReleasePlanAdmission
<                       is set to auto-release or not
<                     type: boolean
<                   name:
<                     description: Name contains the namespaced name of the releasePlanAdmission
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                 type: object
---
>                 description: ReleasePlanAdmission contains the namespaced name of
>                   the releasePlanAdmission this ReleasePlan is matched to
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
482c463
<                   the managed Release Pipeline
---
>                   the release Pipeline
639,640c620,621
<                     description: PipelineRun contains the namespaced name of the managed
<                       Release PipelineRun executed as part of this release
---
>                     description: PipelineRun contains the namespaced name of the release
>                       PipelineRun executed as part of this release
943,958d923
<   - releaseplanadmissions
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseplanadmissions/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
985,996d949
<   - releaseplansadmissions
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
1677c1630
<         image: quay.io/redhat-appstudio/release-service:bb760ff178d79b459b3851083b88fdbf4fb9a1bf
---
>         image: quay.io/redhat-appstudio/release-service:8f798cd96da264749222fdbc8d3c854f38af5668 
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

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 12526dd2 to 06e10448 on Tue Dec 19 03:25:28 2023 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 070bbfa5..662dc1f8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 8f798cd96da264749222fdbc8d3c854f38af5668
+    newTag: bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
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

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-06e10448/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-06e10448/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-06e10448/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 12526dd2 to 06e10448 on Tue Dec 19 03:25:28 2023 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 070bbfa5..662dc1f8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 8f798cd96da264749222fdbc8d3c854f38af5668
+    newTag: bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
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

./commit-06e10448/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
