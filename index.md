# kustomize changes tracked by commits 
### This file generated at Tue Dec 19 04:04:19 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 12526dd2 to 06e10448 on Tue Dec 19 03:25:28 2023 </h3>  
 
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
<h3>1: Staging changes from 12526dd2 to 06e10448 on Tue Dec 19 03:25:28 2023 </h3>  
 
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
<h3>1: Development changes from 12526dd2 to 06e10448 on Tue Dec 19 03:25:28 2023 </h3>  
 
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

<div>
<h3>2: Production changes from edd3c76b to 12526dd2 on Tue Dec 19 01:53:31 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 3d628f53..2e34c257 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from edd3c76b to 12526dd2 on Tue Dec 19 01:53:31 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 3d628f53..2e34c257 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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
./commit-edd3c76b/staging/components/release/staging/kustomize.out.yaml
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-12526dd2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from edd3c76b to 12526dd2 on Tue Dec 19 01:53:31 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 3d628f53..2e34c257 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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

./commit-12526dd2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from 2dc39822 to edd3c76b on Tue Dec 19 00:09:49 2023 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 99a2c5af..4ec012f0 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index bcfc9736..6113e088 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
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

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 2dc39822 to edd3c76b on Tue Dec 19 00:09:49 2023 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 99a2c5af..4ec012f0 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index bcfc9736..6113e088 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
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

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-edd3c76b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 2dc39822 to edd3c76b on Tue Dec 19 00:09:49 2023 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 99a2c5af..4ec012f0 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index bcfc9736..6113e088 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=8f798cd96da264749222fdbc8d3c854f38af5668
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=bb760ff178d79b459b3851083b88fdbf4fb9a1bf
 
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
./commit-2dc39822/development/components/release/development/kustomize.out.yaml
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

./commit-edd3c76b/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from 1825c25a to 2dc39822 on Mon Dec 18 18:43:00 2023 </h3>  
 
