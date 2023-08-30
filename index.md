# kustomize changes tracked by commits 
### This file generated at Wed Aug 30 20:02:08 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f5a72480 to 457a1095 on Wed Aug 30 12:33:49 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 1c5a46d6..ca4e1260 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=feee26ee2853088712f9e63357079c986a698077
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 622c43ff..59d6f422 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=feee26ee2853088712f9e63357079c986a698077
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=feee26ee2853088712f9e63357079c986a698077
 
 patches:
 #  - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d87d2ee2..1f3152d4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=feee26ee2853088712f9e63357079c986a698077
   - pipelines-as-code-namespace.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets 
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

./commit-457a1095/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/build-service/production/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f5a72480 to 457a1095 on Wed Aug 30 12:33:49 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 1c5a46d6..ca4e1260 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=feee26ee2853088712f9e63357079c986a698077
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 622c43ff..59d6f422 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=feee26ee2853088712f9e63357079c986a698077
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=feee26ee2853088712f9e63357079c986a698077
 
 patches:
 #  - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d87d2ee2..1f3152d4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=feee26ee2853088712f9e63357079c986a698077
   - pipelines-as-code-namespace.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1190c1190
<       - image: quay.io/redhat-appstudio/pipeline-service-exporter:7c56cdd830d62b3dfe7b773a70344122deb82e34
---
>       - image: quay.io/redhat-appstudio/pipeline-service-exporter:bc1182ed4633744b38166f2b6866568adda9855f
./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1190c1190
<       - image: quay.io/redhat-appstudio/pipeline-service-exporter:7c56cdd830d62b3dfe7b773a70344122deb82e34
---
>       - image: quay.io/redhat-appstudio/pipeline-service-exporter:bc1182ed4633744b38166f2b6866568adda9855f 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from f5a72480 to 457a1095 on Wed Aug 30 12:33:49 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 1c5a46d6..ca4e1260 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=feee26ee2853088712f9e63357079c986a698077
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 622c43ff..59d6f422 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=feee26ee2853088712f9e63357079c986a698077
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=feee26ee2853088712f9e63357079c986a698077
 
 patches:
 #  - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d87d2ee2..1f3152d4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=eb6e265ddc08256cac7a5c4b22cba663d9c7ef26
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=feee26ee2853088712f9e63357079c986a698077
   - pipelines-as-code-namespace.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml
1139c1139
<       - image: quay.io/redhat-appstudio/pipeline-service-exporter:7c56cdd830d62b3dfe7b773a70344122deb82e34
---
>       - image: quay.io/redhat-appstudio/pipeline-service-exporter:bc1182ed4633744b38166f2b6866568adda9855f 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-457a1095/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from f16d873a to f5a72480 on Wed Aug 30 11:23:08 2023 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index df5dd051..085d9cac 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=d6bce2761219b4df618e4021f760824eed852357
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 7f6ba618..b3875c9a 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d6bce2761219b4df618e4021f760824eed852357
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index e1c7879a..9094481d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d6bce2761219b4df618e4021f760824eed852357
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index ee9dd7b8..1da0da50 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=d6bce2761219b4df618e4021f760824eed852357
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=d6bce2761219b4df618e4021f760824eed852357
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
 
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

./commit-f5a72480/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/build-service/production/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from f16d873a to f5a72480 on Wed Aug 30 11:23:08 2023 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index df5dd051..085d9cac 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=d6bce2761219b4df618e4021f760824eed852357
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 7f6ba618..b3875c9a 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d6bce2761219b4df618e4021f760824eed852357
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index e1c7879a..9094481d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d6bce2761219b4df618e4021f760824eed852357
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index ee9dd7b8..1da0da50 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=d6bce2761219b4df618e4021f760824eed852357
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=d6bce2761219b4df618e4021f760824eed852357
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
 
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

./commit-f5a72480/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from f16d873a to f5a72480 on Wed Aug 30 11:23:08 2023 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index df5dd051..085d9cac 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=d6bce2761219b4df618e4021f760824eed852357
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 7f6ba618..b3875c9a 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d6bce2761219b4df618e4021f760824eed852357
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index e1c7879a..9094481d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d6bce2761219b4df618e4021f760824eed852357
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index ee9dd7b8..1da0da50 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=709554456b8fc8a4786ca4d0b132586ee080dda5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=d6bce2761219b4df618e4021f760824eed852357
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=d6bce2761219b4df618e4021f760824eed852357
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 709554456b8fc8a4786ca4d0b132586ee080dda5
+    newTag: d6bce2761219b4df618e4021f760824eed852357
 
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

./commit-f5a72480/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f5a72480/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 48f06c13 to f16d873a on Wed Aug 30 10:11:28 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index acfed57b..78d05b51 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=42747a271552122ea269885c8c47d63e30166e8a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=7c02f9367366b7964c3c73ab917195be66328d38
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 42747a271552122ea269885c8c47d63e30166e8a
+    newTag: 7c02f9367366b7964c3c73ab917195be66328d38
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index f23814ce..dad3d9ea 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=42747a271552122ea269885c8c47d63e30166e8a
-  - https://github.com/redhat-appstudio/remote-secret/config/prometheus?ref=42747a271552122ea269885c8c47d63e30166e8a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=7c02f9367366b7964c3c73ab917195be66328d38
+  - https://github.com/redhat-appstudio/remote-secret/config/prometheus?ref=7c02f9367366b7964c3c73ab917195be66328d38
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 42747a271552122ea269885c8c47d63e30166e8a
+    newTag: 7c02f9367366b7964c3c73ab917195be66328d38
 
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

