# kustomize changes tracked by commits 
### This file generated at Mon Dec 18 00:07:09 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ee49b48d to 034c8e3f on Sun Dec 17 22:41:36 2023 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index 7c323668..c2c4f396 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=6fd473982b260457133bc706af82beb22e721061
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=6fd473982b260457133bc706af82beb22e721061
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=6fd473982b260457133bc706af82beb22e721061
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 6fd473982b260457133bc706af82beb22e721061
+  newTag: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index d17bc2fb..06bfa323 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 6fd473982b260457133bc706af82beb22e721061
+    value: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index b9477c0c..f38a9a0c 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=6fd473982b260457133bc706af82beb22e721061
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (330 lines)</summary>  

``` 
./commit-ee49b48d/production/components/jvm-build-service/production/kustomize.out.yaml
182,191d181
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
211,212d200
<                             verificationFailures:
<                               type: string
225,226d212
<                     buildId:
<                       type: string
260,263d245
<                         disabledPlugins:
<                           items:
<                             type: string
<                           type: array
271d252
<                           description: Deprecated
372,375d352
<                     allowed:
<                       type: boolean
<                     buildId:
<                       type: string
382,385d358
<                     rebuildAvailable:
<                       type: boolean
<                     source:
<                       type: string
387a361,420
>               currentBuildRecipe:
>                 description: BuildRecipe the current build recipe. If build is done
>                   then this recipe was used to get to the current state Deprecated
>                 properties:
>                   additionalDownloads:
>                     items:
>                       properties:
>                         binaryPath:
>                           type: string
>                         fileName:
>                           type: string
>                         packageName:
>                           type: string
>                         sha256:
>                           type: string
>                         type:
>                           type: string
>                         uri:
>                           type: string
>                       required:
>                       - type
>                       type: object
>                     type: array
>                   additionalMemory:
>                     type: integer
>                   allowedDifferences:
>                     items:
>                       type: string
>                     type: array
>                   commandLine:
>                     items:
>                       type: string
>                     type: array
>                   disableSubmodules:
>                     type: boolean
>                   enforceVersion:
>                     type: string
>                   image:
>                     type: string
>                   javaVersion:
>                     type: string
>                   pipeline:
>                     type: string
>                   postBuildScript:
>                     type: string
>                   preBuildScript:
>                     type: string
>                   repositories:
>                     items:
>                       type: string
>                     type: array
>                   tool:
>                     type: string
>                   toolVersion:
>                     type: string
>                   toolVersions:
>                     additionalProperties:
>                       type: string
>                     type: object
>                 type: object
391a425,429
>               diagnosticDockerFiles:
>                 description: Deprecated
>                 items:
>                   type: string
>                 type: array
402a441,503
>               failedBuildRecipes:
>                 description: FailedBuildRecipes recipes that resulted in a failure
>                   if the current state is failed this may include the current BuildRecipe
>                   Deprecated
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
>                     disableSubmodules:
>                       type: boolean
>                     enforceVersion:
>                       type: string
>                     image:
>                       type: string
>                     javaVersion:
>                       type: string
>                     pipeline:
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
406a508,510
>               lastCompletedBuildPipelineRun:
>                 description: Deprecated
>                 type: string
447,450d550
<                     disabledPlugins:
<                       items:
<                         type: string
<                       type: array
458d557
<                       description: Deprecated
583,591d681
<               gitSourceArchive:
<                 properties:
<                   disableSSLVerification:
<                     type: boolean
<                   identity:
<                     type: string
<                   url:
<                     type: string
<                 type: object
593a684,687
>               host:
>                 type: string
>               insecure:
>                 type: boolean
604a699,704
>               owner:
>                 type: string
>               port:
>                 type: string
>               prependTag:
>                 type: string
607,608d706
<                   dontReuseExisting:
<                     type: boolean
656a755,756
>               repository:
>                 type: string
661a762,763
>               secretName:
>                 type: string
727,806d828
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
912a935,937
>               quota:
>                 description: DEPRECATED
>                 type: string
993,1010d1017
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
1035,1036d1041
<   - jvmimagescans
<   - jvmimagescans/status
1387c1392
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:6fd473982b260457133bc706af82beb22e721061
1401a1407,1410
>         volumeMounts:
>         - mountPath: /workspace
>           name: quaytoken
>           readOnly: true
1404a1414,1418
>       volumes:
>       - name: quaytoken
>         secret:
>           optional: false
>           secretName: quaytoken 
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

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-034c8e3f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from ee49b48d to 034c8e3f on Sun Dec 17 22:41:36 2023 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index 7c323668..c2c4f396 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=6fd473982b260457133bc706af82beb22e721061
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=6fd473982b260457133bc706af82beb22e721061
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=6fd473982b260457133bc706af82beb22e721061
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 6fd473982b260457133bc706af82beb22e721061
+  newTag: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index d17bc2fb..06bfa323 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 6fd473982b260457133bc706af82beb22e721061
+    value: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index b9477c0c..f38a9a0c 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=6fd473982b260457133bc706af82beb22e721061
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (330 lines)</summary>  

``` 
./commit-ee49b48d/staging/components/jvm-build-service/staging/kustomize.out.yaml
182,191d181
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
211,212d200
<                             verificationFailures:
<                               type: string
225,226d212
<                     buildId:
<                       type: string
260,263d245
<                         disabledPlugins:
<                           items:
<                             type: string
<                           type: array
271d252
<                           description: Deprecated
372,375d352
<                     allowed:
<                       type: boolean
<                     buildId:
<                       type: string
382,385d358
<                     rebuildAvailable:
<                       type: boolean
<                     source:
<                       type: string
387a361,420
>               currentBuildRecipe:
>                 description: BuildRecipe the current build recipe. If build is done
>                   then this recipe was used to get to the current state Deprecated
>                 properties:
>                   additionalDownloads:
>                     items:
>                       properties:
>                         binaryPath:
>                           type: string
>                         fileName:
>                           type: string
>                         packageName:
>                           type: string
>                         sha256:
>                           type: string
>                         type:
>                           type: string
>                         uri:
>                           type: string
>                       required:
>                       - type
>                       type: object
>                     type: array
>                   additionalMemory:
>                     type: integer
>                   allowedDifferences:
>                     items:
>                       type: string
>                     type: array
>                   commandLine:
>                     items:
>                       type: string
>                     type: array
>                   disableSubmodules:
>                     type: boolean
>                   enforceVersion:
>                     type: string
>                   image:
>                     type: string
>                   javaVersion:
>                     type: string
>                   pipeline:
>                     type: string
>                   postBuildScript:
>                     type: string
>                   preBuildScript:
>                     type: string
>                   repositories:
>                     items:
>                       type: string
>                     type: array
>                   tool:
>                     type: string
>                   toolVersion:
>                     type: string
>                   toolVersions:
>                     additionalProperties:
>                       type: string
>                     type: object
>                 type: object
391a425,429
>               diagnosticDockerFiles:
>                 description: Deprecated
>                 items:
>                   type: string
>                 type: array
402a441,503
>               failedBuildRecipes:
>                 description: FailedBuildRecipes recipes that resulted in a failure
>                   if the current state is failed this may include the current BuildRecipe
>                   Deprecated
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
>                     disableSubmodules:
>                       type: boolean
>                     enforceVersion:
>                       type: string
>                     image:
>                       type: string
>                     javaVersion:
>                       type: string
>                     pipeline:
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
406a508,510
>               lastCompletedBuildPipelineRun:
>                 description: Deprecated
>                 type: string
447,450d550
<                     disabledPlugins:
<                       items:
<                         type: string
<                       type: array
458d557
<                       description: Deprecated
583,591d681
<               gitSourceArchive:
<                 properties:
<                   disableSSLVerification:
<                     type: boolean
<                   identity:
<                     type: string
<                   url:
<                     type: string
<                 type: object
593a684,687
>               host:
>                 type: string
>               insecure:
>                 type: boolean
604a699,704
>               owner:
>                 type: string
>               port:
>                 type: string
>               prependTag:
>                 type: string
607,608d706
<                   dontReuseExisting:
<                     type: boolean
656a755,756
>               repository:
>                 type: string
661a762,763
>               secretName:
>                 type: string
727,806d828
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
912a935,937
>               quota:
>                 description: DEPRECATED
>                 type: string
993,1010d1017
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
1035,1036d1041
<   - jvmimagescans
<   - jvmimagescans/status
1387c1392
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:6fd473982b260457133bc706af82beb22e721061
1401a1407,1410
>         volumeMounts:
>         - mountPath: /workspace
>           name: quaytoken
>           readOnly: true
1404a1414,1418
>       volumes:
>       - name: quaytoken
>         secret:
>           optional: false
>           secretName: quaytoken 
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

