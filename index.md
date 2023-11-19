# kustomize changes tracked by commits 
### This file generated at Sun Nov 19 08:02:00 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2953b774 to e968a73d on Sat Nov 18 18:25:23 2023 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index fcdefbae..f34b2737 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=31dc6e06cd1eb8da513aaf1f22027c4d29974434
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index ef542a0d..61e4af02 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3901737917fa88cc797599322597e0a5dfd0a141
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index aaea638f..59e2b29f 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3901737917fa88cc797599322597e0a5dfd0a141
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 5a1680bd..7b6ea0d6 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
 
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

./commit-e968a73d/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e968a73d/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 2953b774 to e968a73d on Sat Nov 18 18:25:23 2023 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index fcdefbae..f34b2737 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=31dc6e06cd1eb8da513aaf1f22027c4d29974434
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index ef542a0d..61e4af02 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3901737917fa88cc797599322597e0a5dfd0a141
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index aaea638f..59e2b29f 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3901737917fa88cc797599322597e0a5dfd0a141
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 5a1680bd..7b6ea0d6 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
 
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

./commit-e968a73d/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e968a73d/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 2953b774 to e968a73d on Sat Nov 18 18:25:23 2023 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index fcdefbae..f34b2737 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=31dc6e06cd1eb8da513aaf1f22027c4d29974434
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=8f7ff94e0e6a1f1cc920dcc0830d0ce3172e0dcb
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index ef542a0d..61e4af02 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3901737917fa88cc797599322597e0a5dfd0a141
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index aaea638f..59e2b29f 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=3901737917fa88cc797599322597e0a5dfd0a141
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 5a1680bd..7b6ea0d6 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3c7b0bf9d775f8354ea924e439bdf96fe195f006
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=3901737917fa88cc797599322597e0a5dfd0a141
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=3901737917fa88cc797599322597e0a5dfd0a141
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3c7b0bf9d775f8354ea924e439bdf96fe195f006
+    newTag: 3901737917fa88cc797599322597e0a5dfd0a141
 
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

./commit-e968a73d/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-e968a73d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 2fe31146 to 2953b774 on Sat Nov 18 07:17:38 2023 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 6d95cff2..3fc612eb 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../openshift-gitops/overlays/production-and-dev
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index b81528fa..2e3dee78 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../../openshift-gitops/overlays/production-and-dev
 - ../../base/external-secrets
 - ../../base/monitoring
@@ -11,7 +11,7 @@ resources:
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2122 lines)</summary>  