<details> 
<summary>Git Diff (293 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
new file mode 100644
index 00000000..4e920ec4
--- /dev/null
+++ b/components/enterprise-contract/download-service.yaml
@@ -0,0 +1,275 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: ec-cli-download-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - route.openshift.io
+    resourceNames:
+      - ec-cli-download-route
+    resources:
+      - routes
+    verbs:
+      - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: ec-cli-download-role-binding
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ec-cli-download-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: ec-cli-download-cluster-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - console.openshift.io
+    resources:
+      - consoleclidownloads
+    verbs:
+      - create
+      - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: ec-cli-download-cluster-role-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: ec-cli-download-cluster-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
+    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-deployment
+  namespace: enterprise-contract-service
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: ec-cli-download
+  template:
+    metadata:
+      labels:
+        app.kubernetes.io/name: ec-cli-download
+    spec:
+      containers:
+        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
+          name: http
+          ports:
+            - containerPort: 8443
+              name: https
+              protocol: TCP
+          resources:
+            limits:
+              cpu: 100m
+              memory: 100Mi
+            requests:
+              cpu: 100m
+              memory: 10Mi
+          securityContext:
+            #readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/private
+              name: tls-key
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/certs
+              name: tls-certificate
+              readOnly: true
+      initContainers:
+        - args:
+            - |
+              #!/usr/bin/bash
+
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+
+              function handle_error {
+                sleep infinity
+              }
+              trap handle_error ERR
+
+              imgref=$({
+                dir="$(mktemp --directory --tmpdir=.)"
+                cd "${dir}"
+                oc image extract "$EC_TASK_BUNDLE_REF"
+                jq -r '.spec.steps[0].image' verify-enterprise-contract
+                cd ..
+                rm -rf "${dir}"
+              })
+              echo "Determined ec CLI image to be ${imgref}"
+
+              base="${imgref%:*}"
+              base="${imgref%@*}"
+
+              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
+
+              download_ec() {
+                os="$1"
+                architecture="$2"
+                digest="$3"
+
+                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
+
+                mkdir -p "${os}_${architecture}"
+                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                chmod +x "${os}_${architecture}/ec"
+                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
+                echo "Downloaded ${base}@${digest}"
+              }
+
+              while read -r line; do
+                read -r -a args <<< "${line}"
+                download_ec "${args[@]}" &
+              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
+
+              pids=$(jobs -p)
+              (
+                trap 'exit 0' TERM
+                while true
+                do
+                  echo Downloading...
+                  sleep 3
+                done
+              ) &
+              ticker_pid=$!
+
+              # shellcheck disable=SC2046
+              wait $pids
+              kill $ticker_pid
+
+              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
+
+              {
+                echo "apiVersion: console.openshift.io/v1
+              kind: ConsoleCLIDownload
+              metadata:
+                name: ec-cli
+              spec:
+                description: |
+                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
+                displayName: ec - Enterprise Contract CLI
+                links:"
+                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
+                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
+              } | oc apply -f -
+
+              {
+                echo '<!doctype html>
+              <html>
+              <style>
+              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
+              ul { list-style: none; padding-left: 0; }
+              </style>
+              <body>
+              <ul>'
+                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
+                echo '</ul>
+              </body>
+              </html>'
+              } > index.html
+          command:
+            - /bin/bash
+            - -c
+          env:
+            - name: EC_TASK_BUNDLE_REF
+              valueFrom:
+                configMapKeyRef:
+                  key: verify_ec_task_bundle
+                  name: ec-defaults
+          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
+          name: download
+          resources:
+            limits:
+              cpu: 1000m
+              memory: 512Mi
+            requests:
+              cpu: 500m
+              memory: 128Mi
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+          workingDir: /var/www/html
+      volumes:
+        - emptyDir: {}
+          name: wwwdata
+        - name: tls-key
+          secret:
+            items:
+              - key: tls.key
+                path: server.pem
+            secretName: ec-cli-download-tls
+        - name: tls-certificate
+          secret:
+            items:
+              - key: tls.crt
+                path: server.pem
+            secretName: ec-cli-download-tls
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-service
+  namespace: enterprise-contract-service
+spec:
+  ports:
+    - name: https
+      port: 8443
+      targetPort: https
+  selector:
+    app.kubernetes.io/name: ec-cli-download
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-route
+  namespace: enterprise-contract-service
+spec:
+  port:
+    targetPort: https
+  tls:
+    termination: reencrypt
+  to:
+    kind: Service
+    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 52acea9a..ea65f1ba 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
+  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-1825c25a/production/components/enterprise-contract/kustomize.out.yaml
207,235d206
< kind: Role
< metadata:
<   name: ec-cli-download-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - route.openshift.io
<   resourceNames:
<   - ec-cli-download-route
<   resources:
<   - routes
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: ec-cli-download-cluster-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - console.openshift.io
<   resources:
<   - consoleclidownloads
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
304,317d274
<   name: ec-cli-download-role-binding
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: ec-cli-download-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
343,355d299
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: ec-cli-download-cluster-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: ec-cli-download-cluster-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
367,569d310
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-service
<   namespace: enterprise-contract-service
< spec:
<   ports:
<   - name: https
<     port: 8443
<     targetPort: https
<   selector:
<     app.kubernetes.io/name: ec-cli-download
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
<       only has the latest tag, and that is the version we want here
<     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
<       its configuration
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-deployment
<   namespace: enterprise-contract-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: ec-cli-download
<   template:
<     metadata:
<       labels:
<         app.kubernetes.io/name: ec-cli-download
<     spec:
<       containers:
<       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
<         name: http
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 100m
<             memory: 10Mi
<         securityContext:
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/private
<           name: tls-key
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/certs
<           name: tls-certificate
<           readOnly: true
<       initContainers:
<       - args:
<         - |
<           #!/usr/bin/bash
< 
<           set -o errexit
<           set -o nounset
<           set -o pipefail
< 
<           function handle_error {
<             sleep infinity
<           }
<           trap handle_error ERR
< 
<           imgref=$({
<             dir="$(mktemp --directory --tmpdir=.)"
<             cd "${dir}"
<             oc image extract "$EC_TASK_BUNDLE_REF"
<             jq -r '.spec.steps[0].image' verify-enterprise-contract
<             cd ..
<             rm -rf "${dir}"
<           })
<           echo "Determined ec CLI image to be ${imgref}"
< 
<           base="${imgref%:*}"
<           base="${imgref%@*}"
< 
<           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
< 
<           download_ec() {
<             os="$1"
<             architecture="$2"
<             digest="$3"
< 
<             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
< 
<             mkdir -p "${os}_${architecture}"
<             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
<             chmod +x "${os}_${architecture}/ec"
<             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
<             echo "Downloaded ${base}@${digest}"
<           }
< 
<           while read -r line; do
<             read -r -a args <<< "${line}"
<             download_ec "${args[@]}" &
<           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
< 
<           pids=$(jobs -p)
<           (
<             trap 'exit 0' TERM
<             while true
<             do
<               echo Downloading...
<               sleep 3
<             done
<           ) &
<           ticker_pid=$!
< 
<           # shellcheck disable=SC2046
<           wait $pids
<           kill $ticker_pid
< 
<           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
< 
<           {
<             echo "apiVersion: console.openshift.io/v1
<           kind: ConsoleCLIDownload
<           metadata:
<             name: ec-cli
<           spec:
<             description: |
<               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
<             displayName: ec - Enterprise Contract CLI
<             links:"
<             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
<                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
<           } | oc apply -f -
< 
<           {
<             echo '<!doctype html>
<           <html>
<           <style>
<           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
<           ul { list-style: none; padding-left: 0; }
<           </style>
<           <body>
<           <ul>'
<             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
<             echo '</ul>
<           </body>
<           </html>'
<           } > index.html
<         command:
<         - /bin/bash
<         - -c
<         env:
<         - name: EC_TASK_BUNDLE_REF
<           valueFrom:
<             configMapKeyRef:
<               key: verify_ec_task_bundle
<               name: ec-defaults
<         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
<         name: download
<         resources:
<           limits:
<             cpu: 1000m
<             memory: 512Mi
<           requests:
<             cpu: 500m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<         workingDir: /var/www/html
<       volumes:
<       - emptyDir: {}
<         name: wwwdata
<       - name: tls-key
<         secret:
<           items:
<           - key: tls.key
<             path: server.pem
<           secretName: ec-cli-download-tls
<       - name: tls-certificate
<         secret:
<           items:
<           - key: tls.crt
<             path: server.pem
<           secretName: ec-cli-download-tls
< ---
733,749d473
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-route
<   namespace: enterprise-contract-service
< spec:
<   port:
<     targetPort: https
<   tls:
<     termination: reencrypt
<   to:
<     kind: Service
<     name: ec-cli-download-service 
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

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 1825c25a to 2dc39822 on Mon Dec 18 18:43:00 2023 </h3>  
 
<details> 
<summary>Git Diff (293 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
new file mode 100644
index 00000000..4e920ec4
--- /dev/null
+++ b/components/enterprise-contract/download-service.yaml
@@ -0,0 +1,275 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: ec-cli-download-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - route.openshift.io
+    resourceNames:
+      - ec-cli-download-route
+    resources:
+      - routes
+    verbs:
+      - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: ec-cli-download-role-binding
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ec-cli-download-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: ec-cli-download-cluster-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - console.openshift.io
+    resources:
+      - consoleclidownloads
+    verbs:
+      - create
+      - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: ec-cli-download-cluster-role-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: ec-cli-download-cluster-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
+    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-deployment
+  namespace: enterprise-contract-service
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: ec-cli-download
+  template:
+    metadata:
+      labels:
+        app.kubernetes.io/name: ec-cli-download
+    spec:
+      containers:
+        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
+          name: http
+          ports:
+            - containerPort: 8443
+              name: https
+              protocol: TCP
+          resources:
+            limits:
+              cpu: 100m
+              memory: 100Mi
+            requests:
+              cpu: 100m
+              memory: 10Mi
+          securityContext:
+            #readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/private
+              name: tls-key
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/certs
+              name: tls-certificate
+              readOnly: true
+      initContainers:
+        - args:
+            - |
+              #!/usr/bin/bash
+
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+
+              function handle_error {
+                sleep infinity
+              }
+              trap handle_error ERR
+
+              imgref=$({
+                dir="$(mktemp --directory --tmpdir=.)"
+                cd "${dir}"
+                oc image extract "$EC_TASK_BUNDLE_REF"
+                jq -r '.spec.steps[0].image' verify-enterprise-contract
+                cd ..
+                rm -rf "${dir}"
+              })
+              echo "Determined ec CLI image to be ${imgref}"
+
+              base="${imgref%:*}"
+              base="${imgref%@*}"
+
+              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
+
+              download_ec() {
+                os="$1"
+                architecture="$2"
+                digest="$3"
+
+                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
+
+                mkdir -p "${os}_${architecture}"
+                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                chmod +x "${os}_${architecture}/ec"
+                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
+                echo "Downloaded ${base}@${digest}"
+              }
+
+              while read -r line; do
+                read -r -a args <<< "${line}"
+                download_ec "${args[@]}" &
+              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
+
+              pids=$(jobs -p)
+              (
+                trap 'exit 0' TERM
+                while true
+                do
+                  echo Downloading...
+                  sleep 3
+                done
+              ) &
+              ticker_pid=$!
+
+              # shellcheck disable=SC2046
+              wait $pids
+              kill $ticker_pid
+
+              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
+
+              {
+                echo "apiVersion: console.openshift.io/v1
+              kind: ConsoleCLIDownload
+              metadata:
+                name: ec-cli
+              spec:
+                description: |
+                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
+                displayName: ec - Enterprise Contract CLI
+                links:"
+                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
+                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
+              } | oc apply -f -
+
+              {
+                echo '<!doctype html>
+              <html>
+              <style>
+              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
+              ul { list-style: none; padding-left: 0; }
+              </style>
+              <body>
+              <ul>'
+                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
+                echo '</ul>
+              </body>
+              </html>'
+              } > index.html
+          command:
+            - /bin/bash
+            - -c
+          env:
+            - name: EC_TASK_BUNDLE_REF
+              valueFrom:
+                configMapKeyRef:
+                  key: verify_ec_task_bundle
+                  name: ec-defaults
+          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
+          name: download
+          resources:
+            limits:
+              cpu: 1000m
+              memory: 512Mi
+            requests:
+              cpu: 500m
+              memory: 128Mi
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+          workingDir: /var/www/html
+      volumes:
+        - emptyDir: {}
+          name: wwwdata
+        - name: tls-key
+          secret:
+            items:
+              - key: tls.key
+                path: server.pem
+            secretName: ec-cli-download-tls
+        - name: tls-certificate
+          secret:
+            items:
+              - key: tls.crt
+                path: server.pem
+            secretName: ec-cli-download-tls
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-service
+  namespace: enterprise-contract-service
+spec:
+  ports:
+    - name: https
+      port: 8443
+      targetPort: https
+  selector:
+    app.kubernetes.io/name: ec-cli-download
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-route
+  namespace: enterprise-contract-service
+spec:
+  port:
+    targetPort: https
+  tls:
+    termination: reencrypt
+  to:
+    kind: Service
+    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 52acea9a..ea65f1ba 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
+  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-1825c25a/staging/components/enterprise-contract/kustomize.out.yaml
207,235d206
< kind: Role
< metadata:
<   name: ec-cli-download-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - route.openshift.io
<   resourceNames:
<   - ec-cli-download-route
<   resources:
<   - routes
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: ec-cli-download-cluster-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - console.openshift.io
<   resources:
<   - consoleclidownloads
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
304,317d274
<   name: ec-cli-download-role-binding
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: ec-cli-download-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
343,355d299
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: ec-cli-download-cluster-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: ec-cli-download-cluster-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
367,569d310
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-service
<   namespace: enterprise-contract-service
< spec:
<   ports:
<   - name: https
<     port: 8443
<     targetPort: https
<   selector:
<     app.kubernetes.io/name: ec-cli-download
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
<       only has the latest tag, and that is the version we want here
<     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
<       its configuration
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-deployment
<   namespace: enterprise-contract-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: ec-cli-download
<   template:
<     metadata:
<       labels:
<         app.kubernetes.io/name: ec-cli-download
<     spec:
<       containers:
<       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
<         name: http
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 100m
<             memory: 10Mi
<         securityContext:
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/private
<           name: tls-key
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/certs
<           name: tls-certificate
<           readOnly: true
<       initContainers:
<       - args:
<         - |
<           #!/usr/bin/bash
< 
<           set -o errexit
<           set -o nounset
<           set -o pipefail
< 
<           function handle_error {
<             sleep infinity
<           }
<           trap handle_error ERR
< 
<           imgref=$({
<             dir="$(mktemp --directory --tmpdir=.)"
<             cd "${dir}"
<             oc image extract "$EC_TASK_BUNDLE_REF"
<             jq -r '.spec.steps[0].image' verify-enterprise-contract
<             cd ..
<             rm -rf "${dir}"
<           })
<           echo "Determined ec CLI image to be ${imgref}"
< 
<           base="${imgref%:*}"
<           base="${imgref%@*}"
< 
<           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
< 
<           download_ec() {
<             os="$1"
<             architecture="$2"
<             digest="$3"
< 
<             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
< 
<             mkdir -p "${os}_${architecture}"
<             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
<             chmod +x "${os}_${architecture}/ec"
<             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
<             echo "Downloaded ${base}@${digest}"
<           }
< 
<           while read -r line; do
<             read -r -a args <<< "${line}"
<             download_ec "${args[@]}" &
<           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
< 
<           pids=$(jobs -p)
<           (
<             trap 'exit 0' TERM
<             while true
<             do
<               echo Downloading...
<               sleep 3
<             done
<           ) &
<           ticker_pid=$!
< 
<           # shellcheck disable=SC2046
<           wait $pids
<           kill $ticker_pid
< 
<           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
< 
<           {
<             echo "apiVersion: console.openshift.io/v1
<           kind: ConsoleCLIDownload
<           metadata:
<             name: ec-cli
<           spec:
<             description: |
<               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
<             displayName: ec - Enterprise Contract CLI
<             links:"
<             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
<                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
<           } | oc apply -f -
< 
<           {
<             echo '<!doctype html>
<           <html>
<           <style>
<           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
<           ul { list-style: none; padding-left: 0; }
<           </style>
<           <body>
<           <ul>'
<             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
<             echo '</ul>
<           </body>
<           </html>'
<           } > index.html
<         command:
<         - /bin/bash
<         - -c
<         env:
<         - name: EC_TASK_BUNDLE_REF
<           valueFrom:
<             configMapKeyRef:
<               key: verify_ec_task_bundle
<               name: ec-defaults
<         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
<         name: download
<         resources:
<           limits:
<             cpu: 1000m
<             memory: 512Mi
<           requests:
<             cpu: 500m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<         workingDir: /var/www/html
<       volumes:
<       - emptyDir: {}
<         name: wwwdata
<       - name: tls-key
<         secret:
<           items:
<           - key: tls.key
<             path: server.pem
<           secretName: ec-cli-download-tls
<       - name: tls-certificate
<         secret:
<           items:
<           - key: tls.crt
<             path: server.pem
<           secretName: ec-cli-download-tls
< ---
733,749d473
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-route
<   namespace: enterprise-contract-service
< spec:
<   port:
<     targetPort: https
<   tls:
<     termination: reencrypt
<   to:
<     kind: Service
<     name: ec-cli-download-service 
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

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2dc39822/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 1825c25a to 2dc39822 on Mon Dec 18 18:43:00 2023 </h3>  
 
<details> 
<summary>Git Diff (293 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
new file mode 100644
index 00000000..4e920ec4
--- /dev/null
+++ b/components/enterprise-contract/download-service.yaml
@@ -0,0 +1,275 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: ec-cli-download-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - route.openshift.io
+    resourceNames:
+      - ec-cli-download-route
+    resources:
+      - routes
+    verbs:
+      - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: ec-cli-download-role-binding
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ec-cli-download-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: ec-cli-download-cluster-role
+  namespace: enterprise-contract-service
+rules:
+  - apiGroups:
+      - console.openshift.io
+    resources:
+      - consoleclidownloads
+    verbs:
+      - create
+      - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: ec-cli-download-cluster-role-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: ec-cli-download-cluster-role
+subjects:
+  - kind: ServiceAccount
+    name: default
+    namespace: enterprise-contract-service
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
+    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-deployment
+  namespace: enterprise-contract-service
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: ec-cli-download
+  template:
+    metadata:
+      labels:
+        app.kubernetes.io/name: ec-cli-download
+    spec:
+      containers:
+        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
+          name: http
+          ports:
+            - containerPort: 8443
+              name: https
+              protocol: TCP
+          resources:
+            limits:
+              cpu: 100m
+              memory: 100Mi
+            requests:
+              cpu: 100m
+              memory: 10Mi
+          securityContext:
+            #readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/private
+              name: tls-key
+              readOnly: true
+            - mountPath: /opt/app-root/httpd-ssl/certs
+              name: tls-certificate
+              readOnly: true
+      initContainers:
+        - args:
+            - |
+              #!/usr/bin/bash
+
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+
+              function handle_error {
+                sleep infinity
+              }
+              trap handle_error ERR
+
+              imgref=$({
+                dir="$(mktemp --directory --tmpdir=.)"
+                cd "${dir}"
+                oc image extract "$EC_TASK_BUNDLE_REF"
+                jq -r '.spec.steps[0].image' verify-enterprise-contract
+                cd ..
+                rm -rf "${dir}"
+              })
+              echo "Determined ec CLI image to be ${imgref}"
+
+              base="${imgref%:*}"
+              base="${imgref%@*}"
+
+              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
+
+              download_ec() {
+                os="$1"
+                architecture="$2"
+                digest="$3"
+
+                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
+
+                mkdir -p "${os}_${architecture}"
+                oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
+                chmod +x "${os}_${architecture}/ec"
+                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
+                echo "Downloaded ${base}@${digest}"
+              }
+
+              while read -r line; do
+                read -r -a args <<< "${line}"
+                download_ec "${args[@]}" &
+              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
+
+              pids=$(jobs -p)
+              (
+                trap 'exit 0' TERM
+                while true
+                do
+                  echo Downloading...
+                  sleep 3
+                done
+              ) &
+              ticker_pid=$!
+
+              # shellcheck disable=SC2046
+              wait $pids
+              kill $ticker_pid
+
+              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
+
+              {
+                echo "apiVersion: console.openshift.io/v1
+              kind: ConsoleCLIDownload
+              metadata:
+                name: ec-cli
+              spec:
+                description: |
+                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
+                displayName: ec - Enterprise Contract CLI
+                links:"
+                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
+                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
+              } | oc apply -f -
+
+              {
+                echo '<!doctype html>
+              <html>
+              <style>
+              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
+              ul { list-style: none; padding-left: 0; }
+              </style>
+              <body>
+              <ul>'
+                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
+                echo '</ul>
+              </body>
+              </html>'
+              } > index.html
+          command:
+            - /bin/bash
+            - -c
+          env:
+            - name: EC_TASK_BUNDLE_REF
+              valueFrom:
+                configMapKeyRef:
+                  key: verify_ec_task_bundle
+                  name: ec-defaults
+          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
+          name: download
+          resources:
+            limits:
+              cpu: 1000m
+              memory: 512Mi
+            requests:
+              cpu: 500m
+              memory: 128Mi
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+          volumeMounts:
+            - mountPath: /var/www/html
+              name: wwwdata
+          workingDir: /var/www/html
+      volumes:
+        - emptyDir: {}
+          name: wwwdata
+        - name: tls-key
+          secret:
+            items:
+              - key: tls.key
+                path: server.pem
+            secretName: ec-cli-download-tls
+        - name: tls-certificate
+          secret:
+            items:
+              - key: tls.crt
+                path: server.pem
+            secretName: ec-cli-download-tls
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: 2
+    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-service
+  namespace: enterprise-contract-service
+spec:
+  ports:
+    - name: https
+      port: 8443
+      targetPort: https
+  selector:
+    app.kubernetes.io/name: ec-cli-download
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app.kubernetes.io/name: ec-cli-download
+    app.kubernetes.io/part-of: enterprise-contract
+  name: ec-cli-download-route
+  namespace: enterprise-contract-service
+spec:
+  port:
+    targetPort: https
+  tls:
+    termination: reencrypt
+  to:
+    kind: Service
+    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 52acea9a..ea65f1ba 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
+  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-1825c25a/development/components/enterprise-contract/kustomize.out.yaml
207,235d206
< kind: Role
< metadata:
<   name: ec-cli-download-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - route.openshift.io
<   resourceNames:
<   - ec-cli-download-route
<   resources:
<   - routes
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: ec-cli-download-cluster-role
<   namespace: enterprise-contract-service
< rules:
< - apiGroups:
<   - console.openshift.io
<   resources:
<   - consoleclidownloads
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
304,317d274
<   name: ec-cli-download-role-binding
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: ec-cli-download-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
343,355d299
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: ec-cli-download-cluster-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: ec-cli-download-cluster-role
< subjects:
< - kind: ServiceAccount
<   name: default
<   namespace: enterprise-contract-service
< ---
367,569d310
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-service
<   namespace: enterprise-contract-service
< spec:
<   ports:
<   - name: https
<     port: 8443
<     targetPort: https
<   selector:
<     app.kubernetes.io/name: ec-cli-download
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "2"
<     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
<       only has the latest tag, and that is the version we want here
<     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
<       its configuration
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-deployment
<   namespace: enterprise-contract-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: ec-cli-download
<   template:
<     metadata:
<       labels:
<         app.kubernetes.io/name: ec-cli-download
<     spec:
<       containers:
<       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
<         name: http
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 100m
<             memory: 100Mi
<           requests:
<             cpu: 100m
<             memory: 10Mi
<         securityContext:
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/private
<           name: tls-key
<           readOnly: true
<         - mountPath: /opt/app-root/httpd-ssl/certs
<           name: tls-certificate
<           readOnly: true
<       initContainers:
<       - args:
<         - |
<           #!/usr/bin/bash
< 
<           set -o errexit
<           set -o nounset
<           set -o pipefail
< 
<           function handle_error {
<             sleep infinity
<           }
<           trap handle_error ERR
< 
<           imgref=$({
<             dir="$(mktemp --directory --tmpdir=.)"
<             cd "${dir}"
<             oc image extract "$EC_TASK_BUNDLE_REF"
<             jq -r '.spec.steps[0].image' verify-enterprise-contract
<             cd ..
<             rm -rf "${dir}"
<           })
<           echo "Determined ec CLI image to be ${imgref}"
< 
<           base="${imgref%:*}"
<           base="${imgref%@*}"
< 
<           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
< 
<           download_ec() {
<             os="$1"
<             architecture="$2"
<             digest="$3"
< 
<             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
< 
<             mkdir -p "${os}_${architecture}"
<             oc image extract "${base}@${digest}" --path /usr/bin/ec:"${os}_${architecture}" --confirm
<             chmod +x "${os}_${architecture}/ec"
<             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
<             echo "Downloaded ${base}@${digest}"
<           }
< 
<           while read -r line; do
<             read -r -a args <<< "${line}"
<             download_ec "${args[@]}" &
<           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
< 
<           pids=$(jobs -p)
<           (
<             trap 'exit 0' TERM
<             while true
<             do
<               echo Downloading...
<               sleep 3
<             done
<           ) &
<           ticker_pid=$!
< 
<           # shellcheck disable=SC2046
<           wait $pids
<           kill $ticker_pid
< 
<           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
< 
<           {
<             echo "apiVersion: console.openshift.io/v1
<           kind: ConsoleCLIDownload
<           metadata:
<             name: ec-cli
<           spec:
<             description: |
<               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
<             displayName: ec - Enterprise Contract CLI
<             links:"
<             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
<                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
<           } | oc apply -f -
< 
<           {
<             echo '<!doctype html>
<           <html>
<           <style>
<           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
<           ul { list-style: none; padding-left: 0; }
<           </style>
<           <body>
<           <ul>'
<             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
<             echo '</ul>
<           </body>
<           </html>'
<           } > index.html
<         command:
<         - /bin/bash
<         - -c
<         env:
<         - name: EC_TASK_BUNDLE_REF
<           valueFrom:
<             configMapKeyRef:
<               key: verify_ec_task_bundle
<               name: ec-defaults
<         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
<         name: download
<         resources:
<           limits:
<             cpu: 1000m
<             memory: 512Mi
<           requests:
<             cpu: 500m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /var/www/html
<           name: wwwdata
<         workingDir: /var/www/html
<       volumes:
<       - emptyDir: {}
<         name: wwwdata
<       - name: tls-key
<         secret:
<           items:
<           - key: tls.key
<             path: server.pem
<           secretName: ec-cli-download-tls
<       - name: tls-certificate
<         secret:
<           items:
<           - key: tls.crt
<             path: server.pem
<           secretName: ec-cli-download-tls
< ---
733,749d473
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   labels:
<     app.kubernetes.io/name: ec-cli-download
<     app.kubernetes.io/part-of: enterprise-contract
<   name: ec-cli-download-route
<   namespace: enterprise-contract-service
< spec:
<   port:
<     targetPort: https
<   tls:
<     termination: reencrypt
<   to:
<     kind: Service
<     name: ec-cli-download-service 
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

./commit-2dc39822/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