./commit-034c8e3f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-034c8e3f/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from ee49b48d to 034c8e3f on Sun Dec 17 22:41:36 2023 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index 7c323668..c2c4f396 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=6fd473982b260457133bc706af82beb22e721061
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=6fd473982b260457133bc706af82beb22e721061
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=6fd473982b260457133bc706af82beb22e721061
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 6fd473982b260457133bc706af82beb22e721061
+  newTag: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index d17bc2fb..06bfa323 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 6fd473982b260457133bc706af82beb22e721061
+    value: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index b9477c0c..f38a9a0c 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=6fd473982b260457133bc706af82beb22e721061
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (330 lines)</summary>  

``` 
./commit-ee49b48d/development/components/jvm-build-service/development/kustomize.out.yaml
182,191d181
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
211,212d200
<                             verificationFailures:
<                               type: string
225,226d212
<                     buildId:
<                       type: string
260,263d245
<                         disabledPlugins:
<                           items:
<                             type: string
<                           type: array
271d252
<                           description: Deprecated
372,375d352
<                     allowed:
<                       type: boolean
<                     buildId:
<                       type: string
382,385d358
<                     rebuildAvailable:
<                       type: boolean
<                     source:
<                       type: string
387a361,420
>               currentBuildRecipe:
>                 description: BuildRecipe the current build recipe. If build is done
>                   then this recipe was used to get to the current state Deprecated
>                 properties:
>                   additionalDownloads:
>                     items:
>                       properties:
>                         binaryPath:
>                           type: string
>                         fileName:
>                           type: string
>                         packageName:
>                           type: string
>                         sha256:
>                           type: string
>                         type:
>                           type: string
>                         uri:
>                           type: string
>                       required:
>                       - type
>                       type: object
>                     type: array
>                   additionalMemory:
>                     type: integer
>                   allowedDifferences:
>                     items:
>                       type: string
>                     type: array
>                   commandLine:
>                     items:
>                       type: string
>                     type: array
>                   disableSubmodules:
>                     type: boolean
>                   enforceVersion:
>                     type: string
>                   image:
>                     type: string
>                   javaVersion:
>                     type: string
>                   pipeline:
>                     type: string
>                   postBuildScript:
>                     type: string
>                   preBuildScript:
>                     type: string
>                   repositories:
>                     items:
>                       type: string
>                     type: array
>                   tool:
>                     type: string
>                   toolVersion:
>                     type: string
>                   toolVersions:
>                     additionalProperties:
>                       type: string
>                     type: object
>                 type: object
391a425,429
>               diagnosticDockerFiles:
>                 description: Deprecated
>                 items:
>                   type: string
>                 type: array
402a441,503
>               failedBuildRecipes:
>                 description: FailedBuildRecipes recipes that resulted in a failure
>                   if the current state is failed this may include the current BuildRecipe
>                   Deprecated
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
>                     disableSubmodules:
>                       type: boolean
>                     enforceVersion:
>                       type: string
>                     image:
>                       type: string
>                     javaVersion:
>                       type: string
>                     pipeline:
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
406a508,510
>               lastCompletedBuildPipelineRun:
>                 description: Deprecated
>                 type: string
447,450d550
<                     disabledPlugins:
<                       items:
<                         type: string
<                       type: array
458d557
<                       description: Deprecated
583,591d681
<               gitSourceArchive:
<                 properties:
<                   disableSSLVerification:
<                     type: boolean
<                   identity:
<                     type: string
<                   url:
<                     type: string
<                 type: object
593a684,687
>               host:
>                 type: string
>               insecure:
>                 type: boolean
604a699,704
>               owner:
>                 type: string
>               port:
>                 type: string
>               prependTag:
>                 type: string
607,608d706
<                   dontReuseExisting:
<                     type: boolean
656a755,756
>               repository:
>                 type: string
661a762,763
>               secretName:
>                 type: string
727,806d828
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
912a935,937
>               quota:
>                 description: DEPRECATED
>                 type: string
993,1010d1017
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
1035,1036d1041
<   - jvmimagescans
<   - jvmimagescans/status
1387c1392
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:6fd473982b260457133bc706af82beb22e721061
1401a1407,1410
>         volumeMounts:
>         - mountPath: /workspace
>           name: quaytoken
>           readOnly: true
1404a1414,1418
>       volumes:
>       - name: quaytoken
>         secret:
>           optional: false
>           secretName: quaytoken 
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

./commit-034c8e3f/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from f868e2fd to ee49b48d on Fri Dec 15 21:14:24 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml b/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f49874b3
--- /dev/null
+++ b/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prd-host1
diff --git a/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..0af12f66
--- /dev/null
+++ b/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 823529d3-e891-45a6-8f87-e63ca75630cf
diff --git a/components/backup/production/stone-prd-host1/kustomization.yaml b/components/backup/production/stone-prd-host1/kustomization.yaml
index 229a13d9..98aab871 100644
--- a/components/backup/production/stone-prd-host1/kustomization.yaml
+++ b/components/backup/production/stone-prd-host1/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/all-clusters
+  - ../../base/host
 patches:
   - target:
       group: external-secrets.io
@@ -9,3 +9,15 @@ patches:
       kind: ExternalSecret
       name: backup-s3-credentials
     path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-f868e2fd/production/components/backup/production/stone-prd-host1/kustomize.out.yaml
33,107d32
< ---
< apiVersion: oadp.openshift.io/v1alpha1
< kind: DataProtectionApplication
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-1"
<   name: velero-aws
<   namespace: openshift-adp
< spec:
<   backupLocations:
<   - velero:
<       config:
<         kmsKeyId: 823529d3-e891-45a6-8f87-e63ca75630cf
<         profile: default
<         region: us-east-1
<       credential:
<         key: cloud
<         name: backup-s3-credentials
<       default: true
<       objectStorage:
<         bucket: backup-stone-prd-host1
<         prefix: velero
<       provider: aws
<   configuration:
<     restic:
<       enable: false
<     velero:
<       defaultPlugins:
<       - openshift
<       - aws
< ---
< apiVersion: operators.coreos.com/v1
< kind: OperatorGroup
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
<   name: openshift-adp
<   namespace: openshift-adp
< spec:
<   targetNamespaces:
<   - openshift-adp
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2"
<   name: redhat-oadp-operator
<   namespace: openshift-adp
< spec:
<   channel: stable-1.3
<   installPlanApproval: Automatic
<   name: redhat-oadp-operator
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace
< ---
< apiVersion: velero.io/v1
< kind: Schedule
< metadata:
<   name: backup-toolchain-host
<   namespace: openshift-adp
< spec:
<   schedule: 30 1,13 * * *
<   template:
<     includedNamespaces:
<     - toolchain-host-operator
<     includedResources:
<     - bannedusers.toolchain.dev.openshift.com
<     - masteruserrecords.toolchain.dev.openshift.com
<     - spacebindings.toolchain.dev.openshift.com
<     - spaces.toolchain.dev.openshift.com
<     - usersignups.toolchain.dev.openshift.com
<     storageLocation: velero-aws-1
<     ttl: 720h0m0s
<   useOwnerReferencesInBackup: true 
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

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ee49b48d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from f868e2fd to ee49b48d on Fri Dec 15 21:14:24 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml b/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f49874b3
--- /dev/null
+++ b/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prd-host1
diff --git a/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..0af12f66
--- /dev/null
+++ b/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 823529d3-e891-45a6-8f87-e63ca75630cf
diff --git a/components/backup/production/stone-prd-host1/kustomization.yaml b/components/backup/production/stone-prd-host1/kustomization.yaml
index 229a13d9..98aab871 100644
--- a/components/backup/production/stone-prd-host1/kustomization.yaml
+++ b/components/backup/production/stone-prd-host1/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/all-clusters
+  - ../../base/host
 patches:
   - target:
       group: external-secrets.io
@@ -9,3 +9,15 @@ patches:
       kind: ExternalSecret
       name: backup-s3-credentials
     path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml 
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

./commit-ee49b48d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ee49b48d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from f868e2fd to ee49b48d on Fri Dec 15 21:14:24 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml b/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f49874b3
--- /dev/null
+++ b/components/backup/production/stone-prd-host1/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prd-host1
diff --git a/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..0af12f66
--- /dev/null
+++ b/components/backup/production/stone-prd-host1/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 823529d3-e891-45a6-8f87-e63ca75630cf
diff --git a/components/backup/production/stone-prd-host1/kustomization.yaml b/components/backup/production/stone-prd-host1/kustomization.yaml
index 229a13d9..98aab871 100644
--- a/components/backup/production/stone-prd-host1/kustomization.yaml
+++ b/components/backup/production/stone-prd-host1/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/all-clusters
+  - ../../base/host
 patches:
   - target:
       group: external-secrets.io
@@ -9,3 +9,15 @@ patches:
       kind: ExternalSecret
       name: backup-s3-credentials
     path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml 
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

./commit-ee49b48d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from 0af9d436 to f868e2fd on Fri Dec 15 19:59:02 2023 </h3>  
 
<details> 
<summary>Git Diff (246 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index b3ae5cca..7cc41273 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 7bbcb975..10f1b4b6 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 11a93c96..5a4bb334 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7069bc9c..47fcd4f1 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -317,6 +316,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1321,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1347,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1392,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1499,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1570,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
@@ -1884,7 +1899,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b34e2834..80463ba6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -317,6 +316,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1321,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1347,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1392,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1499,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1570,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
@@ -1884,7 +1899,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace 
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

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f868e2fd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 0af9d436 to f868e2fd on Fri Dec 15 19:59:02 2023 </h3>  
 
<details> 
<summary>Git Diff (246 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index b3ae5cca..7cc41273 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 7bbcb975..10f1b4b6 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 11a93c96..5a4bb334 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7069bc9c..47fcd4f1 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -317,6 +316,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1321,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1347,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1392,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1499,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1570,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
@@ -1884,7 +1899,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b34e2834..80463ba6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -317,6 +316,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1321,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1347,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1392,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1499,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1570,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
@@ -1884,7 +1899,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (94 lines)</summary>  

``` 
./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
319d318
<   - resolution.tekton.dev
1324c1323
<         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1349a1349,1350
>             add:
>             - NET_BIND_SERVICE
1393c1394
<         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1500,1504c1501
<         - name: TEKTON_RESULTS_API_SERVICE
<           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
<         - name: AUTH_MODE
<           value: token
<         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1511,1517d1507
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
1520a1511,1512
>             add:
>             - NET_BIND_SERVICE
1580,1586d1571
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
1592d1576
<               readOnlyRootFilesystem: true
1902c1886
<   channel: pipelines-1.13
---
>   channel: pipelines-1.12
./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
319d318
<   - resolution.tekton.dev
1324c1323
<         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1349a1349,1350
>             add:
>             - NET_BIND_SERVICE
1393c1394
<         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1500,1504c1501
<         - name: TEKTON_RESULTS_API_SERVICE
<           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
<         - name: AUTH_MODE
<           value: token
<         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1511,1517d1507
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
1520a1511,1512
>             add:
>             - NET_BIND_SERVICE
1580,1586d1571
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
1592d1576
<               readOnlyRootFilesystem: true
1902c1886
<   channel: pipelines-1.13
---
>   channel: pipelines-1.12 
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