``` 
./commit-2fe31146/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml
1231a1232,2247
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - '*'
>   verbs:
>   - '*'
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - subscriptions
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   verbs:
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   - operatorgroups
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   - packagemanifests/icon
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - '*'
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - helm.openshift.io
>   resources:
>   - projecthelmchartrepositories
>   verbs:
>   - get
>   - list
>   - update
>   - create
>   - watch
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - serviceaccounts
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreams/secrets
>   - imagestreamtags
>   - imagetags
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimports
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   - secrets
>   - services/proxy
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts
>   verbs:
>   - impersonate
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - pods/eviction
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - events
>   - persistentvolumeclaims
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - secrets
>   - serviceaccounts
>   - services
>   - services/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts/token
>   verbs:
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - replicasets
>   - replicasets/scale
>   - statefulsets
>   - statefulsets/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - ingresses
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicationcontrollers/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - networkpolicies
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
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
>   - metrics.k8s.io
>   resources:
>   - pods
>   - nodes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/details
>   verbs:
>   - update
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds
>   verbs:
>   - get
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
>   - deletecollection
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
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
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/log
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs/instantiate
>   - buildconfigs/instantiatebinary
>   - builds/clone
>   verbs:
>   - create
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
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
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigrollbacks
>   - deploymentconfigs/instantiate
>   - deploymentconfigs/rollback
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs/log
>   - deploymentconfigs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - quota.openshift.io
>   resources:
>   - appliedclusterresourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
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
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/custom-host
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
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
>   - networking.k8s.io
>   resources:
>   - networkpolicies
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
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
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
>   - ""
>   resources:
>   - resourcequotausages
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applications.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applicationsets.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applicationsets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - appprojects.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - appprojects
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - argocds.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - argocds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - gitopsservices.pipelines.openshift.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreamtags
>   - imagetags
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   - pods
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - serviceaccounts
>   - services
>   - services/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - bindings
>   - events
>   - limitranges
>   - namespaces/status
>   - pods/log
>   - pods/status
>   - replicationcontrollers/status
>   - resourcequotas
>   - resourcequotas/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - discovery.k8s.io
>   resources:
>   - endpointslices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apps
>   resources:
>   - controllerrevisions
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - statefulsets
>   - statefulsets/scale
>   - statefulsets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   - horizontalpodautoscalers/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - cronjobs/status
>   - jobs
>   - jobs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - replicationcontrollers/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   - poddisruptionbudgets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - '*'
> - apiGroups:
>   - k8s.cni.cncf.io
>   resources:
>   - network-attachment-definitions
>   verbs:
>   - watch
>   - list
>   - get
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - '*'
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindings
>   - roles
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
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   - roles
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
>   - ""
>   - authorization.openshift.io
>   resources:
>   - localresourceaccessreviews
>   - localsubjectaccessreviews
>   - subjectrulesreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - localsubjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - resourceaccessreviews
>   - subjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - security.openshift.io
>   resources:
>   - podsecuritypolicyreviews
>   - podsecuritypolicyselfsubjectreviews
>   - podsecuritypolicysubjectreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindingrestrictions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - admin
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
>   - patch
>   - update
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - configmaps
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - appprojects
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - delete
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2288a3305,3334
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-application-controller
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-server
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-server
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2672c3718
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2789c3835
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2903c3949
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
./commit-2fe31146/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml
1231a1232,2247
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - '*'
>   verbs:
>   - '*'
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - subscriptions
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   verbs:
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   - operatorgroups
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   - packagemanifests/icon
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - '*'
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - helm.openshift.io
>   resources:
>   - projecthelmchartrepositories
>   verbs:
>   - get
>   - list
>   - update
>   - create
>   - watch
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - serviceaccounts
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreams/secrets
>   - imagestreamtags
>   - imagetags
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimports
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   - secrets
>   - services/proxy
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts
>   verbs:
>   - impersonate
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - pods/eviction
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - events
>   - persistentvolumeclaims
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - secrets
>   - serviceaccounts
>   - services
>   - services/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts/token
>   verbs:
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - replicasets
>   - replicasets/scale
>   - statefulsets
>   - statefulsets/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - ingresses
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicationcontrollers/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - networkpolicies
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
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
>   - metrics.k8s.io
>   resources:
>   - pods
>   - nodes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/details
>   verbs:
>   - update
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds
>   verbs:
>   - get
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
>   - deletecollection
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
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
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/log
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs/instantiate
>   - buildconfigs/instantiatebinary
>   - builds/clone
>   verbs:
>   - create
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
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
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigrollbacks
>   - deploymentconfigs/instantiate
>   - deploymentconfigs/rollback
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs/log
>   - deploymentconfigs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - quota.openshift.io
>   resources:
>   - appliedclusterresourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
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
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/custom-host
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
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
>   - networking.k8s.io
>   resources:
>   - networkpolicies
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
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
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
>   - ""
>   resources:
>   - resourcequotausages
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applications.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applicationsets.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applicationsets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - appprojects.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - appprojects
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - argocds.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - argocds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - gitopsservices.pipelines.openshift.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreamtags
>   - imagetags
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   - pods
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - serviceaccounts
>   - services
>   - services/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - bindings
>   - events
>   - limitranges
>   - namespaces/status
>   - pods/log
>   - pods/status
>   - replicationcontrollers/status
>   - resourcequotas
>   - resourcequotas/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - discovery.k8s.io
>   resources:
>   - endpointslices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apps
>   resources:
>   - controllerrevisions
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - statefulsets
>   - statefulsets/scale
>   - statefulsets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   - horizontalpodautoscalers/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - cronjobs/status
>   - jobs
>   - jobs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - replicationcontrollers/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   - poddisruptionbudgets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - '*'
> - apiGroups:
>   - k8s.cni.cncf.io
>   resources:
>   - network-attachment-definitions
>   verbs:
>   - watch
>   - list
>   - get
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - '*'
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindings
>   - roles
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
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   - roles
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
>   - ""
>   - authorization.openshift.io
>   resources:
>   - localresourceaccessreviews
>   - localsubjectaccessreviews
>   - subjectrulesreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - localsubjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - resourceaccessreviews
>   - subjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - security.openshift.io
>   resources:
>   - podsecuritypolicyreviews
>   - podsecuritypolicyselfsubjectreviews
>   - podsecuritypolicysubjectreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindingrestrictions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - admin
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
>   - patch
>   - update
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - configmaps
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - appprojects
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - delete
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2274a3291,3320
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-application-controller
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-server
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-server
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2658c3704
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2775c3821
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2889c3935
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4 
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

./commit-2953b774/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2953b774/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 2fe31146 to 2953b774 on Sat Nov 18 07:17:38 2023 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 6d95cff2..3fc612eb 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../openshift-gitops/overlays/production-and-dev
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index b81528fa..2e3dee78 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../../openshift-gitops/overlays/production-and-dev
 - ../../base/external-secrets
 - ../../base/monitoring
@@ -11,7 +11,7 @@ resources:
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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

./commit-2953b774/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2953b774/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 2fe31146 to 2953b774 on Sat Nov 18 07:17:38 2023 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 6d95cff2..3fc612eb 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../openshift-gitops/overlays/production-and-dev
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index b81528fa..2e3dee78 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../../openshift-gitops/overlays/production-and-dev
 - ../../base/external-secrets
 - ../../base/monitoring
@@ -11,7 +11,7 @@ resources:
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1053 lines)</summary>  

``` 
./commit-2fe31146/development/components/gitops/development/kustomize.out.yaml
1200a1201,2212
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - '*'
>   verbs:
>   - '*'
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - subscriptions
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   verbs:
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   - operatorgroups
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   - packagemanifests/icon
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - '*'
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - helm.openshift.io
>   resources:
>   - projecthelmchartrepositories
>   verbs:
>   - get
>   - list
>   - update
>   - create
>   - watch
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - serviceaccounts
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreams/secrets
>   - imagestreamtags
>   - imagetags
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimports
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   - secrets
>   - services/proxy
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts
>   verbs:
>   - impersonate
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - pods/eviction
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - events
>   - persistentvolumeclaims
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - secrets
>   - serviceaccounts
>   - services
>   - services/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts/token
>   verbs:
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - replicasets
>   - replicasets/scale
>   - statefulsets
>   - statefulsets/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - ingresses
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicationcontrollers/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - networkpolicies
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
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
>   - metrics.k8s.io
>   resources:
>   - pods
>   - nodes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/details
>   verbs:
>   - update
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds
>   verbs:
>   - get
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
>   - deletecollection
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
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
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/log
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs/instantiate
>   - buildconfigs/instantiatebinary
>   - builds/clone
>   verbs:
>   - create
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
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
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigrollbacks
>   - deploymentconfigs/instantiate
>   - deploymentconfigs/rollback
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs/log
>   - deploymentconfigs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - quota.openshift.io
>   resources:
>   - appliedclusterresourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
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
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/custom-host
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
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
>   - networking.k8s.io
>   resources:
>   - networkpolicies
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
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
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
>   - ""
>   resources:
>   - resourcequotausages
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applications.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applicationsets.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applicationsets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - appprojects.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - appprojects
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - argocds.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - argocds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - gitopsservices.pipelines.openshift.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreamtags
>   - imagetags
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   - pods
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - serviceaccounts
>   - services
>   - services/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - bindings
>   - events
>   - limitranges
>   - namespaces/status
>   - pods/log
>   - pods/status
>   - replicationcontrollers/status
>   - resourcequotas
>   - resourcequotas/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - discovery.k8s.io
>   resources:
>   - endpointslices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apps
>   resources:
>   - controllerrevisions
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - statefulsets
>   - statefulsets/scale
>   - statefulsets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   - horizontalpodautoscalers/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - cronjobs/status
>   - jobs
>   - jobs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - replicationcontrollers/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   - poddisruptionbudgets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - '*'
> - apiGroups:
>   - k8s.cni.cncf.io
>   resources:
>   - network-attachment-definitions
>   verbs:
>   - watch
>   - list
>   - get
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - '*'
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindings
>   - roles
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
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   - roles
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
>   - ""
>   - authorization.openshift.io
>   resources:
>   - localresourceaccessreviews
>   - localsubjectaccessreviews
>   - subjectrulesreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - localsubjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - resourceaccessreviews
>   - subjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - security.openshift.io
>   resources:
>   - podsecuritypolicyreviews
>   - podsecuritypolicyselfsubjectreviews
>   - podsecuritypolicysubjectreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindingrestrictions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - admin
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
>   - patch
>   - update
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: appstudio-gitops-service-argocd-argocd-server
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - configmaps
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - appprojects
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - delete
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
2015a3028,3053
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-application-controller
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: appstudio-gitops-service-argocd-argocd-server
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-server
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-server
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
2354c3392
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2462c3500
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2567c3605
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4 
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