./commit-f16d873a/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/build-service/production/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 48f06c13 to f16d873a on Wed Aug 30 10:11:28 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index acfed57b..78d05b51 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=42747a271552122ea269885c8c47d63e30166e8a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=7c02f9367366b7964c3c73ab917195be66328d38
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 42747a271552122ea269885c8c47d63e30166e8a
+    newTag: 7c02f9367366b7964c3c73ab917195be66328d38
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index f23814ce..dad3d9ea 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=42747a271552122ea269885c8c47d63e30166e8a
-  - https://github.com/redhat-appstudio/remote-secret/config/prometheus?ref=42747a271552122ea269885c8c47d63e30166e8a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=7c02f9367366b7964c3c73ab917195be66328d38
+  - https://github.com/redhat-appstudio/remote-secret/config/prometheus?ref=7c02f9367366b7964c3c73ab917195be66328d38
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 42747a271552122ea269885c8c47d63e30166e8a
+    newTag: 7c02f9367366b7964c3c73ab917195be66328d38
 
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

./commit-f16d873a/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 48f06c13 to f16d873a on Wed Aug 30 10:11:28 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index acfed57b..78d05b51 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=42747a271552122ea269885c8c47d63e30166e8a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=7c02f9367366b7964c3c73ab917195be66328d38
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 42747a271552122ea269885c8c47d63e30166e8a
+    newTag: 7c02f9367366b7964c3c73ab917195be66328d38
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index f23814ce..dad3d9ea 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=42747a271552122ea269885c8c47d63e30166e8a
-  - https://github.com/redhat-appstudio/remote-secret/config/prometheus?ref=42747a271552122ea269885c8c47d63e30166e8a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=7c02f9367366b7964c3c73ab917195be66328d38
+  - https://github.com/redhat-appstudio/remote-secret/config/prometheus?ref=7c02f9367366b7964c3c73ab917195be66328d38
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 42747a271552122ea269885c8c47d63e30166e8a
+    newTag: 7c02f9367366b7964c3c73ab917195be66328d38
 
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

./commit-f16d873a/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-f16d873a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from bed70ce3 to 48f06c13 on Wed Aug 30 08:56:31 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index ad2ba51a..26ee9ee5 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c77bce0b4e3f278458d409e88fef93849bcd6149
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=5150f1d53be9572d5dd41fde97649b38fd030436
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
@@ -10,7 +10,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c77bce0b4e3f278458d409e88fef93849bcd6149
+  newTag: 5150f1d53be9572d5dd41fde97649b38fd030436
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-bed70ce3/production/components/integration/kustomize.out.yaml
1101c1101
<         image: quay.io/redhat-appstudio/integration-service:5150f1d53be9572d5dd41fde97649b38fd030436
---
>         image: quay.io/redhat-appstudio/integration-service:c77bce0b4e3f278458d409e88fef93849bcd6149
1128d1127
<           readOnlyRootFilesystem: true
1151,1152d1149
<         securityContext:
<           readOnlyRootFilesystem: true 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/dora-metrics/production/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/image-controller/production/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/build-service/production/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/jvm-build-service/production/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/name:controller app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from bed70ce3 to 48f06c13 on Wed Aug 30 08:56:31 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index ad2ba51a..26ee9ee5 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c77bce0b4e3f278458d409e88fef93849bcd6149
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=5150f1d53be9572d5dd41fde97649b38fd030436
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
@@ -10,7 +10,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c77bce0b4e3f278458d409e88fef93849bcd6149
+  newTag: 5150f1d53be9572d5dd41fde97649b38fd030436
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-bed70ce3/staging/components/integration/kustomize.out.yaml
1101c1101
<         image: quay.io/redhat-appstudio/integration-service:5150f1d53be9572d5dd41fde97649b38fd030436
---
>         image: quay.io/redhat-appstudio/integration-service:c77bce0b4e3f278458d409e88fef93849bcd6149
1128d1127
<           readOnlyRootFilesystem: true
1151,1152d1149
<         securityContext:
<           readOnlyRootFilesystem: true 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/image-controller/staging/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/jvm-build-service/staging/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/multi-arch-controller/staging/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from bed70ce3 to 48f06c13 on Wed Aug 30 08:56:31 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index ad2ba51a..26ee9ee5 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c77bce0b4e3f278458d409e88fef93849bcd6149
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=5150f1d53be9572d5dd41fde97649b38fd030436
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
@@ -10,7 +10,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c77bce0b4e3f278458d409e88fef93849bcd6149
+  newTag: 5150f1d53be9572d5dd41fde97649b38fd030436
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-bed70ce3/development/components/integration/kustomize.out.yaml
1101c1101
<         image: quay.io/redhat-appstudio/integration-service:5150f1d53be9572d5dd41fde97649b38fd030436
---
>         image: quay.io/redhat-appstudio/integration-service:c77bce0b4e3f278458d409e88fef93849bcd6149
1128d1127
<           readOnlyRootFilesystem: true
1151,1152d1149
<         securityContext:
<           readOnlyRootFilesystem: true 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/release/kustomize.out.yaml: (object: release-service/release-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "manager" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/image-controller/development/kustomize.out.yaml: (object: image-controller/image-controller-image-pruner-cronjob batch/v1, Kind=CronJob) container "image-pruner" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/jvm-build-service/development/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/multi-arch-controller/development/kustomize.out.yaml: (object: multi-arch-controller/multi-arch-controller apps/v1, Kind=Deployment) container "multi-arch-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app:tekton-chains-controller]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-48f06c13/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>