./commit-f868e2fd/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f868e2fd/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 0af9d436 to f868e2fd on Fri Dec 15 19:59:02 2023 </h3>  
 
<details> 
<summary>Git Diff (246 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index b3ae5cca..7cc41273 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 7bbcb975..10f1b4b6 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 11a93c96..5a4bb334 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=9d4f80facd669d7bd0bda4e030be4978e2859995
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7069bc9c..47fcd4f1 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -317,6 +316,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1321,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1347,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1392,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1499,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1570,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
@@ -1884,7 +1899,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b34e2834..80463ba6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -317,6 +316,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1321,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1347,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1392,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1499,18 +1497,27 @@ spec:
           value: tekton-results-config-observability
         - name: METRICS_DOMAIN
           value: tekton.dev/results
-        image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: watcher
         ports:
         - containerPort: 9090
           name: metrics
         - containerPort: 8008
           name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 2Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1570,11 +1577,19 @@ spec:
             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
             imagePullPolicy: Always
             name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
                 drop:
                 - ALL
+              readOnlyRootFilesystem: true
               runAsNonRoot: true
               seccompProfile:
                 type: RuntimeDefault
@@ -1884,7 +1899,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-0af9d436/development/components/pipeline-service/development/kustomize.out.yaml
1580,1586d1579
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
2043c2036
<   channel: pipelines-1.13
---
>   channel: pipelines-1.12 
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

./commit-f868e2fd/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from 1373c15d to 0af9d436 on Fri Dec 15 19:39:23 2023 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/backup-toolchain-host-schedule.yaml
new file mode 100644
index 00000000..6c32225a
--- /dev/null
+++ b/components/backup/base/host/backup-toolchain-host-schedule.yaml
@@ -0,0 +1,18 @@
+apiVersion: velero.io/v1
+kind: Schedule
+metadata:
+  name: backup-toolchain-host
+spec:
+  schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
+  template:
+    includedNamespaces:
+      - toolchain-host-operator
+    includedResources:
+      - bannedusers.toolchain.dev.openshift.com
+      - masteruserrecords.toolchain.dev.openshift.com
+      - spacebindings.toolchain.dev.openshift.com
+      - spaces.toolchain.dev.openshift.com
+      - usersignups.toolchain.dev.openshift.com
+    storageLocation: velero-aws-1
+    ttl: 720h0m0s
+  useOwnerReferencesInBackup: true
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 50ec2a5f..9df29e8e 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: openshift-adp
 resources:
   - ../all-clusters
   - ../all-clusters/oadp
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/backup-toolchain-member-schedule.yaml
new file mode 100644
index 00000000..652a9ffc
--- /dev/null
+++ b/components/backup/base/member/backup-toolchain-member-schedule.yaml
@@ -0,0 +1,13 @@
+apiVersion: velero.io/v1
+kind: Schedule
+metadata:
+  name: backup-toolchain-member
+spec:
+  schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
+  template:
+    includedResources:
+      - spacebindingrequests.toolchain.dev.openshift.com
+      - spacerequests.toolchain.dev.openshift.com
+    storageLocation: velero-aws-1
+    ttl: 720h0m0s
+  useOwnerReferencesInBackup: true
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index 5bf33587..3381df1f 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
   - ../all-clusters
   - ../all-clusters/oadp
   - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-1373c15d/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
145,159d144
< ---
< apiVersion: velero.io/v1
< kind: Schedule
< metadata:
<   name: backup-toolchain-member
<   namespace: openshift-adp
< spec:
<   schedule: 30 1,13 * * *
<   template:
<     includedResources:
<     - spacebindingrequests.toolchain.dev.openshift.com
<     - spacerequests.toolchain.dev.openshift.com
<     storageLocation: velero-aws-1
<     ttl: 720h0m0s
<   useOwnerReferencesInBackup: true
./commit-1373c15d/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
145,159d144
< ---
< apiVersion: velero.io/v1
< kind: Schedule
< metadata:
<   name: backup-toolchain-member
<   namespace: openshift-adp
< spec:
<   schedule: 30 1,13 * * *
<   template:
<     includedResources:
<     - spacebindingrequests.toolchain.dev.openshift.com
<     - spacerequests.toolchain.dev.openshift.com
<     storageLocation: velero-aws-1
<     ttl: 720h0m0s
<   useOwnerReferencesInBackup: true 
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

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 1373c15d to 0af9d436 on Fri Dec 15 19:39:23 2023 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/backup-toolchain-host-schedule.yaml
new file mode 100644
index 00000000..6c32225a
--- /dev/null
+++ b/components/backup/base/host/backup-toolchain-host-schedule.yaml
@@ -0,0 +1,18 @@
+apiVersion: velero.io/v1
+kind: Schedule
+metadata:
+  name: backup-toolchain-host
+spec:
+  schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
+  template:
+    includedNamespaces:
+      - toolchain-host-operator
+    includedResources:
+      - bannedusers.toolchain.dev.openshift.com
+      - masteruserrecords.toolchain.dev.openshift.com
+      - spacebindings.toolchain.dev.openshift.com
+      - spaces.toolchain.dev.openshift.com
+      - usersignups.toolchain.dev.openshift.com
+    storageLocation: velero-aws-1
+    ttl: 720h0m0s
+  useOwnerReferencesInBackup: true
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 50ec2a5f..9df29e8e 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: openshift-adp
 resources:
   - ../all-clusters
   - ../all-clusters/oadp
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/backup-toolchain-member-schedule.yaml
new file mode 100644
index 00000000..652a9ffc
--- /dev/null
+++ b/components/backup/base/member/backup-toolchain-member-schedule.yaml
@@ -0,0 +1,13 @@
+apiVersion: velero.io/v1
+kind: Schedule
+metadata:
+  name: backup-toolchain-member
+spec:
+  schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
+  template:
+    includedResources:
+      - spacebindingrequests.toolchain.dev.openshift.com
+      - spacerequests.toolchain.dev.openshift.com
+    storageLocation: velero-aws-1
+    ttl: 720h0m0s
+  useOwnerReferencesInBackup: true
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index 5bf33587..3381df1f 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
   - ../all-clusters
   - ../all-clusters/oadp
   - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (39 lines)</summary>  

``` 
./commit-1373c15d/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
88,107d87
< ---
< apiVersion: velero.io/v1
< kind: Schedule
< metadata:
<   name: backup-toolchain-host
<   namespace: openshift-adp
< spec:
<   schedule: 30 1,13 * * *
<   template:
<     includedNamespaces:
<     - toolchain-host-operator
<     includedResources:
<     - bannedusers.toolchain.dev.openshift.com
<     - masteruserrecords.toolchain.dev.openshift.com
<     - spacebindings.toolchain.dev.openshift.com
<     - spaces.toolchain.dev.openshift.com
<     - usersignups.toolchain.dev.openshift.com
<     storageLocation: velero-aws-1
<     ttl: 720h0m0s
<   useOwnerReferencesInBackup: true
./commit-1373c15d/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
145,159d144
< ---
< apiVersion: velero.io/v1
< kind: Schedule
< metadata:
<   name: backup-toolchain-member
<   namespace: openshift-adp
< spec:
<   schedule: 30 1,13 * * *
<   template:
<     includedResources:
<     - spacebindingrequests.toolchain.dev.openshift.com
<     - spacerequests.toolchain.dev.openshift.com
<     storageLocation: velero-aws-1
<     ttl: 720h0m0s
<   useOwnerReferencesInBackup: true 
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

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 1373c15d to 0af9d436 on Fri Dec 15 19:39:23 2023 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/backup-toolchain-host-schedule.yaml
new file mode 100644
index 00000000..6c32225a
--- /dev/null
+++ b/components/backup/base/host/backup-toolchain-host-schedule.yaml
@@ -0,0 +1,18 @@
+apiVersion: velero.io/v1
+kind: Schedule
+metadata:
+  name: backup-toolchain-host
+spec:
+  schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
+  template:
+    includedNamespaces:
+      - toolchain-host-operator
+    includedResources:
+      - bannedusers.toolchain.dev.openshift.com
+      - masteruserrecords.toolchain.dev.openshift.com
+      - spacebindings.toolchain.dev.openshift.com
+      - spaces.toolchain.dev.openshift.com
+      - usersignups.toolchain.dev.openshift.com
+    storageLocation: velero-aws-1
+    ttl: 720h0m0s
+  useOwnerReferencesInBackup: true
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 50ec2a5f..9df29e8e 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: openshift-adp
 resources:
   - ../all-clusters
   - ../all-clusters/oadp
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/backup-toolchain-member-schedule.yaml
new file mode 100644
index 00000000..652a9ffc
--- /dev/null
+++ b/components/backup/base/member/backup-toolchain-member-schedule.yaml
@@ -0,0 +1,13 @@
+apiVersion: velero.io/v1
+kind: Schedule
+metadata:
+  name: backup-toolchain-member
+spec:
+  schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
+  template:
+    includedResources:
+      - spacebindingrequests.toolchain.dev.openshift.com
+      - spacerequests.toolchain.dev.openshift.com
+    storageLocation: velero-aws-1
+    ttl: 720h0m0s
+  useOwnerReferencesInBackup: true
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index 5bf33587..3381df1f 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
   - ../all-clusters
   - ../all-clusters/oadp
   - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml 
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

./commit-0af9d436/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-0af9d436/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-0af9d436/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