./commit-2953b774/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2953b774/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from b7484218 to 2fe31146 on Sat Nov 18 07:04:36 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index 46f6f5df..2803fa1c 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../../openshift-gitops/overlays/staging
 - ../../base/external-secrets
 - ../../base/monitoring
@@ -11,7 +11,7 @@ resources:
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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

./commit-2fe31146/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2fe31146/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from b7484218 to 2fe31146 on Sat Nov 18 07:04:36 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index 46f6f5df..2803fa1c 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../../openshift-gitops/overlays/staging
 - ../../base/external-secrets
 - ../../base/monitoring
@@ -11,7 +11,7 @@ resources:
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2122 lines)</summary>  

``` 
./commit-b7484218/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml
1231a1232,2247
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - '*'
>   verbs:
>   - '*'
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - subscriptions
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   verbs:
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   - operatorgroups
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   - packagemanifests/icon
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - '*'
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - helm.openshift.io
>   resources:
>   - projecthelmchartrepositories
>   verbs:
>   - get
>   - list
>   - update
>   - create
>   - watch
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - serviceaccounts
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreams/secrets
>   - imagestreamtags
>   - imagetags
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimports
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   - secrets
>   - services/proxy
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts
>   verbs:
>   - impersonate
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - pods/eviction
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - events
>   - persistentvolumeclaims
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - secrets
>   - serviceaccounts
>   - services
>   - services/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts/token
>   verbs:
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - replicasets
>   - replicasets/scale
>   - statefulsets
>   - statefulsets/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - ingresses
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicationcontrollers/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - networkpolicies
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
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
>   - metrics.k8s.io
>   resources:
>   - pods
>   - nodes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/details
>   verbs:
>   - update
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds
>   verbs:
>   - get
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
>   - deletecollection
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
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
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/log
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs/instantiate
>   - buildconfigs/instantiatebinary
>   - builds/clone
>   verbs:
>   - create
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
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
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigrollbacks
>   - deploymentconfigs/instantiate
>   - deploymentconfigs/rollback
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs/log
>   - deploymentconfigs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - quota.openshift.io
>   resources:
>   - appliedclusterresourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
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
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/custom-host
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
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
>   - networking.k8s.io
>   resources:
>   - networkpolicies
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
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
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
>   - ""
>   resources:
>   - resourcequotausages
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applications.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applicationsets.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applicationsets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - appprojects.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - appprojects
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - argocds.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - argocds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - gitopsservices.pipelines.openshift.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreamtags
>   - imagetags
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   - pods
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - serviceaccounts
>   - services
>   - services/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - bindings
>   - events
>   - limitranges
>   - namespaces/status
>   - pods/log
>   - pods/status
>   - replicationcontrollers/status
>   - resourcequotas
>   - resourcequotas/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - discovery.k8s.io
>   resources:
>   - endpointslices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apps
>   resources:
>   - controllerrevisions
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - statefulsets
>   - statefulsets/scale
>   - statefulsets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   - horizontalpodautoscalers/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - cronjobs/status
>   - jobs
>   - jobs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - replicationcontrollers/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   - poddisruptionbudgets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - '*'
> - apiGroups:
>   - k8s.cni.cncf.io
>   resources:
>   - network-attachment-definitions
>   verbs:
>   - watch
>   - list
>   - get
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - '*'
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindings
>   - roles
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
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   - roles
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
>   - ""
>   - authorization.openshift.io
>   resources:
>   - localresourceaccessreviews
>   - localsubjectaccessreviews
>   - subjectrulesreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - localsubjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - resourceaccessreviews
>   - subjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - security.openshift.io
>   resources:
>   - podsecuritypolicyreviews
>   - podsecuritypolicyselfsubjectreviews
>   - podsecuritypolicysubjectreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindingrestrictions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - admin
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
>   - patch
>   - update
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - configmaps
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - appprojects
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - delete
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2282a3299,3328
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-application-controller
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-server
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-server
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2666c3712
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2783c3829
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2897c3943
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
./commit-b7484218/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml
1231a1232,2247
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - monitoring.coreos.com
>   resources:
>   - '*'
>   verbs:
>   - '*'
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - subscriptions
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   verbs:
>   - delete
> - apiGroups:
>   - operators.coreos.com
>   resources:
>   - clusterserviceversions
>   - catalogsources
>   - installplans
>   - subscriptions
>   - operatorgroups
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   - packagemanifests/icon
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - '*'
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - applicationsets
>   - appprojects
>   - argocds
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - helm.openshift.io
>   resources:
>   - projecthelmchartrepositories
>   verbs:
>   - get
>   - list
>   - update
>   - create
>   - watch
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - serviceaccounts
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreams/secrets
>   - imagestreamtags
>   - imagetags
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
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimports
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   - secrets
>   - services/proxy
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts
>   verbs:
>   - impersonate
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   - pods/attach
>   - pods/exec
>   - pods/portforward
>   - pods/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - pods/eviction
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - events
>   - persistentvolumeclaims
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - secrets
>   - serviceaccounts
>   - services
>   - services/proxy
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - serviceaccounts/token
>   verbs:
>   - create
> - apiGroups:
>   - apps
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - replicasets
>   - replicasets/scale
>   - statefulsets
>   - statefulsets/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - deployments
>   - deployments/rollback
>   - deployments/scale
>   - ingresses
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicationcontrollers/scale
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - networkpolicies
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - patch
>   - update
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
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
>   - metrics.k8s.io
>   resources:
>   - pods
>   - nodes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/details
>   verbs:
>   - update
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - builds
>   verbs:
>   - get
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
>   - deletecollection
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
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
>   - ""
>   - build.openshift.io
>   resources:
>   - builds/log
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs/instantiate
>   - buildconfigs/instantiatebinary
>   - builds/clone
>   verbs:
>   - create
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
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
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigrollbacks
>   - deploymentconfigs/instantiate
>   - deploymentconfigs/rollback
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs/log
>   - deploymentconfigs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - quota.openshift.io
>   resources:
>   - appliedclusterresourcequotas
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
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
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/custom-host
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
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
>   - networking.k8s.io
>   resources:
>   - networkpolicies
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
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
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
>   - ""
>   resources:
>   - resourcequotausages
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applications.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - applicationsets.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applicationsets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - appprojects.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - appprojects
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - argocds.argoproj.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - argoproj.io
>   resources:
>   - argocds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resourceNames:
>   - gitopsservices.pipelines.openshift.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreamimages
>   - imagestreammappings
>   - imagestreams
>   - imagestreamtags
>   - imagetags
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - image.openshift.io
>   resources:
>   - imagestreams/layers
>   verbs:
>   - get
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   - endpoints
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   - pods
>   - replicationcontrollers
>   - replicationcontrollers/scale
>   - serviceaccounts
>   - services
>   - services/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - bindings
>   - events
>   - limitranges
>   - namespaces/status
>   - pods/log
>   - pods/status
>   - replicationcontrollers/status
>   - resourcequotas
>   - resourcequotas/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - discovery.k8s.io
>   resources:
>   - endpointslices
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - apps
>   resources:
>   - controllerrevisions
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - statefulsets
>   - statefulsets/scale
>   - statefulsets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - autoscaling
>   resources:
>   - horizontalpodautoscalers
>   - horizontalpodautoscalers/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   - cronjobs/status
>   - jobs
>   - jobs/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - extensions
>   resources:
>   - daemonsets
>   - daemonsets/status
>   - deployments
>   - deployments/scale
>   - deployments/status
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   - replicasets
>   - replicasets/scale
>   - replicasets/status
>   - replicationcontrollers/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - policy
>   resources:
>   - poddisruptionbudgets
>   - poddisruptionbudgets/status
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - networking.k8s.io
>   resources:
>   - ingresses
>   - ingresses/status
>   - networkpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - snapshot.storage.k8s.io
>   resources:
>   - volumesnapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildconfigs
>   - buildconfigs/webhooks
>   - builds
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - view
> - apiGroups:
>   - ""
>   - apps.openshift.io
>   resources:
>   - deploymentconfigs
>   - deploymentconfigs/scale
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - template.openshift.io
>   resources:
>   - processedtemplates
>   - templateconfigs
>   - templateinstances
>   - templates
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   - build.openshift.io
>   resources:
>   - buildlogs
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - pipelines.openshift.io
>   resources:
>   - gitopsservices
>   verbs:
>   - '*'
> - apiGroups:
>   - k8s.cni.cncf.io
>   resources:
>   - network-attachment-definitions
>   verbs:
>   - watch
>   - list
>   - get
> - apiGroups:
>   - packages.operators.coreos.com
>   resources:
>   - packagemanifests
>   verbs:
>   - '*'
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindings
>   - roles
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
>   - rbac.authorization.k8s.io
>   resources:
>   - rolebindings
>   - roles
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
>   - ""
>   - authorization.openshift.io
>   resources:
>   - localresourceaccessreviews
>   - localsubjectaccessreviews
>   - subjectrulesreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - localsubjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - resourceaccessreviews
>   - subjectaccessreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - security.openshift.io
>   resources:
>   - podsecuritypolicyreviews
>   - podsecuritypolicyselfsubjectreviews
>   - podsecuritypolicysubjectreviews
>   verbs:
>   - create
> - apiGroups:
>   - ""
>   - authorization.openshift.io
>   resources:
>   - rolebindingrestrictions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - build.openshift.io
>   resources:
>   - jenkins
>   verbs:
>   - admin
>   - edit
>   - view
> - apiGroups:
>   - ""
>   - project.openshift.io
>   resources:
>   - projects
>   verbs:
>   - delete
>   - get
>   - patch
>   - update
> - apiGroups:
>   - ""
>   - route.openshift.io
>   resources:
>   - routes/status
>   verbs:
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> rules:
> - apiGroups:
>   - '*'
>   resources:
>   - '*'
>   verbs:
>   - get
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   - configmaps
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   - appprojects
>   verbs:
>   - create
>   - get
>   - list
>   - watch
>   - update
>   - delete
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2268a3285,3314
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-application-controller
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-application-controller
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: appstudio-gitops-service-argocd-argocd-server
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: appstudio-gitops-service-argocd-argocd-server
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-argocd-argocd-server
>   namespace: gitops-service-argocd
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2652c3698
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2769c3815
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
2883c3929
<         image: quay.io/redhat-appstudio/gitops-service:c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
---
>         image: quay.io/redhat-appstudio/gitops-service:f59fc2f1033bb0049b463f76e3cbd07fae78c9e4 
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

./commit-2fe31146/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2fe31146/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from b7484218 to 2fe31146 on Sat Nov 18 07:04:36 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index 46f6f5df..2803fa1c 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 - ../../openshift-gitops/overlays/staging
 - ../../base/external-secrets
 - ../../base/monitoring
@@ -11,7 +11,7 @@ resources:
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: f59fc2f1033bb0049b463f76e3cbd07fae78c9e4
+    newTag: c8df66adcc179b7fa1d7855e59dfa91ac6a35c09
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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

./commit-2fe31146/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-2fe31146/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 7a23953b to b7484218 on Fri Nov 17 10:39:45 2023 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 5fde6c8d..a45d7c22 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 
-[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml 
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

./commit-b7484218/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b7484218/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 7a23953b to b7484218 on Fri Nov 17 10:39:45 2023 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 5fde6c8d..a45d7c22 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 
-[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml 
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

./commit-b7484218/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b7484218/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 7a23953b to b7484218 on Fri Nov 17 10:39:45 2023 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 5fde6c8d..a45d7c22 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 
-[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml 
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

./commit-b7484218/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-b7484218/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>
